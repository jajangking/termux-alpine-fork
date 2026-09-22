.class public Lio/noties/markwon/core/spans/TextLayoutSpan;
.super Ljava/lang/Object;
.source "TextLayoutSpan.java"


# instance fields
.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/text/Layout;)V
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/noties/markwon/core/spans/TextLayoutSpan;->reference:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method

.method public static applyTo(Landroid/text/Spannable;Landroid/text/Layout;)V
    .locals 5
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 43
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lio/noties/markwon/core/spans/TextLayoutSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/noties/markwon/core/spans/TextLayoutSpan;

    .line 44
    .local v0, "spans":[Lio/noties/markwon/core/spans/TextLayoutSpan;
    if-eqz v0, :cond_0

    .line 45
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 46
    .local v4, "span":Lio/noties/markwon/core/spans/TextLayoutSpan;
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 45
    .end local v4    # "span":Lio/noties/markwon/core/spans/TextLayoutSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Lio/noties/markwon/core/spans/TextLayoutSpan;

    invoke-direct {v1, p1}, Lio/noties/markwon/core/spans/TextLayoutSpan;-><init>(Landroid/text/Layout;)V

    .line 51
    .local v1, "span":Lio/noties/markwon/core/spans/TextLayoutSpan;
    nop

    .line 54
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    .line 51
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    return-void
.end method

.method public static layoutOf(Landroid/text/Spanned;)Landroid/text/Layout;
    .locals 3
    .param p0, "spanned"    # Landroid/text/Spanned;

    .line 30
    nop

    .line 32
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Lio/noties/markwon/core/spans/TextLayoutSpan;

    .line 30
    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/noties/markwon/core/spans/TextLayoutSpan;

    .line 35
    .local v0, "spans":[Lio/noties/markwon/core/spans/TextLayoutSpan;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 36
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lio/noties/markwon/core/spans/TextLayoutSpan;->layout()Landroid/text/Layout;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1
.end method

.method public static layoutOf(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 22
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Lio/noties/markwon/core/spans/TextLayoutSpan;->layoutOf(Landroid/text/Spanned;)Landroid/text/Layout;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public layout()Landroid/text/Layout;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/noties/markwon/core/spans/TextLayoutSpan;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    return-object v0
.end method
