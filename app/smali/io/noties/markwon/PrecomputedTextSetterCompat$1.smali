.class Lio/noties/markwon/PrecomputedTextSetterCompat$1;
.super Ljava/lang/Object;
.source "PrecomputedTextSetterCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/PrecomputedTextSetterCompat;->setText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/PrecomputedTextSetterCompat;

.field final synthetic val$bufferType:Landroid/widget/TextView$BufferType;

.field final synthetic val$markdown:Landroid/text/Spanned;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lio/noties/markwon/PrecomputedTextSetterCompat;Ljava/lang/ref/WeakReference;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lio/noties/markwon/PrecomputedTextSetterCompat;

    .line 54
    iput-object p1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->this$0:Lio/noties/markwon/PrecomputedTextSetterCompat;

    iput-object p2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$markdown:Landroid/text/Spanned;

    iput-object p4, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$bufferType:Landroid/widget/TextView$BufferType;

    iput-object p5, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 58
    :try_start_0
    iget-object v0, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$markdown:Landroid/text/Spanned;

    invoke-static {v0, v1}, Lio/noties/markwon/PrecomputedTextSetterCompat;->access$000(Landroid/widget/TextView;Landroid/text/Spanned;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    .line 59
    .local v0, "precomputedTextCompat":Landroidx/core/text/PrecomputedTextCompat;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$bufferType:Landroid/widget/TextView$BufferType;

    iget-object v3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {v1, v0, v2, v3}, Lio/noties/markwon/PrecomputedTextSetterCompat;->access$100(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v0    # "precomputedTextCompat":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PrecomputdTxtSetterCmpt"

    const-string v2, "Exception during pre-computing text"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$markdown:Landroid/text/Spanned;

    iget-object v3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$bufferType:Landroid/widget/TextView$BufferType;

    iget-object v4, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {v1, v2, v3, v4}, Lio/noties/markwon/PrecomputedTextSetterCompat;->access$100(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    .line 67
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
