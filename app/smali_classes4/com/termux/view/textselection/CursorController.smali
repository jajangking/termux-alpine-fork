.class public interface abstract Lcom/termux/view/textselection/CursorController;
.super Ljava/lang/Object;
.source "CursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# virtual methods
.method public abstract hide()Z
.end method

.method public abstract isActive()Z
.end method

.method public abstract onDetached()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract render()V
.end method

.method public abstract show(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "x",
            "y"
        }
    .end annotation
.end method
