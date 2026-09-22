.class public Lcom/termux/app/terminal/TermuxActivityRootView;
.super Landroid/widget/LinearLayout;
.source "TermuxActivityRootView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxActivityRootView"

.field private static mStatusBarHeight:I


# instance fields
.field private ROOT_VIEW_LOGGING_ENABLED:Z

.field public lastMarginBottom:Ljava/lang/Integer;

.field public lastMarginBottomExtraTime:J

.field public lastMarginBottomTime:J

.field public mActivity:Lcom/termux/app/TermuxActivity;

.field public marginBottom:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->ROOT_VIEW_LOGGING_ENABLED:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->ROOT_VIEW_LOGGING_ENABLED:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->ROOT_VIEW_LOGGING_ENABLED:Z

    .line 89
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 64
    sput p0, Lcom/termux/app/terminal/TermuxActivityRootView;->mStatusBarHeight:I

    return p0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 18

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->mActivity:Lcom/termux/app/TermuxActivity;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 123
    :cond_0
    iget-object v1, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxActivityBottomSpaceView()Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "bottomSpaceView":Landroid/view/View;
    if-nez v1, :cond_1

    return-void

    .line 126
    :cond_1
    iget-boolean v2, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->ROOT_VIEW_LOGGING_ENABLED:Z

    .line 128
    .local v2, "root_view_logging_enabled":Z
    const-string v3, "TermuxActivityRootView"

    if-eqz v2, :cond_2

    .line 129
    const-string v4, ":\nonGlobalLayout:"

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/terminal/TermuxActivityRootView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    sget v5, Lcom/termux/app/terminal/TermuxActivityRootView;->mStatusBarHeight:I

    invoke-static {v1, v5}, Lcom/termux/shared/view/ViewUtils;->getWindowAndViewRects(Landroid/view/View;I)[Landroid/graphics/Rect;

    move-result-object v5

    .line 135
    .local v5, "windowAndViewRects":[Landroid/graphics/Rect;
    if-nez v5, :cond_3

    .line 136
    return-void

    .line 138
    :cond_3
    const/4 v6, 0x0

    aget-object v7, v5, v6

    .line 139
    .local v7, "windowAvailableRect":Landroid/graphics/Rect;
    const/4 v8, 0x1

    aget-object v9, v5, v8

    .line 143
    .local v9, "bottomSpaceViewRect":Landroid/graphics/Rect;
    invoke-static {v7, v9}, Lcom/termux/shared/view/ViewUtils;->isRectAbove(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    .line 144
    .local v10, "isVisible":Z
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v11, v12, :cond_4

    iget v11, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-lez v11, :cond_4

    move v11, v8

    goto :goto_0

    :cond_4
    move v11, v6

    .line 145
    .local v11, "isVisibleBecauseMargin":Z
    :goto_0
    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    iget v13, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-gez v12, :cond_5

    move v12, v8

    goto :goto_1

    :cond_5
    move v12, v6

    .line 147
    .local v12, "isVisibleBecauseExtraMargin":Z
    :goto_1
    const-string v13, ", bottom "

    if-eqz v2, :cond_6

    .line 148
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "windowAvailableRect "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Lcom/termux/shared/view/ViewUtils;->toRectString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bottomSpaceViewRect "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/termux/shared/view/ViewUtils;->toRectString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "windowAvailableRect.bottom "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bottomSpaceViewRect.bottom "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", diff "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", isVisible "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 152
    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", isRectAbove "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7, v9}, Lcom/termux/shared/view/ViewUtils;->isRectAbove(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", isVisibleBecauseMargin "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", isVisibleBecauseExtraMargin "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_6
    if-eqz v10, :cond_13

    .line 167
    const-wide/16 v13, 0x28

    if-eqz v11, :cond_a

    .line 168
    if-eqz v2, :cond_7

    .line 169
    const-string v8, "Visible due to margin"

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v17, v7

    .end local v7    # "windowAvailableRect":Landroid/graphics/Rect;
    .local v17, "windowAvailableRect":Landroid/graphics/Rect;
    iget-wide v6, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottomTime:J

    sub-long/2addr v15, v6

    cmp-long v6, v15, v13

    if-lez v6, :cond_8

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottomTime:J

    .line 181
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->marginBottom:Ljava/lang/Integer;

    goto :goto_2

    .line 183
    :cond_8
    if-eqz v2, :cond_9

    .line 184
    const-string v6, "Ignoring restoring marginBottom to 0 since called to quickly"

    invoke-static {v3, v6}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_9
    :goto_2
    return-void

    .line 190
    .end local v17    # "windowAvailableRect":Landroid/graphics/Rect;
    .restart local v7    # "windowAvailableRect":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v17, v7

    .end local v7    # "windowAvailableRect":Landroid/graphics/Rect;
    .restart local v17    # "windowAvailableRect":Landroid/graphics/Rect;
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz v6, :cond_b

    const/16 v16, 0x1

    goto :goto_3

    :cond_b
    const/16 v16, 0x0

    :goto_3
    move/from16 v6, v16

    .line 195
    .local v6, "setMargin":Z
    if-eqz v12, :cond_e

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object v7, v9

    .end local v9    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    .local v7, "bottomSpaceViewRect":Landroid/graphics/Rect;
    iget-wide v8, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottomExtraTime:J

    sub-long/2addr v15, v8

    cmp-long v8, v15, v13

    if-lez v8, :cond_d

    .line 198
    if-eqz v2, :cond_c

    .line 199
    const-string v8, "Resetting margin since visible due to extra margin"

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottomExtraTime:J

    .line 202
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottom:Ljava/lang/Integer;

    .line 203
    const/4 v6, 0x1

    goto :goto_4

    .line 205
    :cond_d
    if-eqz v2, :cond_f

    .line 206
    const-string v8, "Ignoring resetting margin since visible due to extra margin since called to quickly"

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 195
    .end local v7    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    .restart local v9    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    :cond_e
    move-object v7, v9

    .line 210
    .end local v9    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    .restart local v7    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    :cond_f
    :goto_4
    if-eqz v6, :cond_11

    .line 211
    if-eqz v2, :cond_10

    .line 212
    const-string v8, "Setting bottom margin to 0"

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    invoke-virtual {v0, v4}, Lcom/termux/app/terminal/TermuxActivityRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 216
    :cond_11
    if-eqz v2, :cond_12

    .line 217
    const-string v8, "Bottom margin already equals 0"

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_12
    iget-object v3, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottom:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->marginBottom:Ljava/lang/Integer;

    .line 226
    .end local v6    # "setMargin":Z
    :goto_5
    move-object/from16 v9, v17

    goto/16 :goto_8

    .line 229
    .end local v17    # "windowAvailableRect":Landroid/graphics/Rect;
    .local v7, "windowAvailableRect":Landroid/graphics/Rect;
    .restart local v9    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v17, v7

    move-object v7, v9

    .end local v9    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    .local v7, "bottomSpaceViewRect":Landroid/graphics/Rect;
    .restart local v17    # "windowAvailableRect":Landroid/graphics/Rect;
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v9, v17

    .end local v17    # "windowAvailableRect":Landroid/graphics/Rect;
    .local v9, "windowAvailableRect":Landroid/graphics/Rect;
    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v14

    .line 231
    .local v6, "pxHidden":I
    if-eqz v2, :cond_14

    .line 232
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pxHidden "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_14
    iget v13, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v13, v6, :cond_15

    const/16 v16, 0x1

    goto :goto_6

    :cond_15
    const/16 v16, 0x0

    :goto_6
    move/from16 v13, v16

    .line 243
    .local v13, "setMargin":Z
    if-lez v6, :cond_19

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-lez v14, :cond_19

    .line 244
    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v6, v14, :cond_17

    .line 245
    if-eqz v2, :cond_16

    .line 246
    const-string v14, "Force setting margin to 0 since not visible due to wrong margin"

    invoke-static {v3, v14}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_16
    const/4 v6, 0x0

    goto :goto_7

    .line 249
    :cond_17
    if-eqz v2, :cond_18

    .line 250
    const-string v14, "Force setting margin since not visible despite required margin"

    invoke-static {v3, v14}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_18
    :goto_7
    const/4 v13, 0x1

    .line 255
    :cond_19
    if-gez v6, :cond_1b

    .line 256
    if-eqz v2, :cond_1a

    .line 257
    const-string v14, "Force setting margin to 0 since new margin is negative"

    invoke-static {v3, v14}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1a
    const/4 v6, 0x0

    .line 262
    :cond_1b
    if-eqz v13, :cond_1d

    .line 263
    if-eqz v2, :cond_1c

    .line 264
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting bottom margin to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    invoke-virtual {v0, v4}, Lcom/termux/app/terminal/TermuxActivityRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/termux/app/terminal/TermuxActivityRootView;->lastMarginBottom:Ljava/lang/Integer;

    goto :goto_8

    .line 269
    :cond_1d
    if-eqz v2, :cond_1e

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bottom margin already equals "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v6    # "pxHidden":I
    .end local v13    # "setMargin":Z
    :cond_1e
    :goto_8
    return-void

    .line 121
    .end local v1    # "bottomSpaceView":Landroid/view/View;
    .end local v2    # "root_view_logging_enabled":Z
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "windowAndViewRects":[Landroid/graphics/Rect;
    .end local v7    # "bottomSpaceViewRect":Landroid/graphics/Rect;
    .end local v9    # "windowAvailableRect":Landroid/graphics/Rect;
    .end local v10    # "isVisible":Z
    .end local v11    # "isVisibleBecauseMargin":Z
    .end local v12    # "isVisibleBecauseExtraMargin":Z
    :cond_1f
    :goto_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
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

    .line 106
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 108
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->marginBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 109
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->ROOT_VIEW_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure: Setting bottom margin to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->marginBottom:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxActivityRootView"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxActivityRootView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->marginBottom:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxActivityRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->marginBottom:Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxActivityRootView;->requestLayout()V

    .line 117
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public setActivity(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 93
    return-void
.end method

.method public setIsRootViewLoggingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 101
    iput-boolean p1, p0, Lcom/termux/app/terminal/TermuxActivityRootView;->ROOT_VIEW_LOGGING_ENABLED:Z

    .line 102
    return-void
.end method
