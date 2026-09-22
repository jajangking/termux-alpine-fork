.class public Lio/noties/markwon/PrecomputedTextSetterCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextSetterCompat.java"

# interfaces
.implements Lio/noties/markwon/Markwon$TextSetter;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat;->executor:Ljava/util/concurrent/Executor;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/text/Spanned;)Landroidx/core/text/PrecomputedTextCompat;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/text/Spanned;

    .line 22
    invoke-static {p0, p1}, Lio/noties/markwon/PrecomputedTextSetterCompat;->precomputedText(Landroid/widget/TextView;Landroid/text/Spanned;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/text/Spanned;
    .param p2, "x2"    # Landroid/widget/TextView$BufferType;
    .param p3, "x3"    # Ljava/lang/Runnable;

    .line 22
    invoke-static {p0, p1, p2, p3}, Lio/noties/markwon/PrecomputedTextSetterCompat;->applyText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static applyText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "bufferType"    # Landroid/widget/TextView$BufferType;
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .line 109
    if-eqz p0, :cond_0

    .line 110
    new-instance v0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/noties/markwon/PrecomputedTextSetterCompat$2;-><init>(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public static create(Ljava/util/concurrent/Executor;)Lio/noties/markwon/PrecomputedTextSetterCompat;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 29
    new-instance v0, Lio/noties/markwon/PrecomputedTextSetterCompat;

    invoke-direct {v0, p0}, Lio/noties/markwon/PrecomputedTextSetterCompat;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static precomputedText(Landroid/widget/TextView;Landroid/text/Spanned;)Landroidx/core/text/PrecomputedTextCompat;
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "spanned"    # Landroid/text/Spanned;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 82
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    .local v0, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    goto :goto_0

    .line 85
    .end local v0    # "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    :cond_1
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 91
    .local v0, "builder":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 93
    nop

    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 98
    :cond_2
    invoke-virtual {v0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    move-object v0, v1

    .line 101
    .local v0, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/text/PrecomputedTextCompat;->create(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Landroid/text/Spanned;
    .param p3, "bufferType"    # Landroid/widget/TextView$BufferType;
    .param p4, "onComplete"    # Ljava/lang/Runnable;

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 49
    invoke-static {p1, p2, p3, p4}, Lio/noties/markwon/PrecomputedTextSetterCompat;->applyText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    .line 50
    return-void

    .line 53
    :cond_0
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .local v4, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    iget-object v0, p0, Lio/noties/markwon/PrecomputedTextSetterCompat;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/noties/markwon/PrecomputedTextSetterCompat$1;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lio/noties/markwon/PrecomputedTextSetterCompat$1;-><init>(Lio/noties/markwon/PrecomputedTextSetterCompat;Ljava/lang/ref/WeakReference;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
