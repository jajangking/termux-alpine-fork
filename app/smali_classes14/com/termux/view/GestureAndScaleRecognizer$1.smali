.class Lcom/termux/view/GestureAndScaleRecognizer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureAndScaleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/GestureAndScaleRecognizer;


# direct methods
.method constructor <init>(Lcom/termux/view/GestureAndScaleRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/view/GestureAndScaleRecognizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onDown(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onFling(Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 56
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    .line 57
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "dx",
            "dy"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onScroll(Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
