.class Lcom/termux/view/TerminalView$1;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Lcom/termux/view/GestureAndScaleRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrolledWithFinger:Z

.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/view/TerminalView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
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

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "e2"    # Landroid/view/MotionEvent;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 192
    move-object v0, p0

    iget-object v1, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 194
    :cond_0
    iget-object v1, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 196
    :cond_1
    iget-object v1, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v1

    .line 197
    .local v1, "mouseTrackingAtStartOfFling":Z
    const/high16 v3, 0x3e800000    # 0.25f

    .line 198
    .local v3, "SCALE":F
    if-eqz v1, :cond_2

    .line 199
    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v5, v4, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    mul-float v4, p3, v3

    float-to-int v4, v4

    neg-int v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    neg-int v4, v4

    div-int/lit8 v12, v4, 0x2

    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    div-int/lit8 v13, v4, 0x2

    invoke-virtual/range {v5 .. v13}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v5, v4, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v7, v4, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v8, 0x0

    mul-float v4, p3, v3

    float-to-int v4, v4

    neg-int v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v4

    neg-int v12, v4

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 204
    :goto_0
    iget-object v4, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    new-instance v5, Lcom/termux/view/TerminalView$1$1;

    move-object v6, p1

    invoke-direct {v5, p0, v1, p1}, Lcom/termux/view/TerminalView$1$1;-><init>(Lcom/termux/view/TerminalView$1;ZLandroid/view/MotionEvent;)V

    invoke-virtual {v4, v5}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    .line 223
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/termux/view/GestureAndScaleRecognizer;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->performHapticFeedback(I)Z

    .line 249
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->startTextSelectionMode(Landroid/view/MotionEvent;)V

    .line 251
    :cond_2
    return-void
.end method

.method public onScale(FFF)Z
    .locals 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "focusX",
            "focusY",
            "scale"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    mul-float/2addr v2, p3

    iput v2, v0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 186
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mScaleFactor:F

    invoke-interface {v2, v3}, Lcom/termux/view/TerminalViewClient;->onScale(F)F

    move-result v2

    iput v2, v0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 187
    return v1

    .line 184
    :cond_1
    :goto_0
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "distanceX"    # F
    .param p3, "distanceY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "distanceX",
            "distanceY"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/16 v2, 0x20

    invoke-virtual {v0, p1, v2, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_0

    .line 173
    :cond_1
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    .line 174
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v0, v0, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    add-float/2addr p3, v0

    .line 175
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v0, v0

    div-float v0, p3, v0

    float-to-int v0, v0

    .line 176
    .local v0, "deltaRows":I
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    sub-float v3, p3, v3

    iput v3, v2, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 177
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, p1, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 179
    .end local v0    # "deltaRows":I
    :goto_0
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 156
    return v1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 159
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 160
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 139
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 143
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 144
    return v2

    .line 146
    :cond_0
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    .line 147
    return v1
.end method
