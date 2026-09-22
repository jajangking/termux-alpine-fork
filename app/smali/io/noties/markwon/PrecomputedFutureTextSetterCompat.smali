.class public Lio/noties/markwon/PrecomputedFutureTextSetterCompat;
.super Ljava/lang/Object;
.source "PrecomputedFutureTextSetterCompat.java"

# interfaces
.implements Lio/noties/markwon/Markwon$TextSetter;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/noties/markwon/PrecomputedFutureTextSetterCompat;->executor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method

.method public static create()Lio/noties/markwon/PrecomputedFutureTextSetterCompat;
    .locals 2

    .line 34
    new-instance v0, Lio/noties/markwon/PrecomputedFutureTextSetterCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/noties/markwon/PrecomputedFutureTextSetterCompat;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/Executor;)Lio/noties/markwon/PrecomputedFutureTextSetterCompat;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 29
    new-instance v0, Lio/noties/markwon/PrecomputedFutureTextSetterCompat;

    invoke-direct {v0, p0}, Lio/noties/markwon/PrecomputedFutureTextSetterCompat;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public setText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Landroid/text/Spanned;
    .param p3, "bufferType"    # Landroid/widget/TextView$BufferType;
    .param p4, "onComplete"    # Ljava/lang/Runnable;

    .line 51
    instance-of v0, p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .local v0, "appCompatTextView":Landroidx/appcompat/widget/AppCompatTextView;
    nop

    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getTextMetricsParamsCompat()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    iget-object v2, p0, Lio/noties/markwon/PrecomputedFutureTextSetterCompat;->executor:Ljava/util/concurrent/Executor;

    .line 53
    invoke-static {p2, v1, v2}, Landroidx/core/text/PrecomputedTextCompat;->getTextFuture(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 57
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextFuture(Ljava/util/concurrent/Future;)V

    .line 59
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 60
    .end local v0    # "appCompatTextView":Landroidx/appcompat/widget/AppCompatTextView;
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    nop

    .line 64
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextView provided is not an instance of AppCompatTextView, cannot call setTextFuture(), textView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
