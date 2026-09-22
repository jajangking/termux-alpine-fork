.class final Lcom/termux/view/GestureAndScaleRecognizer;
.super Ljava/lang/Object;
.source "GestureAndScaleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/GestureAndScaleRecognizer$Listener;
    }
.end annotation


# instance fields
.field isAfterLongPress:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field final mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/termux/view/GestureAndScaleRecognizer$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/termux/view/GestureAndScaleRecognizer$1;

    invoke-direct {v1, p0}, Lcom/termux/view/GestureAndScaleRecognizer$1;-><init>(Lcom/termux/view/GestureAndScaleRecognizer;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 60
    new-instance v1, Lcom/termux/view/GestureAndScaleRecognizer$2;

    invoke-direct {v1, p0}, Lcom/termux/view/GestureAndScaleRecognizer$2;-><init>(Lcom/termux/view/GestureAndScaleRecognizer;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 77
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/termux/view/GestureAndScaleRecognizer$3;

    invoke-direct {v1, p0}, Lcom/termux/view/GestureAndScaleRecognizer$3;-><init>(Lcom/termux/view/GestureAndScaleRecognizer;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iget-boolean v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    .line 97
    nop

    .line 106
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
