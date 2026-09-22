.class public Lcom/termux/view/textselection/TextSelectionHandleView;
.super Landroid/view/View;
.source "TextSelectionHandleView.java"


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2


# instance fields
.field private final mCursorController:Lcom/termux/view/textselection/CursorController;

.field private mHandle:Landroid/widget/PopupWindow;

.field private mHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleHeight:I

.field private final mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleWidth:I

.field private mHotspotX:F

.field private mHotspotY:F

.field private final mInitialOrientation:I

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mLastTime:J

.field private mOrientation:I

.field private mPointX:I

.field private mPointY:I

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private final terminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V
    .locals 2
    .param p1, "terminalView"    # Lcom/termux/view/TerminalView;
    .param p2, "cursorController"    # Lcom/termux/view/textselection/CursorController;
    .param p3, "initialOrientation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terminalView",
            "cursorController",
            "initialOrientation"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 56
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 57
    iput-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mCursorController:Lcom/termux/view/textselection/CursorController;

    .line 58
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    .line 60
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/view/R$drawable;->text_select_handle_left_material:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/view/R$drawable;->text_select_handle_right_material:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->setOrientation(I)V

    .line 64
    return-void
.end method

.method private checkChangedOrientation(IZ)V
    .locals 11
    .param p1, "posX"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "force"
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 203
    .local v0, "millis":J
    iget-wide v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    if-nez p2, :cond_1

    .line 204
    return-void

    .line 206
    :cond_1
    iput-wide v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastTime:J

    .line 208
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 209
    .local v2, "hostView":Lcom/termux/view/TerminalView;
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getLeft()I

    move-result v3

    .line 210
    .local v3, "left":I
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v4

    .line 211
    .local v4, "right":I
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getTop()I

    move-result v5

    .line 212
    .local v5, "top":I
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v6

    .line 214
    .local v6, "bottom":I
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 215
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 217
    :cond_2
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 218
    .local v7, "clip":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v3

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 219
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v5

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 220
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingRight()I

    move-result v8

    sub-int v8, v4, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 221
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v6, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 223
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 224
    .local v8, "parent":Landroid/view/ViewParent;
    if-eqz v8, :cond_6

    const/4 v9, 0x0

    invoke-interface {v8, v2, v7, v9}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 228
    :cond_3
    iget v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    sub-int v9, p1, v9

    iget v10, v7, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_4

    .line 229
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    goto :goto_0

    .line 230
    :cond_4
    iget v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    add-int/2addr v9, p1

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_5

    .line 231
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    goto :goto_0

    .line 233
    :cond_5
    iget v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    invoke-virtual {p0, v9}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_6
    :goto_1
    return-void
.end method

.method private initHandle()V
    .locals 4

    .line 67
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 72
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 73
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 76
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 77
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 78
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method private isPositionVisible()Z
    .locals 13

    .line 239
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 240
    return v1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 244
    .local v0, "hostView":Lcom/termux/view/TerminalView;
    const/4 v2, 0x0

    .line 245
    .local v2, "left":I
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v3

    .line 246
    .local v3, "right":I
    const/4 v4, 0x0

    .line 247
    .local v4, "top":I
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v5

    .line 249
    .local v5, "bottom":I
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 250
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 252
    :cond_1
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 253
    .local v6, "clip":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 254
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 255
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingRight()I

    move-result v7

    sub-int v7, v3, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 256
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingBottom()I

    move-result v7

    sub-int v7, v5, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 258
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 259
    .local v7, "parent":Landroid/view/ViewParent;
    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-interface {v7, v0, v6, v9}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 263
    :cond_2
    iget-object v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 264
    .local v9, "coords":[I
    invoke-virtual {v0, v9}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 265
    aget v10, v9, v8

    iget v11, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 266
    .local v10, "posX":I
    aget v11, v9, v1

    iget v12, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    float-to-int v12, v12

    add-int/2addr v11, v12

    .line 268
    .local v11, "posY":I
    iget v12, v6, Landroid/graphics/Rect;->left:I

    if-lt v10, v12, :cond_3

    iget v12, v6, Landroid/graphics/Rect;->right:I

    if-gt v10, v12, :cond_3

    iget v12, v6, Landroid/graphics/Rect;->top:I

    if-lt v11, v12, :cond_3

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_3

    goto :goto_0

    :cond_3
    move v1, v8

    :goto_0
    return v1

    .line 260
    .end local v9    # "coords":[I
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    :cond_4
    :goto_1
    return v8
.end method

.method private moveTo(IIZ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "forceOrientationCheck"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "forceOrientationCheck"
        }
    .end annotation

    .line 156
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    .line 157
    .local v0, "oldHotspotX":F
    invoke-direct {p0, p1, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->checkChangedOrientation(IZ)V

    .line 158
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    :goto_0
    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    .line 159
    iput p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    .line 161
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isPositionVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "coords":[I
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 165
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 166
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, v1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 167
    aget v2, v1, v4

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v2, v5

    .line 168
    .local v2, "x1":I
    aget v5, v1, v3

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v5, v6

    .line 169
    .local v5, "y1":I
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v2, v5, v7, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 171
    .end local v2    # "x1":I
    .end local v5    # "y1":I
    :cond_1
    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->show()V

    .line 175
    :goto_1
    iget-boolean v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 176
    if-nez v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 178
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, v1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 180
    :cond_3
    aget v2, v1, v4

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    if-ne v2, v5, :cond_4

    aget v2, v1, v3

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    if-eq v2, v6, :cond_5

    .line 181
    :cond_4
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    aget v6, v1, v4

    sub-int/2addr v6, v5

    int-to-float v5, v6

    add-float/2addr v2, v5

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    .line 182
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    aget v5, v1, v3

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    .line 183
    aget v2, v1, v4

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    .line 184
    aget v2, v1, v3

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    .line 187
    .end local v1    # "coords":[I
    :cond_5
    goto :goto_2

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 190
    :goto_2
    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 193
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionHandleView;->setOrientation(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public getHandleHeight()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    return v0
.end method

.method public getHandleWidth()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    .line 133
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 137
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->removeFromParent()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->invalidate()V

    .line 141
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    return v0
.end method

.method public isParentNull()Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 275
    .local v0, "width":I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 276
    .local v1, "height":I
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 318
    invoke-virtual {p0, v0, v1}, Lcom/termux/view/textselection/TextSelectionHandleView;->setMeasuredDimension(II)V

    .line 320
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 300
    .local v0, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 302
    .local v1, "rawY":F
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    add-float/2addr v3, v4

    .line 303
    .local v3, "newPosX":F
    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchOffsetY:F

    add-float/2addr v4, v5

    .line 305
    .local v4, "newPosY":F
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mCursorController:Lcom/termux/view/textselection/CursorController;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-interface {v5, p0, v6, v7}, Lcom/termux/view/textselection/CursorController;->updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V

    .line 306
    goto :goto_0

    .line 311
    .end local v0    # "rawX":F
    .end local v1    # "rawY":F
    .end local v3    # "newPosX":F
    .end local v4    # "newPosY":F
    :pswitch_1
    iput-boolean v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 287
    .restart local v0    # "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 288
    .local v3, "rawY":F
    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iput v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    .line 289
    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iput v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    .line 290
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 291
    .local v4, "coords":[I
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v5, v4}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 292
    aget v1, v4, v1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    .line 293
    aget v1, v4, v2

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    .line 294
    iput-boolean v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    .line 295
    nop

    .line 313
    .end local v0    # "rawX":F
    .end local v3    # "rawY":F
    .end local v4    # "coords":[I
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public positionAtCursor(IIZ)V
    .locals 3
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "forceOrientationCheck"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "cx",
            "cy",
            "forceOrientationCheck"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->getPointX(I)I

    move-result v0

    .line 151
    .local v0, "x":I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/termux/view/TerminalView;->getPointY(I)I

    move-result v1

    .line 152
    .local v1, "y":I
    invoke-direct {p0, v0, v1, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->moveTo(IIZ)V

    .line 153
    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isParentNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 82
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mOrientation:I

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "handleWidth":I
    const/high16 v1, 0x40800000    # 4.0f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 95
    int-to-float v2, v0

    div-float/2addr v2, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 88
    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    .line 89
    nop

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    .line 102
    iput v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    .line 103
    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchOffsetY:F

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    .line 105
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->invalidate()V

    .line 106
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .line 109
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isPositionVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 111
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->removeFromParent()V

    .line 118
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->initHandle()V

    .line 119
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->invalidate()V

    .line 121
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 122
    .local v0, "coords":[I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 123
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 124
    const/4 v2, 0x1

    aget v3, v0, v2

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 126
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 127
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    aget v5, v0, v1

    aget v2, v0, v2

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 128
    :cond_1
    return-void
.end method
