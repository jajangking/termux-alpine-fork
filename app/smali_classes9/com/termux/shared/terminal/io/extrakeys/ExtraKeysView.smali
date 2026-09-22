.class public final Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
.super Landroid/widget/GridLayout;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;,
        Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUTTON_ACTIVE_BACKGROUND_COLOR:I = -0x808081

.field public static final DEFAULT_BUTTON_ACTIVE_TEXT_COLOR:I = -0x7f2116

.field public static final DEFAULT_BUTTON_BACKGROUND_COLOR:I = 0x0

.field public static final DEFAULT_BUTTON_TEXT_COLOR:I = -0x1

.field public static final DEFAULT_LONG_PRESS_REPEAT_DELAY:I = 0x50

.field public static final FALLBACK_LONG_PRESS_DURATION:I = 0x190

.field public static final MAX_LONG_PRESS_DURATION:I = 0xbb8

.field public static final MAX_LONG_PRESS__REPEAT_DELAY:I = 0x7d0

.field public static final MIN_LONG_PRESS_DURATION:I = 0xc8

.field public static final MIN_LONG_PRESS__REPEAT_DELAY:I = 0x5


# instance fields
.field private mButtonActiveBackgroundColor:I

.field private mButtonActiveTextColor:I

.field private mButtonBackgroundColor:I

.field private mButtonTextAllCaps:Z

.field private mButtonTextColor:I

.field private mExtraKeysViewClient:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;

.field private mHandler:Landroid/os/Handler;

.field private mLongPressCount:I

.field private mLongPressRepeatDelay:I

.field private mLongPressTimeout:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRepetitiveKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSpecialButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialButtonsKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    .line 201
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->PRIMARY_REPETITIVE_KEYS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setRepetitiveKeys(Ljava/util/List;)V

    .line 202
    invoke-virtual {p0, p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setSpecialButtons(Ljava/util/Map;)V

    .line 203
    const/4 v0, -0x1

    const v1, -0x7f2116

    const/4 v2, 0x0

    const v3, -0x808081

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setButtonColors(IIII)V

    .line 205
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setLongPressTimeout(I)V

    .line 206
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setLongPressRepeatDelay(I)V

    .line 207
    return-void
.end method

.method static synthetic access$008(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)I
    .locals 2
    .param p0, "x0"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    .line 72
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    return v0
.end method

.method private createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 5
    .param p1, "buttonKey"    # Ljava/lang/String;
    .param p2, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonKey",
            "needUpdate"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-static {p1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    .line 634
    .local v0, "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 635
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->setIsCreated(Z)V

    .line 636
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101032f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 637
    .local v1, "button":Landroid/widget/Button;
    iget-boolean v2, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextColor:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 638
    if-eqz p2, :cond_2

    .line 639
    iget-object v2, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_2
    return-object v1
.end method

.method private dismissPopup()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 597
    iput-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 598
    return-void
.end method

.method public static synthetic lambda$59rxrZGL4YnEgL9GVkUA9SXFBzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static maximumLength([[Ljava/lang/Object;)I
    .locals 5
    .param p0, "matrix"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "m":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 652
    .local v3, "row":[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 651
    .end local v3    # "row":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    :cond_0
    return v0
.end method

.method private onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation

    .line 495
    invoke-virtual {p0, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    if-lez v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    .line 498
    .local v0, "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 501
    :cond_1
    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 502
    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    if-nez v1, :cond_2

    .line 503
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->setIsLocked(Z)V

    .line 504
    .end local v0    # "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    :cond_2
    goto :goto_0

    .line 505
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 507
    :goto_0
    return-void
.end method

.method private onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 469
    :cond_0
    return-void
.end method

.method private performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, p1, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v3, 0x3

    if-lt v0, v1, :cond_1

    .line 482
    invoke-virtual {p3, v3}, Landroid/widget/Button;->performHapticFeedback(I)Z

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 486
    invoke-virtual {p3, v3}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 490
    :cond_2
    :goto_0
    return-void
.end method

.method private startScheduledExecutors(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 513
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    invoke-virtual {p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 517
    new-instance v2, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v0

    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    .line 527
    .local v0, "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 529
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    .line 530
    :cond_2
    new-instance v1, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-direct {v1, p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;)V

    iput-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 531
    iget-object v2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    .end local v0    # "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    :cond_3
    :goto_0
    return-void
.end method

.method private stopScheduledExecutors()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 538
    iput-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 542
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 543
    iput-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 545
    :cond_1
    return-void
.end method


# virtual methods
.method public getButtonActiveBackgroundColor()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    return v0
.end method

.method public getButtonActiveTextColor()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    return v0
.end method

.method public getButtonBackgroundColor()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextColor:I

    return v0
.end method

.method public getDefaultSpecialButtons(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)Ljava/util/Map;
    .locals 1
    .param p1, "extraKeysView"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKeysView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;",
            ")",
            "Ljava/util/Map<",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V

    return-object v0
.end method

.method public getExtraKeysViewClient()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;

    return-object v0
.end method

.method public getLongPressRepeatDelay()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    return v0
.end method

.method public getLongPressTimeout()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    return v0
.end method

.method public getRepetitiveKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$59rxrZGL4YnEgL9GVkUA9SXFBzg;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$59rxrZGL4YnEgL9GVkUA9SXFBzg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSpecialButtons()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$nJGNH8BMDpdDvvxsEIsIbHlo3Us;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$nJGNH8BMDpdDvvxsEIsIbHlo3Us;

    sget-object v2, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSpecialButtonsKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$59rxrZGL4YnEgL9GVkUA9SXFBzg;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$59rxrZGL4YnEgL9GVkUA9SXFBzg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)Z
    .locals 2
    .param p1, "button"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$reload$0$ExtraKeysView(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .param p1, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;

    .line 397
    invoke-direct {p0, p3, p1, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 398
    invoke-direct {p0, p3, p1, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 399
    return-void
.end method

.method public synthetic lambda$reload$1$ExtraKeysView(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 402
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 447
    return v1

    .line 425
    :pswitch_0
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 426
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 427
    return v1

    .line 410
    :pswitch_1
    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 414
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 415
    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->showPopup(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 418
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 419
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->dismissPopup()V

    .line 422
    :cond_1
    return v1

    .line 430
    :pswitch_2
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 431
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 433
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 436
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->dismissPopup()V

    .line 437
    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->performClick()Z

    .line 444
    :cond_4
    :goto_0
    return v1

    .line 404
    :pswitch_3
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 406
    invoke-direct {p0, p3, p1, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->startScheduledExecutors(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 407
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$startScheduledExecutors$2$ExtraKeysView(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 518
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 519
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 520
    return-void
.end method

.method public readSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;
    .locals 3
    .param p1, "specialButton"    # Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;
    .param p2, "autoSetInActive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "specialButton",
            "autoSetInActive"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    .line 620
    .local v0, "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 622
    :cond_0
    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isCreated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 626
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isLocked:Z

    if-nez v1, :cond_2

    .line 627
    invoke-virtual {v0, v2}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 629
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 623
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public reload(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;)V
    .locals 8
    .param p1, "extraKeysInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKeysInfo"
        }
    .end annotation

    .line 366
    if-nez p1, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    .line 370
    .local v1, "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    .end local v1    # "state":Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->removeAllViews()V

    .line 374
    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    .line 376
    .local v0, "buttons":[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setRowCount(I)V

    .line 377
    invoke-static {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->maximumLength([[Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setColumnCount(I)V

    .line 379
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 380
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_2
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 381
    aget-object v3, v0, v1

    aget-object v3, v3, v2

    .line 384
    .local v3, "buttonInfo":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    invoke-virtual {p0, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    invoke-virtual {v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v4

    .line 386
    .local v4, "button":Landroid/widget/Button;
    if-nez v4, :cond_3

    return-void

    .line 388
    .end local v4    # "button":Landroid/widget/Button;
    :cond_2
    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x101032f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 391
    .restart local v4    # "button":Landroid/widget/Button;
    :cond_3
    invoke-virtual {v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget v5, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 393
    iget-boolean v5, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 394
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 396
    new-instance v6, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;

    invoke-direct {v6, p0, v3, v4}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v6, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$PtFC1t1v1x2FFHeNT3nRn88oxqs;

    invoke-direct {v6, p0, v3, v4}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$PtFC1t1v1x2FFHeNT3nRn88oxqs;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 451
    new-instance v6, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v6}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 452
    .local v6, "param":Landroid/widget/GridLayout$LayoutParams;
    iput v5, v6, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 453
    iput v5, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 454
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 455
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v6, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 456
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v5, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v6, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 457
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {p0, v4}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->addView(Landroid/view/View;)V

    .line 380
    .end local v3    # "buttonInfo":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .end local v4    # "button":Landroid/widget/Button;
    .end local v6    # "param":Landroid/widget/GridLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 379
    .end local v2    # "col":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    .end local v1    # "row":I
    :cond_5
    return-void
.end method

.method public setButtonActiveBackgroundColor(I)V
    .locals 0
    .param p1, "buttonActiveBackgroundColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonActiveBackgroundColor"
        }
    .end annotation

    .line 308
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    .line 309
    return-void
.end method

.method public setButtonActiveTextColor(I)V
    .locals 0
    .param p1, "buttonActiveTextColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonActiveTextColor"
        }
    .end annotation

    .line 286
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    .line 287
    return-void
.end method

.method public setButtonBackgroundColor(I)V
    .locals 0
    .param p1, "buttonBackgroundColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonBackgroundColor"
        }
    .end annotation

    .line 297
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    .line 298
    return-void
.end method

.method public setButtonColors(IIII)V
    .locals 0
    .param p1, "buttonTextColor"    # I
    .param p2, "buttonActiveTextColor"    # I
    .param p3, "buttonBackgroundColor"    # I
    .param p4, "buttonActiveBackgroundColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buttonTextColor",
            "buttonActiveTextColor",
            "buttonBackgroundColor",
            "buttonActiveBackgroundColor"
        }
    .end annotation

    .line 261
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextColor:I

    .line 262
    iput p2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    .line 263
    iput p3, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    .line 264
    iput p4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    .line 265
    return-void
.end method

.method public setButtonTextAllCaps(Z)V
    .locals 0
    .param p1, "buttonTextAllCaps"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonTextAllCaps"
        }
    .end annotation

    .line 313
    iput-boolean p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    .line 314
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0
    .param p1, "buttonTextColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonTextColor"
        }
    .end annotation

    .line 275
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextColor:I

    .line 276
    return-void
.end method

.method public setExtraKeysViewClient(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;)V
    .locals 0
    .param p1, "extraKeysViewClient"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKeysViewClient"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;

    .line 218
    return-void
.end method

.method public setLongPressRepeatDelay(I)V
    .locals 2
    .param p1, "longPressRepeatDelay"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longPressRepeatDelay"
        }
    .end annotation

    .line 338
    iget v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_0

    .line 339
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    goto :goto_0

    .line 341
    :cond_0
    const/16 v0, 0x50

    iput v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    .line 343
    :goto_0
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressDuration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longPressDuration"
        }
    .end annotation

    .line 324
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xbb8

    if-gt p1, v0, :cond_0

    .line 325
    iput p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    goto :goto_0

    .line 327
    :cond_0
    const/16 v0, 0x190

    iput v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    .line 329
    :goto_0
    return-void
.end method

.method public setRepetitiveKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repetitiveKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "repetitiveKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    .line 230
    return-void
.end method

.method public setSpecialButtons(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialButtons"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "specialButtons":Ljava/util/Map;, "Ljava/util/Map<Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;>;"
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    .line 248
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    .line 249
    return-void
.end method

.method showPopup(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "extraButton"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "extraButton"
        }
    .end annotation

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 566
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 568
    .local v1, "height":I
    invoke-virtual {p0, p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    .line 570
    .local v2, "button":Landroid/widget/Button;
    if-nez v2, :cond_1

    return-void

    .line 572
    .end local v2    # "button":Landroid/widget/Button;
    :cond_0
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x101032f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 573
    .restart local v2    # "button":Landroid/widget/Button;
    iget v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 575
    :cond_1
    invoke-virtual {p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-boolean v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 577
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 578
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 579
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 580
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 581
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 582
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setWidth(I)V

    .line 583
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 584
    iget v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 585
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 586
    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 587
    iget-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 588
    iget-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 589
    iget-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 590
    iget-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 591
    iget-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    mul-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 592
    return-void
.end method
