.class public Lcom/termux/shared/view/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViewUtils"

.field public static VIEW_UTILS_LOGGING_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/shared/view/ViewUtils;->VIEW_UTILS_LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dp"
        }
    .end annotation

    .line 221
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 210
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 211
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 212
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 214
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplayOrientation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/view/ViewUtils;->getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 170
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public static getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activitySize"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "activitySize"
        }
    .end annotation

    .line 186
    new-instance v0, Landroidx/window/WindowManager;

    invoke-direct {v0, p0}, Landroidx/window/WindowManager;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "windowManager":Landroidx/window/WindowManager;
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {v0}, Landroidx/window/WindowManager;->getCurrentWindowMetrics()Landroidx/window/WindowMetrics;

    move-result-object v1

    .local v1, "windowMetrics":Landroidx/window/WindowMetrics;
    goto :goto_0

    .line 191
    .end local v1    # "windowMetrics":Landroidx/window/WindowMetrics;
    :cond_0
    invoke-virtual {v0}, Landroidx/window/WindowManager;->getMaximumWindowMetrics()Landroidx/window/WindowMetrics;

    move-result-object v1

    .line 192
    .restart local v1    # "windowMetrics":Landroidx/window/WindowMetrics;
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroidx/window/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroidx/window/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getWindowAndViewRects(Landroid/view/View;I)[Landroid/graphics/Rect;
    .locals 17
    .param p0, "view"    # Landroid/view/View;
    .param p1, "statusBarHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "statusBarHeight"
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 68
    :cond_0
    sget-boolean v2, Lcom/termux/shared/view/ViewUtils;->VIEW_UTILS_LOGGING_ENABLED:Z

    .line 72
    .local v2, "view_utils_logging_enabled":Z
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .local v3, "windowRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "actionBarHeight":I
    const/4 v5, 0x0

    .line 78
    .local v5, "isInMultiWindowMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 79
    .local v6, "context":Landroid/content/Context;
    instance-of v7, v6, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v7, :cond_2

    .line 80
    move-object v7, v6

    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    .line 81
    .local v7, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result v4

    .line 82
    :cond_1
    move-object v8, v6

    check-cast v8, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->isInMultiWindowMode()Z

    move-result v5

    .end local v7    # "actionBar":Landroidx/appcompat/app/ActionBar;
    goto :goto_0

    .line 83
    :cond_2
    instance-of v7, v6, Landroid/app/Activity;

    if-eqz v7, :cond_4

    .line 84
    move-object v7, v6

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 85
    .local v7, "actionBar":Landroid/app/ActionBar;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    .line 86
    :cond_3
    move-object v8, v6

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    goto :goto_1

    .line 83
    .end local v7    # "actionBar":Landroid/app/ActionBar;
    :cond_4
    :goto_0
    nop

    .line 89
    :goto_1
    invoke-static {v6}, Lcom/termux/shared/view/ViewUtils;->getDisplayOrientation(Landroid/content/Context;)I

    move-result v7

    .line 93
    .local v7, "displayOrientation":I
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v4

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .local v8, "windowAvailableRect":Landroid/graphics/Rect;
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 100
    .local v10, "viewsLocationInWindow":[I
    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 101
    const/4 v11, 0x0

    aget v12, v10, v11

    .line 102
    .local v12, "viewLeft":I
    const/4 v13, 0x1

    aget v14, v10, v13

    .line 104
    .local v14, "viewTop":I
    const-string v15, "ViewUtils"

    if-eqz v2, :cond_5

    .line 105
    const-string v9, "getWindowAndViewRects:"

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "windowRect: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/termux/shared/view/ViewUtils;->toRectString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", windowAvailableRect: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/termux/shared/view/ViewUtils;->toRectString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "viewsLocationInWindow: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v12, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v11}, Lcom/termux/shared/view/ViewUtils;->toPointString(Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activitySize: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v13}, Lcom/termux/shared/view/ViewUtils;->getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v11

    invoke-static {v11}, Lcom/termux/shared/view/ViewUtils;->toPointString(Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", displaySize: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 109
    const/4 v11, 0x0

    invoke-static {v6, v11}, Lcom/termux/shared/view/ViewUtils;->getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/termux/shared/view/ViewUtils;->toPointString(Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", displayOrientation="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 108
    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_5
    if-eqz v5, :cond_9

    .line 114
    if-ne v7, v13, :cond_8

    .line 117
    iget v9, v3, Landroid/graphics/Rect;->top:I

    if-eq v1, v9, :cond_7

    .line 118
    if-eqz v2, :cond_6

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Window top does not equal statusBarHeight "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " in multi-window portrait mode. Window is possibly bottom app in split screen mode. Adding windowRect.top "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " to viewTop."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_6
    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v9

    goto :goto_2

    .line 122
    :cond_7
    if-eqz v2, :cond_9

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "windowRect.top equals statusBarHeight "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " in multi-window portrait mode. Window is possibly top app in split screen mode."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_8
    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    .line 129
    iget v9, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    .line 133
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v12

    .line 134
    .local v9, "viewRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v14

    .line 135
    .local v11, "viewBottom":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v12, v14, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .local v13, "viewRect":Landroid/graphics/Rect;
    const/4 v0, 0x2

    if-ne v7, v0, :cond_b

    iget v0, v8, Landroid/graphics/Rect;->right:I

    if-le v9, v0, :cond_b

    .line 138
    if-eqz v2, :cond_a

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewRight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is greater than windowAvailableRect.right "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in landscape mode. Setting windowAvailableRect.right to viewRight since it may not include navbar height."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_a
    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 143
    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v13, v0, v1

    return-object v0

    .line 66
    .end local v2    # "view_utils_logging_enabled":Z
    .end local v3    # "windowRect":Landroid/graphics/Rect;
    .end local v4    # "actionBarHeight":I
    .end local v5    # "isInMultiWindowMode":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "displayOrientation":I
    .end local v8    # "windowAvailableRect":Landroid/graphics/Rect;
    .end local v9    # "viewRight":I
    .end local v10    # "viewsLocationInWindow":[I
    .end local v11    # "viewBottom":I
    .end local v12    # "viewLeft":I
    .end local v13    # "viewRect":Landroid/graphics/Rect;
    .end local v14    # "viewTop":I
    :cond_c
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isRectAbove(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "r1"    # Landroid/graphics/Rect;
    .param p1, "r2"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r1",
            "r2"
        }
    .end annotation

    .line 155
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViewFullyVisible(Landroid/view/View;I)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "statusBarHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "statusBarHeight"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lcom/termux/shared/view/ViewUtils;->getWindowAndViewRects(Landroid/view/View;I)[Landroid/graphics/Rect;

    move-result-object v0

    .line 46
    .local v0, "windowAndViewRects":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 48
    :cond_0
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public static setIsViewUtilsLoggingEnabled(Z)V
    .locals 0
    .param p0, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 32
    sput-boolean p0, Lcom/termux/shared/view/ViewUtils;->VIEW_UTILS_LOGGING_ENABLED:Z

    .line 33
    return-void
.end method

.method public static setLayoutMarginsInDp(Landroid/view/View;IIII)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, p2}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, p3}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, p4}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/termux/shared/view/ViewUtils;->setLayoutMarginsInPixels(Landroid/view/View;IIII)V

    .line 228
    return-void
.end method

.method public static setLayoutMarginsInPixels(Landroid/view/View;IIII)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 233
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 234
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public static toPointString(Landroid/graphics/Point;)Ljava/lang/String;
    .locals 2
    .param p0, "point"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .line 203
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toRectString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 197
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
