.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TerminalView"

.field public static final TERMINAL_CURSOR_BLINK_RATE_MAX:I = 0x7d0

.field public static final TERMINAL_CURSOR_BLINK_RATE_MIN:I = 0x64

.field private static TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z


# instance fields
.field private final mAccessibilityEnabled:Z

.field private mAutoFillHints:[Ljava/lang/String;

.field private mAutoFillImportance:I

.field private mAutoFillType:I

.field public mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field private mCursorInvisibleIgnoreOnce:Z

.field mDefaultSelectors:[I

.field public mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field public mRenderer:Lcom/termux/view/TerminalRenderer;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field public mTermSession:Lcom/termux/terminal/TerminalSession;

.field private mTerminalCursorBlinkerHandler:Landroid/os/Handler;

.field private mTerminalCursorBlinkerRate:I

.field private mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

.field private mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

.field mTopRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributes"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    .line 114
    const/4 v1, 0x2

    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    .line 124
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;

    .line 1440
    new-instance v0, Lcom/termux/view/TerminalView$3;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v1, Lcom/termux/view/TerminalView$1;

    invoke-direct {v1, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {v0, p1, v1}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 253
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    .line 254
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 255
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    .line 256
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/view/TerminalView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/TerminalView;

    .line 46
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/TerminalView;

    .line 46
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private decrementYTextSelectionCursors(I)V
    .locals 1
    .param p1, "decrement"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decrement"
        }
    .end annotation

    .line 1407
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->decrementYTextSelectionCursors(I)V

    .line 1410
    :cond_0
    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 5

    .line 1010
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextSelectionActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1384
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTextSelectionCursors()Z
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->hide()Z

    move-result v0

    return v0
.end method

.method private renderTextSelection()V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->render()V

    .line 1351
    :cond_0
    return-void
.end method

.method private declared-synchronized resetAutoFill()V
    .locals 2

    monitor-enter p0

    .line 1082
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    .line 1083
    const/4 v1, 0x2

    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    .line 1084
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    monitor-exit p0

    return-void

    .line 1081
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showFloatingToolbar()V
    .locals 4

    .line 1450
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1452
    .local v0, "delay":I
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1454
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private showTextSelectionCursors(Landroid/view/MotionEvent;)V
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

    .line 1341
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->show(Landroid/view/MotionEvent;)V

    .line 1342
    return-void
.end method

.method private stopTerminalCursorBlinker()V
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v0, :cond_1

    .line 1280
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Stopping cursor blinker"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1284
    :cond_1
    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 286
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 288
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 290
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 292
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    .line 297
    return v0
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1048
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->resetAutoFill()V

    .line 1053
    return-void
.end method

.method public declared-synchronized cancelRequestAutoFill()V
    .locals 4

    monitor-enter p0

    .line 1146
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 1147
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 1150
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getAutoFillManagerService()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 1151
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1152
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->resetAutoFill()V

    .line 1153
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1157
    .end local v0    # "autofillManager":Landroid/view/autofill/AutofillManager;
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_2
    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    const-string v3, "Failed to cancel Autofill request"

    invoke-interface {v1, v2, v3, v0}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rowsDown"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "rowsDown"
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 560
    .local v2, "up":Z
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 561
    .local v3, "amount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 562
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    if-eqz v2, :cond_1

    const/16 v5, 0x40

    goto :goto_2

    :cond_1
    const/16 v5, 0x41

    :goto_2
    invoke-virtual {p0, p1, v5, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    .line 564
    :cond_2
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 567
    if-eqz v2, :cond_3

    const/16 v5, 0x13

    goto :goto_3

    :cond_3
    const/16 v5, 0x14

    :goto_3
    invoke-virtual {p0, v5, v0}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    .line 569
    :cond_4
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v7, -0x1

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 570
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 561
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 573
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method public getAutoFillManagerService()Landroid/view/autofill/AutofillManager;
    .locals 5

    .line 1088
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return-object v1

    .line 1091
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1092
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    return-object v1

    .line 1093
    :cond_1
    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1094
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v3, "TerminalView"

    const-string v4, "Failed to get AutofillManager service"

    invoke-interface {v2, v3, v4, v0}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1096
    return-object v1
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .line 1058
    iget v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1070
    const-string v0, ""

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getColumnAndRow(Landroid/view/MotionEvent;Z)[I
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "relativeToScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "relativeToScroll"
        }
    .end annotation

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 532
    .local v0, "column":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 533
    .local v1, "row":I
    if-eqz p2, :cond_0

    .line 534
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v1, v2

    .line 536
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public getCursorX(F)I
    .locals 1
    .param p1, "x"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method public getCursorY(F)I
    .locals 2
    .param p1, "y"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 1018
    const/high16 v0, 0x42200000    # 40.0f

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getImportantForAutofill()I
    .locals 1

    .line 1076
    iget v0, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    return v0
.end method

.method public getPointX(I)I
    .locals 2
    .param p1, "cx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cx"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p1, v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1025
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPointY(I)I
    .locals 2
    .param p1, "cy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cy"
        }
    .end annotation

    .line 1029
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .line 1363
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1366
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredSelectedText()Ljava/lang/String;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getStoredSelectedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;
    .locals 2

    .line 1328
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 1331
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1332
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1337
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    return-object v0
.end method

.method public getTopRow()I
    .locals 1

    .line 1033
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return v0
.end method

.method public handleKeyCode(II)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyMod"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "keyMod"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 896
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->handleKeyCodeAction(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    return v1

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 900
    .local v0, "term":Lcom/termux/terminal/TerminalEmulator;
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v2

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, "code":Ljava/lang/String;
    if-nez v2, :cond_2

    const/4 v1, 0x0

    return v1

    .line 902
    :cond_2
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 903
    return v1
.end method

.method public handleKeyCodeAction(II)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyMod"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "keyMod"
        }
    .end annotation

    .line 907
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 909
    .local v0, "shiftDown":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 914
    :pswitch_0
    if-eqz v0, :cond_2

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 916
    .local v11, "time":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 917
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    const/16 v3, 0x5c

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    neg-int v3, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 918
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 919
    return v1

    .line 923
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v11    # "time":J
    :cond_2
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hideFloatingToolbar()V
    .locals 3

    .line 1457
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1459
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1461
    :cond_0
    return-void
.end method

.method public inputCodePoint(IZZ)V
    .locals 5
    .param p1, "codePoint"    # I
    .param p2, "controlDownFromEvent"    # Z
    .param p3, "leftAltDownFromEvent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codePoint",
            "controlDownFromEvent",
            "leftAltDownFromEvent"
        }
    .end annotation

    .line 829
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCodePoint(codePoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftAltDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v0, :cond_1

    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 838
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 840
    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 841
    .local v2, "controlDown":Z
    :goto_1
    if-nez p3, :cond_5

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v0, v1

    .line 843
    .local v0, "altDown":Z
    :cond_6
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v3, p1, v2, v4}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 845
    :cond_7
    if-eqz v2, :cond_16

    .line 846
    const/16 v3, 0x61

    if-lt p1, v3, :cond_8

    const/16 v3, 0x7a

    if-gt p1, v3, :cond_8

    .line 847
    add-int/lit8 v3, p1, -0x61

    add-int/lit8 p1, v3, 0x1

    goto/16 :goto_8

    .line 848
    :cond_8
    const/16 v3, 0x41

    if-lt p1, v3, :cond_9

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_9

    .line 849
    add-int/lit8 v3, p1, -0x41

    add-int/lit8 p1, v3, 0x1

    goto :goto_8

    .line 850
    :cond_9
    const/16 v1, 0x20

    if-eq p1, v1, :cond_15

    const/16 v1, 0x32

    if-ne p1, v1, :cond_a

    goto :goto_7

    .line 852
    :cond_a
    const/16 v1, 0x5b

    if-eq p1, v1, :cond_14

    const/16 v1, 0x33

    if-ne p1, v1, :cond_b

    goto :goto_6

    .line 854
    :cond_b
    const/16 v1, 0x5c

    if-eq p1, v1, :cond_13

    const/16 v1, 0x34

    if-ne p1, v1, :cond_c

    goto :goto_5

    .line 856
    :cond_c
    const/16 v1, 0x5d

    if-eq p1, v1, :cond_12

    const/16 v1, 0x35

    if-ne p1, v1, :cond_d

    goto :goto_4

    .line 858
    :cond_d
    const/16 v1, 0x5e

    if-eq p1, v1, :cond_11

    const/16 v1, 0x36

    if-ne p1, v1, :cond_e

    goto :goto_3

    .line 860
    :cond_e
    const/16 v1, 0x5f

    if-eq p1, v1, :cond_10

    const/16 v1, 0x37

    if-eq p1, v1, :cond_10

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_f

    goto :goto_2

    .line 864
    :cond_f
    const/16 v1, 0x38

    if-ne p1, v1, :cond_16

    .line 865
    const/16 p1, 0x7f

    goto :goto_8

    .line 863
    :cond_10
    :goto_2
    const/16 p1, 0x1f

    goto :goto_8

    .line 859
    :cond_11
    :goto_3
    const/16 p1, 0x1e

    goto :goto_8

    .line 857
    :cond_12
    :goto_4
    const/16 p1, 0x1d

    goto :goto_8

    .line 855
    :cond_13
    :goto_5
    const/16 p1, 0x1c

    goto :goto_8

    .line 853
    :cond_14
    :goto_6
    const/16 p1, 0x1b

    goto :goto_8

    .line 851
    :cond_15
    :goto_7
    const/4 p1, 0x0

    .line 869
    :cond_16
    :goto_8
    const/4 v1, -0x1

    if-le p1, v1, :cond_17

    .line 873
    sparse-switch p1, :sswitch_data_0

    goto :goto_9

    .line 875
    :sswitch_0
    const/16 p1, 0x7e

    .line 876
    goto :goto_9

    .line 878
    :sswitch_1
    const/16 p1, 0x60

    .line 879
    goto :goto_9

    .line 881
    :sswitch_2
    const/16 p1, 0x5e

    .line 886
    :goto_9
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    .line 888
    :cond_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c6 -> :sswitch_2
        0x2cb -> :sswitch_1
        0x2dc -> :sswitch_0
    .end sparse-switch
.end method

.method public isAutoFillEnabled()Z
    .locals 5

    .line 1101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    .line 1104
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getAutoFillManagerService()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 1105
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1106
    .end local v0    # "autofillManager":Landroid/view/autofill/AutofillManager;
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v3, "TerminalView"

    const-string v4, "Failed to check if Autofill is enabled"

    invoke-interface {v2, v3, v4, v0}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1108
    return v1
.end method

.method public isOpaque()Z
    .locals 1

    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    return v0

    .line 1357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1414
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1416
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1419
    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->unsetStoredSelectedText()V

    .line 491
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outAttrs"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->isTerminalViewSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldEnforceCharBasedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const v0, 0x80090

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 328
    :cond_1
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 333
    :goto_0
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 335
    new-instance v0, Lcom/termux/view/TerminalView$2;

    invoke-direct {v0, p0, p0, v1}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1423
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1425
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 1430
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1431
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->onDetached()V

    .line 1433
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 990
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 994
    .local v0, "sel":[I
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v1, :cond_1

    .line 995
    invoke-virtual {v1, v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectors([I)V

    .line 998
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v7, v0, v1

    const/4 v1, 0x2

    aget v8, v0, v1

    const/4 v1, 0x3

    aget v9, v0, v1

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 1001
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->renderTextSelection()V

    .line 1003
    .end local v0    # "sel":[I
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
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

    .line 578
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 580
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 581
    .local v0, "up":Z
    if-eqz v0, :cond_1

    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 582
    return v2

    .line 584
    .end local v0    # "up":Z
    :cond_2
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 754
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    const-string v4, "TerminalView"

    if-eqz v3, :cond_0

    .line 755
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown(keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSystem()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    return v5

    .line 757
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 761
    :cond_2
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v6, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v3, v1, v2, v6}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 763
    return v5

    .line 764
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    .line 765
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 766
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    if-nez v1, :cond_6

    .line 767
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 768
    return v5

    .line 771
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 772
    .local v3, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v6}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    .line 773
    .local v6, "controlDown":Z
    :goto_1
    and-int/lit8 v8, v3, 0x10

    if-nez v8, :cond_a

    iget-object v8, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v8}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    move v8, v5

    .line 774
    .local v8, "leftAltDown":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v9}, Lcom/termux/view/TerminalViewClient;->readShiftKey()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    move v9, v5

    .line 775
    .local v9, "shiftDown":Z
    :goto_5
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_d

    move v10, v5

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    .line 777
    .local v10, "rightAltDownFromEvent":Z
    :goto_6
    const/4 v11, 0x0

    .line 778
    .local v11, "keyMod":I
    if-eqz v6, :cond_e

    const/high16 v12, 0x40000000    # 2.0f

    or-int/2addr v11, v12

    .line 779
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    const/high16 v13, -0x80000000

    if-nez v12, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    or-int/2addr v11, v13

    .line 780
    :cond_10
    if-eqz v9, :cond_11

    const/high16 v12, 0x20000000

    or-int/2addr v11, v12

    .line 781
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v12

    if-eqz v12, :cond_12

    const/high16 v12, 0x10000000

    or-int/2addr v11, v12

    .line 783
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v0, v1, v11}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 784
    sget-boolean v7, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v7, :cond_13

    iget-object v7, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v12, "handleKeyCode() took key event"

    invoke-interface {v7, v4, v12}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_13
    return v5

    .line 789
    :cond_14
    const/16 v12, 0x7000

    .line 790
    .local v12, "bitsToClear":I
    if-eqz v10, :cond_15

    goto :goto_7

    .line 794
    :cond_15
    or-int/lit8 v12, v12, 0x12

    .line 796
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v14

    not-int v15, v12

    and-int/2addr v14, v15

    .line 798
    .local v14, "effectiveMetaState":I
    if-eqz v9, :cond_16

    or-int/lit8 v14, v14, 0x41

    .line 799
    :cond_16
    iget-object v15, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v15}, Lcom/termux/view/TerminalViewClient;->readFnKey()Z

    move-result v15

    if-eqz v15, :cond_17

    or-int/lit8 v14, v14, 0x8

    .line 801
    :cond_17
    invoke-virtual {v2, v14}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v15

    .line 802
    .local v15, "result":I
    sget-boolean v16, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v16, :cond_18

    .line 803
    iget-object v5, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyEvent#getUnicodeChar("

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ") returned: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_18
    if-nez v15, :cond_19

    .line 805
    const/4 v4, 0x0

    return v4

    .line 808
    :cond_19
    iget v4, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 809
    .local v4, "oldCombiningAccent":I
    const/high16 v5, -0x80000000

    and-int/2addr v5, v15

    if-eqz v5, :cond_1b

    .line 811
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v5, :cond_1a

    .line 812
    invoke-virtual {v0, v5, v6, v8}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 813
    :cond_1a
    const v5, 0x7fffffff

    and-int/2addr v5, v15

    iput v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_8

    .line 815
    :cond_1b
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v5, :cond_1d

    .line 816
    invoke-static {v5, v15}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v5

    .line 817
    .local v5, "combinedChar":I
    if-lez v5, :cond_1c

    move v7, v5

    move v15, v7

    .line 818
    :cond_1c
    const/4 v7, 0x0

    iput v7, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 820
    .end local v5    # "combinedChar":I
    :cond_1d
    invoke-virtual {v0, v15, v6, v8}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 823
    :goto_8
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq v5, v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 825
    :cond_1e
    const/4 v5, 0x1

    return v5
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 631
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyPreIme(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->cancelRequestAutoFill()V

    .line 635
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 637
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 644
    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 642
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldUseCtrlSpaceWorkaround()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    .line 648
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 653
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 935
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 944
    return v1

    .line 945
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 950
    :cond_3
    return v1
.end method

.method public onScreenUpdated()V
    .locals 5

    .line 448
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 451
    .local v0, "rowsInHistory":I
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v0

    if-ge v1, v2, :cond_1

    neg-int v1, v0

    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 453
    :cond_1
    const/4 v1, 0x0

    .line 454
    .local v1, "skipScrolling":Z
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v2

    .line 457
    .local v2, "rowShift":I
    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v4, v3

    add-int/2addr v4, v2

    if-le v4, v0, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    goto :goto_0

    .line 462
    :cond_2
    const/4 v1, 0x1

    .line 463
    sub-int/2addr v3, v2

    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 464
    invoke-direct {p0, v2}, Lcom/termux/view/TerminalView;->decrementYTextSelectionCursors(I)V

    .line 468
    .end local v2    # "rowShift":I
    :cond_3
    :goto_0
    if-nez v1, :cond_5

    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    .line 470
    const/4 v3, -0x3

    if-ge v2, v3, :cond_4

    .line 474
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    .line 476
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 479
    :cond_5
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 481
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 482
    iget-boolean v2, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/view/TerminalView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 483
    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 959
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 960
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

    .line 591
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 592
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 594
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 596
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 597
    return v1

    .line 598
    :cond_1
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 599
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    .line 601
    :cond_2
    return v1

    .line 602
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 603
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 604
    .local v2, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    .line 605
    .local v4, "clipData":Landroid/content/ClipData;
    if-eqz v4, :cond_6

    .line 606
    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 607
    .local v3, "clipItem":Landroid/content/ClipData$Item;
    if-eqz v3, :cond_6

    .line 608
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 609
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_1

    .line 612
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v3    # "clipItem":Landroid/content/ClipData$Item;
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_4
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 619
    :pswitch_0
    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    .line 616
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 617
    nop

    .line 625
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 626
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized requestAutoFill([Ljava/lang/String;)V
    .locals 4
    .param p1, "autoFillHints"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoFillHints"
        }
    .end annotation

    monitor-enter p0

    .line 1125
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 1126
    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 1129
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getAutoFillManagerService()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 1130
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    .line 1135
    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    .line 1137
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;

    .line 1138
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1142
    .end local v0    # "autofillManager":Landroid/view/autofill/AutofillManager;
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_2
    goto :goto_0

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    const-string v3, "Failed to request Autofill"

    invoke-interface {v1, v2, v3, v0}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 1126
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1124
    .end local p1    # "autoFillHints":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestAutoFillPassword()V
    .locals 2

    monitor-enter p0

    .line 1119
    nop

    .line 1120
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "password"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1121
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_0
    const/4 v0, 0x0

    .line 1119
    :goto_0
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->requestAutoFill([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    monitor-exit p0

    return-void

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestAutoFillUsername()V
    .locals 2

    monitor-enter p0

    .line 1113
    nop

    .line 1114
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "username"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1115
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_0
    const/4 v0, 0x0

    .line 1113
    :goto_0
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->requestAutoFill([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    monitor-exit p0

    return-void

    .line 1112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "button"    # I
    .param p3, "pressed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "button",
            "pressed"
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->getColumnAndRow(Landroid/view/MotionEvent;Z)[I

    move-result-object v1

    .line 542
    .local v1, "columnAndRow":[I
    aget v0, v1, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 543
    .local v0, "x":I
    aget v3, v1, v2

    add-int/2addr v3, v2

    .line 544
    .local v3, "y":I
    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    .line 545
    :cond_0
    iget-wide v4, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 546
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 547
    iget v3, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 550
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 551
    iput v3, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 554
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2, p2, v0, v3, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    .line 555
    return-void
.end method

.method public setIsTerminalViewKeyLoggingEnabled(Z)V
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

    .line 274
    sput-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    .line 275
    return-void
.end method

.method public declared-synchronized setTerminalCursorBlinkerRate(I)Z
    .locals 4
    .param p1, "blinkRate"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blinkRate"
        }
    .end annotation

    monitor-enter p0

    .line 1178
    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    .line 1179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The cursor blink rate must be in between 100-2000: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    .line 1181
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 1183
    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting cursor blinker rate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iput p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    .line 1185
    const/4 v0, 0x1

    .line 1188
    .restart local v0    # "result":Z
    :goto_0
    iget v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    if-nez v1, :cond_2

    .line 1189
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    const-string v3, "Cursor blinker disabled"

    invoke-interface {v1, v2, v3}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    :cond_2
    monitor-exit p0

    return v0

    .line 1177
    .end local v0    # "result":Z
    .end local p1    # "blinkRate":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTerminalCursorBlinkerState(ZZ)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "startOnlyIfCursorEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "startOnlyIfCursorEnabled"
        }
    .end annotation

    monitor-enter p0

    .line 1247
    :try_start_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V

    .line 1249
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1251
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1253
    if-eqz p1, :cond_7

    .line 1255
    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_6

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1258
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1259
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1260
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Ignoring call to start cursor blinker since cursor is not enabled"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_2
    monitor-exit p0

    return-void

    .line 1265
    :cond_3
    :try_start_2
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting cursor blinker with the blink rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 1268
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    .line 1269
    :cond_5
    new-instance v0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/terminal/TerminalEmulator;I)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    .line 1270
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1271
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1256
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 1273
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 1246
    .end local p1    # "start":Z
    .end local p2    # "startOnlyIfCursorEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V
    .locals 0
    .param p1, "client"    # Lcom/termux/view/TerminalViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    .line 266
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 500
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 501
    return-void
.end method

.method public setTopRow(I)V
    .locals 0
    .param p1, "mTopRow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTopRow"
        }
    .end annotation

    .line 1037
    iput p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1038
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "newTypeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newTypeface"
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 505
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 506
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 507
    return-void
.end method

.method public startTextSelectionMode(Landroid/view/MotionEvent;)V
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

    .line 1389
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    return-void

    .line 1393
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->showTextSelectionCursors(Landroid/view/MotionEvent;)V

    .line 1394
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1396
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 1397
    return-void
.end method

.method public stopTextSelectionMode()V
    .locals 2

    .line 1400
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->hideTextSelectionCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1402
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 1404
    :cond_0
    return-void
.end method

.method public unsetStoredSelectedText()V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->unsetStoredSelectedText()V

    .line 1378
    :cond_0
    return-void
.end method

.method public updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
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

    .line 1464
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1467
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->hideFloatingToolbar()V

    .line 1468
    goto :goto_0

    .line 1471
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->showFloatingToolbar()V

    .line 1474
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSize()V
    .locals 7

    .line 964
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 965
    .local v0, "viewWidth":I
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    .line 966
    .local v1, "viewHeight":I
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    int-to-float v2, v0

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 970
    .local v2, "newColumns":I
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 972
    .local v3, "newRows":I
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v3, v4, :cond_3

    .line 973
    :cond_1
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v5}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v6}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v6

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/termux/terminal/TerminalSession;->updateSize(IIII)V

    .line 974
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 975
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->onEmulatorSet()V

    .line 978
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v4, :cond_2

    .line 979
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4, v5}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->setEmulator(Lcom/termux/terminal/TerminalEmulator;)V

    .line 981
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 982
    invoke-virtual {p0, v4, v4}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 983
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 985
    :cond_3
    return-void

    .line 966
    .end local v2    # "newColumns":I
    .end local v3    # "newRows":I
    :cond_4
    :goto_0
    return-void
.end method
