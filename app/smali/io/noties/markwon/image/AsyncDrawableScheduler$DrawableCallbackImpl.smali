.class Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;
.super Ljava/lang/Object;
.source "AsyncDrawableScheduler.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/image/AsyncDrawableScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableCallbackImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
    }
.end annotation


# instance fields
.field private final invalidator:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;

.field private previousBounds:Landroid/graphics/Rect;

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "invalidator"    # Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
    .param p3, "initialBounds"    # Landroid/graphics/Rect;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    .line 131
    iput-object p2, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->invalidator:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->previousBounds:Landroid/graphics/Rect;

    .line 133
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    new-instance v1, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;-><init>(Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 153
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->previousBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->invalidator:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;

    invoke-interface {v1}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;->invalidate()V

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->previousBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 163
    :goto_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, p3, v0

    .line 168
    .local v0, "delay":J
    iget-object v2, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 173
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method
