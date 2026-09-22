.class Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;
.super Ljava/lang/Object;
.source "AsyncDrawableScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;

.field final synthetic val$who:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;

    .line 139
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;->this$0:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;

    iput-object p2, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;->val$who:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;->this$0:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;

    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;->val$who:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method
