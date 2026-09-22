.class public final Lcom/termux/terminal/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    }
.end annotation


# static fields
.field private static final DECSET_BIT_APPLICATION_CURSOR_KEYS:I = 0x1

.field private static final DECSET_BIT_APPLICATION_KEYPAD:I = 0x20

.field private static final DECSET_BIT_AUTOWRAP:I = 0x8

.field private static final DECSET_BIT_BRACKETED_PASTE_MODE:I = 0x400

.field private static final DECSET_BIT_CURSOR_ENABLED:I = 0x10

.field private static final DECSET_BIT_LEFTRIGHT_MARGIN_MODE:I = 0x800

.field private static final DECSET_BIT_MOUSE_PROTOCOL_SGR:I = 0x200

.field private static final DECSET_BIT_MOUSE_TRACKING_BUTTON_EVENT:I = 0x80

.field private static final DECSET_BIT_MOUSE_TRACKING_PRESS_RELEASE:I = 0x40

.field private static final DECSET_BIT_ORIGIN_MODE:I = 0x4

.field private static final DECSET_BIT_RECTANGULAR_CHANGEATTRIBUTE:I = 0x1000

.field private static final DECSET_BIT_REVERSE_VIDEO:I = 0x2

.field private static final DECSET_BIT_SEND_FOCUS_EVENTS:I = 0x100

.field public static final DEFAULT_TERMINAL_CURSOR_STYLE:I = 0x0

.field public static final DEFAULT_TERMINAL_TRANSCRIPT_ROWS:I = 0x7d0

.field private static final ESC:I = 0x1

.field private static final ESC_APC:I = 0x14

.field private static final ESC_APC_ESCAPE:I = 0x15

.field private static final ESC_CSI:I = 0x6

.field private static final ESC_CSI_ARGS_ASTERIX:I = 0x10

.field private static final ESC_CSI_ARGS_SPACE:I = 0xf

.field private static final ESC_CSI_BIGGERTHAN:I = 0xc

.field private static final ESC_CSI_DOLLAR:I = 0x8

.field private static final ESC_CSI_DOUBLE_QUOTE:I = 0x11

.field private static final ESC_CSI_EXCLAMATION:I = 0x13

.field private static final ESC_CSI_QUESTIONMARK:I = 0x7

.field private static final ESC_CSI_QUESTIONMARK_ARG_DOLLAR:I = 0xe

.field private static final ESC_CSI_SINGLE_QUOTE:I = 0x12

.field private static final ESC_CSI_UNSUPPORTED_INTERMEDIATE_BYTE:I = 0x17

.field private static final ESC_CSI_UNSUPPORTED_PARAMETER_BYTE:I = 0x16

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_OSC:I = 0xa

.field private static final ESC_OSC_ESC:I = 0xb

.field private static final ESC_P:I = 0xd

.field private static final ESC_PERCENT:I = 0x9

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final LOG_ESCAPE_SEQUENCES:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalEmulator"

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x20

.field private static final MAX_OSC_STRING_LENGTH:I = 0x2000

.field public static final MOUSE_LEFT_BUTTON:I = 0x0

.field public static final MOUSE_LEFT_BUTTON_MOVED:I = 0x20

.field public static final MOUSE_WHEELDOWN_BUTTON:I = 0x41

.field public static final MOUSE_WHEELUP_BUTTON:I = 0x40

.field public static final TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

.field public static final TERMINAL_CURSOR_STYLE_BAR:I = 0x2

.field public static final TERMINAL_CURSOR_STYLE_BLOCK:I = 0x0

.field public static final TERMINAL_CURSOR_STYLE_UNDERLINE:I = 0x1

.field public static final TERMINAL_TRANSCRIPT_ROWS_MAX:I = 0xc350

.field public static final TERMINAL_TRANSCRIPT_ROWS_MIN:I = 0x64

.field public static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd


# instance fields
.field private mAboutToAutoWrap:Z

.field final mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private mArgIndex:I

.field private final mArgs:[I

.field private mArgsSubParamsBitSet:I

.field mBackColor:I

.field private mBottomMargin:I

.field private mCellHeightPixels:I

.field private mCellWidthPixels:I

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field public final mColors:Lcom/termux/terminal/TerminalColors;

.field public mColumns:I

.field private mContinueSequence:Z

.field private mCurrentDecSetFlags:I

.field private mCursorBlinkState:Z

.field private mCursorBlinkingEnabled:Z

.field private mCursorCol:I

.field private mCursorRow:I

.field private mCursorStyle:I

.field mEffect:I

.field private mEscapeState:I

.field mForeColor:I

.field private mInsertMode:Z

.field private mLastEmittedCodePoint:I

.field private mLeftMargin:I

.field private final mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private final mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

.field private mRightMargin:I

.field public mRows:I

.field private mSavedDecSetFlags:I

.field private final mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private final mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private mScreen:Lcom/termux/terminal/TerminalBuffer;

.field private mScrollCounter:I

.field private final mSession:Lcom/termux/terminal/TerminalOutput;

.field private mTabStop:[Z

.field private mTitle:Ljava/lang/String;

.field private final mTitleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I

.field mUnderlineColor:I

.field private mUseLineDrawingG0:Z

.field private mUseLineDrawingG1:Z

.field private mUseLineDrawingUsesG0:Z

.field private mUtf8Index:B

.field private final mUtf8InputBuffer:[B

.field private mUtf8ToFollow:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/termux/terminal/TerminalOutput;IIIILjava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalOutput;
    .param p2, "columns"    # I
    .param p3, "rows"    # I
    .param p4, "cellWidthPixels"    # I
    .param p5, "cellHeightPixels"    # I
    .param p6, "transcriptRows"    # Ljava/lang/Integer;
    .param p7, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "columns",
            "rows",
            "cellWidthPixels",
            "cellHeightPixels",
            "transcriptRows",
            "client"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 184
    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    .line 186
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 200
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 201
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 263
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 269
    new-instance v0, Lcom/termux/terminal/TerminalColors;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColors;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    .line 326
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    .line 327
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p0, p6}, Lcom/termux/terminal/TerminalEmulator;->getTerminalTranscriptRows(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p2, v1, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 328
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {v0, p2, p3, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 329
    iput-object p7, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 330
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 331
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 332
    iput p4, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    .line 333
    iput p5, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    .line 334
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 335
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 336
    return-void
.end method

.method private blockClear(III)V
    .locals 1
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "w"
        }
    .end annotation

    .line 2156
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 2157
    return-void
.end method

.method private blockClear(IIII)V
    .locals 8
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "w",
            "h"
        }
    .end annotation

    .line 2160
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    const/16 v5, 0x20

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 2161
    return-void
.end method

.method private collectOSCArgs(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2283
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2285
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 2287
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2289
    :goto_0
    return-void
.end method

.method private continueSequence(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1388
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 1390
    return-void
.end method

.method private doApc(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1041
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    .line 1042
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1045
    :cond_0
    return-void
.end method

.method private doApcEscape(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1051
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_0

    .line 1053
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto :goto_0

    .line 1057
    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1059
    :goto_0
    return-void
.end method

.method private doCsi(I)V
    .locals 11
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1527
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1847
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_7

    .line 1841
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1842
    goto/16 :goto_7

    .line 1796
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1837
    :pswitch_3
    goto/16 :goto_7

    .line 1833
    :pswitch_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1826
    :pswitch_5
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_8

    .line 1829
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1820
    :pswitch_6
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]l\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1821
    goto/16 :goto_7

    .line 1817
    :pswitch_7
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1818
    goto/16 :goto_7

    .line 1814
    :pswitch_8
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u001b[9;%d;%dt"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1815
    goto/16 :goto_7

    .line 1810
    :pswitch_9
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u001b[8;%d;%dt"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1811
    goto/16 :goto_7

    .line 1807
    :pswitch_a
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u001b[6;%d;%dt"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1808
    goto/16 :goto_7

    .line 1804
    :pswitch_b
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    mul-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u001b[4;%d;%dt"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1805
    goto/16 :goto_7

    .line 1801
    :pswitch_c
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[3;0;0t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1802
    goto/16 :goto_7

    .line 1798
    :pswitch_d
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[1t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1799
    goto/16 :goto_7

    .line 1784
    :pswitch_e
    const/16 v3, 0x800

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1786
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1787
    add-int/2addr v0, v2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1789
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1792
    :cond_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1794
    goto/16 :goto_7

    .line 1776
    :pswitch_f
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    sub-int/2addr v3, v2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 1777
    add-int/2addr v2, v0

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1780
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1782
    goto/16 :goto_7

    .line 1752
    :pswitch_10
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 1764
    goto/16 :goto_7

    .line 1761
    :pswitch_11
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u001b[%d;%dR"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1762
    goto/16 :goto_7

    .line 1755
    :pswitch_12
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 1756
    .local v0, "dsr":[B
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    .line 1757
    goto/16 :goto_7

    .line 1748
    .end local v0    # "dsr":[B
    :pswitch_13
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    .line 1749
    goto/16 :goto_7

    .line 1745
    :pswitch_14
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    .line 1746
    goto/16 :goto_7

    .line 1742
    :pswitch_15
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    .line 1743
    goto/16 :goto_7

    .line 1727
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1738
    goto/16 :goto_7

    .line 1732
    :sswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v2, :cond_1

    .line 1733
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v1, v2, v0

    .line 1732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1735
    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_7

    .line 1729
    :sswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v1, v0, v2

    .line 1730
    goto/16 :goto_7

    .line 1723
    :pswitch_17
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1724
    goto/16 :goto_7

    .line 1720
    :pswitch_18
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1721
    goto/16 :goto_7

    .line 1717
    :pswitch_19
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1709
    :pswitch_1a
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto/16 :goto_7

    .line 1710
    :cond_2
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1711
    .local v0, "numRepeat":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1712
    .end local v1    # "i":I
    :cond_3
    goto/16 :goto_7

    .line 1706
    .end local v0    # "numRepeat":I
    :pswitch_1b
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    .line 1707
    goto/16 :goto_7

    .line 1684
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1685
    .local v0, "numberOfTabs":I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1686
    .local v1, "newCol":I
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 1687
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4

    .line 1688
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    .line 1689
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1690
    goto :goto_3

    .line 1686
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1693
    .end local v3    # "i":I
    :cond_5
    :goto_3
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1694
    goto/16 :goto_7

    .line 1680
    .end local v0    # "numberOfTabs":I
    .end local v1    # "newCol":I
    :pswitch_1d
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1681
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v8

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1682
    goto/16 :goto_7

    .line 1664
    :pswitch_1e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_6

    .line 1669
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1670
    .local v0, "linesToScrollArg":I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v2

    .line 1671
    .local v1, "linesBetweenTopAndBottomMargins":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1672
    .local v2, "linesToScroll":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v6, v4, v8

    sub-int v7, v1, v2

    add-int v9, v5, v2

    move v4, v8

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1673
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v5, v3

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1674
    .end local v0    # "linesToScrollArg":I
    .end local v1    # "linesBetweenTopAndBottomMargins":I
    .end local v2    # "linesToScroll":I
    goto/16 :goto_7

    .line 1676
    :cond_6
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    .line 1678
    goto/16 :goto_7

    .line 1658
    :pswitch_1f
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1659
    .local v0, "linesToScroll":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 1660
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1659
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1661
    .end local v1    # "i":I
    :cond_7
    goto/16 :goto_7

    .line 1649
    .end local v0    # "linesToScroll":I
    :pswitch_20
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1650
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1651
    .local v0, "cellsAfterCursor":I
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1652
    .local v1, "cellsToDelete":I
    sub-int v9, v0, v1

    .line 1653
    .local v9, "cellsToMove":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v3, v7, v1

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    move v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1654
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1656
    .end local v0    # "cellsAfterCursor":I
    .end local v1    # "cellsToDelete":I
    .end local v9    # "cellsToMove":I
    goto/16 :goto_7

    .line 1634
    :pswitch_21
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1635
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v3

    .line 1636
    .local v0, "linesAfterCursor":I
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1637
    .local v2, "linesToDelete":I
    sub-int v10, v0, v2

    .line 1638
    .local v10, "linesToMove":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v4, 0x0

    iget v9, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v5, v9, v2

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v8, 0x0

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1639
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v10

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1641
    .end local v0    # "linesAfterCursor":I
    .end local v2    # "linesToDelete":I
    .end local v10    # "linesToMove":I
    goto/16 :goto_7

    .line 1625
    :pswitch_22
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v3

    .line 1626
    .restart local v0    # "linesAfterCursor":I
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1627
    .local v2, "linesToInsert":I
    sub-int v10, v0, v2

    .line 1628
    .restart local v10    # "linesToMove":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v4, 0x0

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v8, 0x0

    add-int v9, v5, v2

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1629
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1631
    .end local v0    # "linesAfterCursor":I
    .end local v2    # "linesToInsert":I
    .end local v10    # "linesToMove":I
    goto/16 :goto_7

    .line 1607
    :pswitch_23
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 1618
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1619
    return-void

    .line 1615
    :pswitch_24
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1616
    goto :goto_5

    .line 1612
    :pswitch_25
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1613
    goto :goto_5

    .line 1609
    :pswitch_26
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1610
    nop

    .line 1621
    :goto_5
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1622
    goto/16 :goto_7

    .line 1584
    :pswitch_27
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_4

    .line 1601
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1602
    return-void

    .line 1598
    :pswitch_28
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1599
    goto :goto_6

    .line 1595
    :pswitch_29
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1596
    goto :goto_6

    .line 1590
    :pswitch_2a
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, v1, v0, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1591
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1592
    goto :goto_6

    .line 1586
    :pswitch_2b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v0

    invoke-direct {p0, v0, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1587
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v0, v2

    sub-int/2addr v5, v0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1588
    nop

    .line 1604
    :goto_6
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1605
    goto/16 :goto_7

    .line 1580
    :pswitch_2c
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1581
    goto/16 :goto_7

    .line 1577
    :pswitch_2d
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1578
    goto/16 :goto_7

    .line 1573
    :pswitch_2e
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1574
    goto/16 :goto_7

    .line 1570
    :pswitch_2f
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1571
    goto/16 :goto_7

    .line 1567
    :pswitch_30
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1568
    goto/16 :goto_7

    .line 1564
    :pswitch_31
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1565
    goto/16 :goto_7

    .line 1561
    :pswitch_32
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1562
    goto/16 :goto_7

    .line 1557
    :pswitch_33
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1558
    goto/16 :goto_7

    .line 1554
    :pswitch_34
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1555
    goto :goto_7

    .line 1545
    :pswitch_35
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1546
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1547
    .local v0, "columnsAfterCursor":I
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1548
    .local v1, "spacesToInsert":I
    sub-int v9, v0, v1

    .line 1549
    .local v9, "charsToMove":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    add-int v7, v3, v1

    move v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1550
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1552
    .end local v0    # "columnsAfterCursor":I
    .end local v1    # "spacesToInsert":I
    .end local v9    # "charsToMove":I
    goto :goto_7

    .line 1696
    :pswitch_36
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1697
    goto :goto_7

    .line 1699
    :pswitch_37
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1700
    goto :goto_7

    .line 1703
    :pswitch_38
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1704
    goto :goto_7

    .line 1541
    :pswitch_39
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1542
    goto :goto_7

    .line 1535
    :pswitch_3a
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1536
    goto :goto_7

    .line 1538
    :pswitch_3b
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1539
    goto :goto_7

    .line 1532
    :pswitch_3c
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1533
    goto :goto_7

    .line 1529
    :pswitch_3d
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1530
    goto :goto_7

    .line 1844
    :pswitch_3e
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1845
    nop

    .line 1850
    :cond_8
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_27
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_32
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_2d
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_d
        :pswitch_3
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :array_0
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doCsiBiggerThan(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1284
    sparse-switch p1, :sswitch_data_0

    .line 1358
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto :goto_0

    .line 1355
    :sswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalEmulator"

    invoke-static {v0, v2, v1}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    goto :goto_0

    .line 1296
    :sswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[>41;320;0c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1297
    nop

    .line 1361
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method private doCsiQuestionMark(I)V
    .locals 18
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1100
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 1179
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_c

    .line 1160
    :sswitch_0
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v7, v6

    if-lt v5, v7, :cond_0

    array-length v5, v6

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1161
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v5, v6, :cond_4

    .line 1162
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v6, v6, v5

    .line 1163
    .local v6, "externalBit":I
    invoke-static {v6}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v7

    .line 1164
    .local v7, "internalBit":I
    if-ne v7, v2, :cond_1

    .line 1165
    iget-object v8, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring request to save/recall decset bit="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TerminalEmulator"

    invoke-static {v8, v10, v9}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1167
    :cond_1
    const/16 v8, 0x73

    if-ne v1, v8, :cond_2

    .line 1168
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v8, v7

    iput v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_2

    .line 1170
    :cond_2
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    invoke-virtual {v0, v8, v6}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 1161
    .end local v6    # "externalBit":I
    .end local v7    # "internalBit":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1174
    .end local v5    # "i":I
    :cond_4
    goto/16 :goto_c

    .line 1148
    :sswitch_1
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 1155
    return-void

    .line 1151
    :pswitch_0
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "\u001b[?%d;%d;1R"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1152
    goto/16 :goto_c

    .line 1143
    :sswitch_2
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v6, v5

    if-lt v2, v6, :cond_5

    array-length v2, v5

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1144
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v5, :cond_7

    .line 1145
    const/16 v5, 0x68

    if-ne v1, v5, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v6, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 1144
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1146
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_c

    .line 1103
    :sswitch_3
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1104
    const/16 v2, 0x20

    .line 1105
    .local v2, "fillChar":I
    const/4 v5, -0x1

    .line 1106
    .local v5, "startCol":I
    const/4 v6, -0x1

    .line 1107
    .local v6, "startRow":I
    const/4 v7, -0x1

    .line 1108
    .local v7, "endCol":I
    const/4 v8, -0x1

    .line 1109
    .local v8, "endRow":I
    const/16 v9, 0x4b

    if-ne v1, v9, :cond_8

    move v9, v4

    goto :goto_5

    :cond_8
    move v9, v3

    :goto_5
    move v11, v9

    .line 1110
    .local v11, "justRow":Z
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 1130
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1124
    :pswitch_1
    const/4 v5, 0x0

    .line 1125
    if-eqz v11, :cond_9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_9
    move v6, v3

    .line 1126
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1127
    if-eqz v11, :cond_a

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v4

    goto :goto_6

    :cond_a
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_6
    move v8, v3

    .line 1128
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1118
    :pswitch_2
    const/4 v5, 0x0

    .line 1119
    if-eqz v11, :cond_b

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_b
    move v6, v3

    .line 1120
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v7, v3, 0x1

    .line 1121
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v8, v3, 0x1

    .line 1122
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1112
    :pswitch_3
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1113
    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1114
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1115
    if-eqz v11, :cond_c

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v4

    goto :goto_7

    :cond_c
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_7
    move v8, v3

    .line 1116
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    .line 1133
    .end local v5    # "startCol":I
    .end local v6    # "startRow":I
    .end local v7    # "endCol":I
    .end local v8    # "endRow":I
    .local v3, "startCol":I
    .local v4, "startRow":I
    .local v12, "endCol":I
    .local v13, "endRow":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v14

    .line 1134
    .local v14, "style":J
    move v5, v4

    move v9, v5

    .local v9, "row":I
    :goto_9
    if-ge v9, v13, :cond_f

    .line 1135
    move v5, v3

    move v10, v5

    .local v10, "col":I
    :goto_a
    if-ge v10, v12, :cond_e

    .line 1136
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v5, v9, v10}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_d

    .line 1137
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move v6, v10

    move v7, v9

    move v8, v2

    move/from16 v16, v9

    move/from16 v17, v10

    .end local v9    # "row":I
    .end local v10    # "col":I
    .local v16, "row":I
    .local v17, "col":I
    move-wide v9, v14

    invoke-virtual/range {v5 .. v10}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    goto :goto_b

    .line 1136
    .end local v16    # "row":I
    .end local v17    # "col":I
    .restart local v9    # "row":I
    .restart local v10    # "col":I
    :cond_d
    move/from16 v16, v9

    move/from16 v17, v10

    .line 1135
    .end local v9    # "row":I
    .end local v10    # "col":I
    .restart local v16    # "row":I
    .restart local v17    # "col":I
    :goto_b
    add-int/lit8 v10, v17, 0x1

    move/from16 v9, v16

    .end local v17    # "col":I
    .restart local v10    # "col":I
    goto :goto_a

    .end local v16    # "row":I
    .restart local v9    # "row":I
    :cond_e
    move/from16 v16, v9

    move/from16 v17, v10

    .line 1134
    .end local v9    # "row":I
    .end local v10    # "col":I
    .restart local v16    # "row":I
    add-int/lit8 v9, v16, 0x1

    .end local v16    # "row":I
    .restart local v9    # "row":I
    goto :goto_9

    :cond_f
    move/from16 v16, v9

    .line 1140
    .end local v9    # "row":I
    goto :goto_c

    .line 1176
    .end local v2    # "fillChar":I
    .end local v3    # "startCol":I
    .end local v4    # "startRow":I
    .end local v11    # "justRow":Z
    .end local v12    # "endCol":I
    .end local v13    # "endRow":I
    .end local v14    # "style":J
    :sswitch_4
    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1177
    return-void

    .line 1181
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doCsiUnsupportedParameterOrIntermediateByte(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1082
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 1085
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1086
    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_1

    .line 1088
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1089
    :cond_1
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_2

    .line 1092
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto :goto_0

    .line 1094
    :cond_2
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1096
    :goto_0
    return-void
.end method

.method private doDeviceControl(I)V
    .locals 18
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 916
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1026
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v4, 0x2000

    if-le v0, v4, :cond_9

    .line 1028
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1029
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_d

    .line 919
    :pswitch_0
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, "dcs":Ljava/lang/String;
    const-string v0, "$q"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "\'"

    const-string v6, "\u001b\\"

    if-eqz v0, :cond_1

    .line 922
    const-string v0, "$q\"p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const-string v0, "64;1\"p"

    .line 925
    .local v0, "csiString":Ljava/lang/String;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001bP1$r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 926
    .end local v0    # "csiString":Ljava/lang/String;
    goto/16 :goto_c

    .line 927
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized DECRQSS string: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 929
    :cond_1
    const-string v0, "+q"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 967
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_0
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    .line 968
    .local v11, "part":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr v0, v7

    const-string v12, "TerminalEmulator"

    if-nez v0, :cond_7

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v0

    .line 971
    .local v13, "transBuffer":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v14, v0, :cond_2

    .line 973
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v8

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    long-to-int v0, v7

    int-to-char v0, v0

    .line 977
    .local v0, "c":C
    nop

    .line 978
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 974
    .end local v0    # "c":C
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    .line 975
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_2
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid device termcap/terminfo encoded name \""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "\""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v12, v8, v0}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    nop

    .line 971
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v14, v14, 0x2

    move-object/from16 v8, v16

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v8

    .line 981
    .end local v14    # "i":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "trans":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v14, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto :goto_4

    :sswitch_0
    const-string v7, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    goto :goto_5

    :sswitch_1
    const-string v7, "TN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto :goto_5

    :sswitch_2
    const-string v7, "Co"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_5

    :sswitch_3
    const-string v7, "colors"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v14

    goto :goto_5

    :goto_4
    move v7, v8

    :goto_5
    packed-switch v7, :pswitch_data_1

    .line 993
    invoke-direct {v1, v14}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v7

    const/16 v15, 0x20

    .line 994
    invoke-direct {v1, v15}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v15

    .line 993
    invoke-static {v0, v7, v15}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    .local v7, "responseValue":Ljava/lang/String;
    goto :goto_6

    .line 990
    .end local v7    # "responseValue":Ljava/lang/String;
    :pswitch_1
    const-string v7, "xterm"

    .line 991
    .restart local v7    # "responseValue":Ljava/lang/String;
    goto :goto_6

    .line 986
    .end local v7    # "responseValue":Ljava/lang/String;
    :pswitch_2
    const-string v7, "256"

    .line 987
    .restart local v7    # "responseValue":Ljava/lang/String;
    nop

    .line 997
    :goto_6
    if-nez v7, :cond_5

    .line 998
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :cond_4
    goto :goto_7

    :sswitch_4
    const-string v15, "&8"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v8, v14

    goto :goto_7

    :sswitch_5
    const-string v14, "%1"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v8, v3

    :goto_7
    packed-switch v8, :pswitch_data_2

    .line 1003
    iget-object v8, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unhandled termcap/terminfo name: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v12, v14}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1001
    :pswitch_3
    nop

    .line 1006
    :goto_8
    iget-object v8, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u001bP0+r"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 1008
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .local v8, "hexEncoded":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_6

    .line 1010
    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v3

    const-string v14, "%02X"

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    goto :goto_9

    .line 1012
    .end local v12    # "j":I
    :cond_6
    iget-object v12, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u001bP1+r"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1014
    .end local v0    # "trans":Ljava/lang/String;
    .end local v7    # "responseValue":Ljava/lang/String;
    .end local v8    # "hexEncoded":Ljava/lang/StringBuilder;
    .end local v13    # "transBuffer":Ljava/lang/StringBuilder;
    :goto_a
    goto :goto_b

    .line 1015
    :cond_7
    move-object/from16 v16, v8

    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid device termcap/terminfo name of odd length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v12, v7}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .end local v11    # "part":Ljava/lang/String;
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 1022
    :cond_8
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 1024
    .end local v4    # "dcs":Ljava/lang/String;
    goto :goto_d

    .line 1031
    :cond_9
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1032
    iget v0, v1, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1035
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x50c14290 -> :sswitch_3
        0x88c -> :sswitch_2
        0xa7a -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x4ac -> :sswitch_5
        0x4d2 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private doEsc(I)V
    .locals 20
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1405
    move-object/from16 v0, p0

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1492
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1440
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1441
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1442
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1443
    invoke-direct {v0, v3, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1444
    goto/16 :goto_0

    .line 1489
    :sswitch_1
    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1490
    goto/16 :goto_0

    .line 1482
    :sswitch_2
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1483
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1484
    goto/16 :goto_0

    .line 1476
    :sswitch_3
    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1477
    goto/16 :goto_0

    .line 1472
    :sswitch_4
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1473
    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1474
    goto/16 :goto_0

    .line 1461
    :sswitch_5
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v1, v7, :cond_0

    .line 1462
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v8, v1, v10

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v7, 0x1

    sub-int v9, v1, v2

    add-int/lit8 v11, v7, 0x1

    move v6, v10

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1463
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1465
    :cond_0
    sub-int/2addr v1, v4

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1467
    goto/16 :goto_0

    .line 1456
    :sswitch_6
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v4, v1, v2

    .line 1457
    goto/16 :goto_0

    .line 1453
    :sswitch_7
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v4

    invoke-direct {v0, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1454
    goto/16 :goto_0

    .line 1449
    :sswitch_8
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_1
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 1451
    goto/16 :goto_0

    .line 1446
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 1447
    goto/16 :goto_0

    .line 1486
    :sswitch_a
    invoke-direct {v0, v1, v3}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1487
    goto/16 :goto_0

    .line 1479
    :sswitch_b
    invoke-direct {v0, v1, v4}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1480
    goto/16 :goto_0

    .line 1431
    :sswitch_c
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_2

    .line 1432
    add-int/2addr v1, v4

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1434
    :cond_2
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v11

    .line 1435
    .local v1, "rows":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v2, v10

    add-int/lit8 v8, v2, -0x1

    move v7, v11

    move v9, v1

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1436
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v13, v2, -0x1

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v2, v4, v3}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1438
    .end local v1    # "rows":I
    goto :goto_0

    .line 1428
    :sswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1429
    goto :goto_0

    .line 1425
    :sswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1426
    goto :goto_0

    .line 1416
    :sswitch_f
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v1, v6, :cond_3

    .line 1417
    sub-int/2addr v1, v4

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1419
    :cond_3
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v11

    .line 1420
    .restart local v1    # "rows":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v6

    add-int/lit8 v8, v2, -0x1

    add-int/lit8 v10, v6, 0x1

    move v7, v11

    move v9, v1

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1421
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v2, v4, v3}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1423
    .end local v1    # "rows":I
    goto :goto_0

    .line 1470
    :sswitch_10
    goto :goto_0

    .line 1413
    :sswitch_11
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1414
    goto :goto_0

    .line 1410
    :sswitch_12
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1411
    goto :goto_0

    .line 1407
    :sswitch_13
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1408
    nop

    .line 1495
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_13
        0x28 -> :sswitch_12
        0x29 -> :sswitch_11
        0x30 -> :sswitch_10
        0x36 -> :sswitch_f
        0x37 -> :sswitch_e
        0x38 -> :sswitch_d
        0x39 -> :sswitch_c
        0x3d -> :sswitch_b
        0x3e -> :sswitch_a
        0x44 -> :sswitch_9
        0x45 -> :sswitch_8
        0x46 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4d -> :sswitch_5
        0x4e -> :sswitch_10
        0x50 -> :sswitch_4
        0x5b -> :sswitch_3
        0x5d -> :sswitch_2
        0x5f -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private doEscPound(I)V
    .locals 8
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1393
    packed-switch p1, :pswitch_data_0

    .line 1398
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0

    .line 1395
    :pswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1396
    nop

    .line 1401
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method private doLinefeed()V
    .locals 5

    .line 1371
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1372
    .local v3, "belowScrollingRegion":Z
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 1373
    .local v4, "newCursorRow":I
    if-eqz v3, :cond_1

    .line 1375
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 1376
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto :goto_1

    .line 1379
    :cond_1
    if-ne v4, v1, :cond_2

    .line 1380
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1381
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v4, v0, -0x1

    .line 1383
    :cond_2
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1385
    :cond_3
    :goto_1
    return-void
.end method

.method private doOsc(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1982
    sparse-switch p1, :sswitch_data_0

    .line 1990
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    goto :goto_0

    .line 1987
    :sswitch_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1988
    goto :goto_0

    .line 1984
    :sswitch_1
    const-string v0, "\u0007"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    .line 1985
    nop

    .line 1993
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private doOscEsc(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1996
    packed-switch p1, :pswitch_data_0

    .line 2003
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 2004
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 2005
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1998
    :pswitch_0
    const-string v0, "\u001b\\"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    .line 1999
    nop

    .line 2008
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .locals 22
    .param p1, "bellOrStringTerminator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bellOrStringTerminator"
        }
    .end annotation

    .line 2012
    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "%04x"

    const/4 v0, -0x1

    .line 2013
    .local v0, "value":I
    const-string v4, ""

    .line 2015
    .local v4, "textParameter":Ljava/lang/String;
    const/4 v5, 0x0

    move/from16 v21, v5

    move v5, v0

    move/from16 v0, v21

    .local v0, "mOSCArgTokenizerIndex":I
    .local v5, "value":I
    :goto_0
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/16 v9, 0x3b

    const/4 v10, 0x0

    if-ge v0, v6, :cond_3

    .line 2016
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2017
    .local v6, "b":C
    if-ne v6, v9, :cond_0

    .line 2018
    iget-object v11, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2019
    goto :goto_2

    .line 2020
    :cond_0
    if-lt v6, v8, :cond_2

    if-gt v6, v7, :cond_2

    .line 2021
    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v10, v5, 0xa

    :goto_1
    add-int/lit8 v7, v6, -0x30

    add-int v5, v10, v7

    .line 2015
    .end local v6    # "b":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2023
    .restart local v6    # "b":C
    :cond_2
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2024
    return-void

    .line 2028
    .end local v0    # "mOSCArgTokenizerIndex":I
    .end local v6    # "b":C
    :cond_3
    :goto_2
    const/16 v6, 0xff

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 2149
    move-object/from16 v11, p1

    move/from16 v20, v5

    invoke-direct {v1, v5}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_13

    .line 2147
    :sswitch_0
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2143
    :sswitch_1
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit8 v2, v5, -0x6e

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2144
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2145
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2118
    :sswitch_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2119
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2120
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2122
    :cond_4
    const/4 v0, 0x0

    .line 2123
    .local v0, "lastIndex":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 2124
    .end local v0    # "lastIndex":I
    .local v2, "lastIndex":I
    .local v3, "charIndex":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_5

    move v0, v11

    goto :goto_4

    :cond_5
    move v0, v10

    :goto_4
    move v6, v0

    .line 2125
    .local v6, "endOfInput":Z
    if-nez v6, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_8

    .line 2127
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2128
    .local v0, "colorToReset":I
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v7, v0}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2129
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v7}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2130
    if-eqz v6, :cond_7

    .line 2139
    .end local v0    # "colorToReset":I
    .end local v2    # "lastIndex":I
    .end local v3    # "charIndex":I
    .end local v6    # "endOfInput":Z
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2131
    .restart local v0    # "colorToReset":I
    .restart local v2    # "lastIndex":I
    .restart local v3    # "charIndex":I
    .restart local v6    # "endOfInput":Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 2132
    move v0, v3

    .line 2135
    .end local v2    # "lastIndex":I
    .local v0, "lastIndex":I
    move v2, v0

    goto :goto_5

    .line 2133
    .end local v0    # "lastIndex":I
    .restart local v2    # "lastIndex":I
    :catch_0
    move-exception v0

    .line 2123
    .end local v6    # "endOfInput":Z
    :cond_8
    :goto_5
    add-int/2addr v3, v11

    goto :goto_3

    .line 2105
    .end local v2    # "lastIndex":I
    .end local v3    # "charIndex":I
    :sswitch_3
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 2107
    .local v2, "startIndex":I
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2108
    .local v0, "clipboardText":Ljava/lang/String;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->onCopyTextToClipboard(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2111
    .end local v0    # "clipboardText":Ljava/lang/String;
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2109
    :catch_1
    move-exception v0

    .line 2110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSC Manipulate selection, invalid string \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TerminalEmulator"

    invoke-static {v3, v7, v6}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    .end local v0    # "e":Ljava/lang/Exception;
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2075
    .end local v2    # "startIndex":I
    :sswitch_4
    add-int/lit8 v0, v5, -0xa

    add-int/lit16 v0, v0, 0x100

    .line 2076
    .local v0, "specialIndex":I
    const/4 v7, 0x0

    .line 2077
    .local v7, "lastSemiIndex":I
    const/4 v8, 0x0

    move v12, v8

    move v8, v7

    move v7, v0

    .line 2078
    .end local v0    # "specialIndex":I
    .local v7, "specialIndex":I
    .local v8, "lastSemiIndex":I
    .local v12, "charIndex":I
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v12, v0, :cond_9

    move v0, v11

    goto :goto_7

    :cond_9
    move v0, v10

    :goto_7
    move v13, v0

    .line 2079
    .local v13, "endOfInput":Z
    if-nez v13, :cond_b

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v17, v10

    goto/16 :goto_c

    .line 2081
    :cond_b
    :goto_8
    :try_start_2
    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "colorSpec":Ljava/lang/String;
    const-string v14, "?"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2084
    iget-object v14, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v14, v14, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v14, v14, v7

    .line 2085
    .local v14, "rgb":I
    const/high16 v15, 0xff0000

    and-int/2addr v15, v14

    shr-int/lit8 v15, v15, 0x10

    const v16, 0xffff

    mul-int v15, v15, v16

    div-int/2addr v15, v6

    .line 2086
    .local v15, "r":I
    const v17, 0xff00

    and-int v17, v14, v17

    shr-int/lit8 v17, v17, 0x8

    mul-int v9, v17, v16

    div-int/2addr v9, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    .line 2087
    .local v9, "g":I
    and-int/lit16 v10, v14, 0xff

    mul-int v10, v10, v16

    :try_start_3
    div-int/2addr v10, v6

    .line 2088
    .local v10, "b":I
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v18, v8

    .end local v8    # "lastSemiIndex":I
    .local v18, "lastSemiIndex":I
    :try_start_4
    const-string v8, "\u001b]"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";rgb:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v20, v5

    move/from16 v19, v14

    const/4 v14, 0x1

    .end local v5    # "value":I
    .end local v14    # "rgb":I
    .local v19, "rgb":I
    .local v20, "value":I
    :try_start_5
    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v17, 0x0

    :try_start_6
    aput-object v14, v5, v17
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-static {v11, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    const/16 v17, 0x0

    :try_start_8
    aput-object v11, v14, v17
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-static {v8, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    .line 2089
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    const/16 v17, 0x0

    :try_start_a
    aput-object v11, v14, v17

    invoke-static {v8, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v11, p1

    :try_start_b
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2088
    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2090
    .end local v9    # "g":I
    .end local v10    # "b":I
    .end local v15    # "r":I
    .end local v19    # "rgb":I
    goto :goto_9

    .line 2098
    .end local v0    # "colorSpec":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v11, p1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v11, p1

    const/16 v17, 0x0

    goto :goto_b

    .end local v20    # "value":I
    .restart local v5    # "value":I
    :catch_4
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v20, v5

    const/16 v17, 0x0

    .end local v5    # "value":I
    .restart local v20    # "value":I
    goto :goto_b

    .end local v18    # "lastSemiIndex":I
    .end local v20    # "value":I
    .restart local v5    # "value":I
    .restart local v8    # "lastSemiIndex":I
    :catch_5
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v18, v8

    const/16 v17, 0x0

    goto :goto_b

    .line 2091
    .restart local v0    # "colorSpec":Ljava/lang/String;
    :cond_c
    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v18, v8

    move/from16 v17, v10

    .end local v5    # "value":I
    .end local v8    # "lastSemiIndex":I
    .restart local v18    # "lastSemiIndex":I
    .restart local v20    # "value":I
    iget-object v5, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v5, v7, v0}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 2092
    iget-object v5, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2094
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 2095
    if-nez v13, :cond_d

    const/16 v5, 0x102

    if-gt v7, v5, :cond_d

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6

    if-lt v12, v5, :cond_e

    :cond_d
    goto :goto_a

    .line 2097
    :cond_e
    move v0, v12

    .line 2100
    .end local v18    # "lastSemiIndex":I
    .local v0, "lastSemiIndex":I
    move v8, v0

    goto :goto_c

    .line 2096
    .local v0, "colorSpec":Ljava/lang/String;
    .restart local v18    # "lastSemiIndex":I
    :goto_a
    nop

    .line 2103
    .end local v0    # "colorSpec":Ljava/lang/String;
    .end local v12    # "charIndex":I
    .end local v13    # "endOfInput":Z
    move/from16 v5, v20

    goto/16 :goto_13

    .line 2098
    .restart local v12    # "charIndex":I
    .restart local v13    # "endOfInput":Z
    :catch_6
    move-exception v0

    goto :goto_b

    .end local v18    # "lastSemiIndex":I
    .end local v20    # "value":I
    .restart local v5    # "value":I
    .restart local v8    # "lastSemiIndex":I
    :catch_7
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v18, v8

    move/from16 v17, v10

    .end local v5    # "value":I
    .end local v8    # "lastSemiIndex":I
    .restart local v18    # "lastSemiIndex":I
    .restart local v20    # "value":I
    :goto_b
    move/from16 v8, v18

    .line 2077
    .end local v13    # "endOfInput":Z
    .end local v18    # "lastSemiIndex":I
    .restart local v8    # "lastSemiIndex":I
    :goto_c
    const/4 v14, 0x1

    add-int/2addr v12, v14

    move v11, v14

    move/from16 v10, v17

    move/from16 v5, v20

    const/16 v6, 0xff

    const/16 v9, 0x3b

    goto/16 :goto_6

    .line 2042
    .end local v7    # "specialIndex":I
    .end local v8    # "lastSemiIndex":I
    .end local v12    # "charIndex":I
    .end local v20    # "value":I
    .restart local v5    # "value":I
    :sswitch_5
    move/from16 v20, v5

    move/from16 v17, v10

    move v14, v11

    move-object/from16 v11, p1

    .end local v5    # "value":I
    .restart local v20    # "value":I
    const/4 v0, -0x1

    .line 2043
    .local v0, "colorIndex":I
    const/4 v2, -0x1

    .line 2044
    .local v2, "parsingPairStart":I
    const/4 v3, 0x0

    .line 2045
    .local v3, "i":I
    :goto_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_f

    move v5, v14

    goto :goto_e

    :cond_f
    move/from16 v5, v17

    .line 2046
    .local v5, "endOfInput":Z
    :goto_e
    if-eqz v5, :cond_10

    const/16 v6, 0x3b

    goto :goto_f

    :cond_10
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2047
    .local v6, "b":C
    :goto_f
    const/16 v9, 0x3b

    if-ne v6, v9, :cond_14

    .line 2048
    if-gez v2, :cond_11

    .line 2049
    add-int/lit8 v2, v3, 0x1

    const/16 v10, 0xff

    goto :goto_12

    .line 2051
    :cond_11
    if-ltz v0, :cond_13

    const/16 v10, 0xff

    if-le v0, v10, :cond_12

    goto :goto_10

    .line 2055
    :cond_12
    iget-object v12, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 2056
    iget-object v12, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v12}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2057
    const/4 v0, -0x1

    .line 2058
    const/4 v2, -0x1

    goto :goto_12

    .line 2052
    :cond_13
    :goto_10
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2053
    return-void

    .line 2061
    :cond_14
    const/16 v10, 0xff

    if-ltz v2, :cond_15

    goto :goto_12

    .line 2063
    :cond_15
    if-gez v2, :cond_18

    if-lt v6, v8, :cond_18

    if-gt v6, v7, :cond_18

    .line 2064
    if-gez v0, :cond_16

    move/from16 v12, v17

    goto :goto_11

    :cond_16
    mul-int/lit8 v12, v0, 0xa

    :goto_11
    add-int/lit8 v13, v6, -0x30

    add-int/2addr v12, v13

    move v0, v12

    .line 2069
    :goto_12
    if-eqz v5, :cond_17

    .line 2071
    .end local v3    # "i":I
    .end local v5    # "endOfInput":Z
    .end local v6    # "b":C
    move/from16 v5, v20

    goto :goto_13

    .line 2044
    .restart local v3    # "i":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2066
    .restart local v5    # "endOfInput":Z
    .restart local v6    # "b":C
    :cond_18
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2067
    return-void

    .line 2032
    .end local v0    # "colorIndex":I
    .end local v2    # "parsingPairStart":I
    .end local v3    # "i":I
    .end local v6    # "b":C
    .end local v20    # "value":I
    .local v5, "value":I
    :sswitch_6
    move-object/from16 v11, p1

    move/from16 v20, v5

    .end local v5    # "value":I
    .restart local v20    # "value":I
    invoke-direct {v1, v4}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    .line 2033
    nop

    .line 2152
    .end local v20    # "value":I
    .restart local v5    # "value":I
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2153
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0x34 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method private doSetMode(Z)V
    .locals 1
    .param p1, "newValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .line 2169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 2170
    .local v0, "modeBit":I
    sparse-switch v0, :sswitch_data_0

    .line 2183
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 2181
    :sswitch_0
    goto :goto_0

    .line 2175
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 2177
    goto :goto_0

    .line 2172
    :sswitch_2
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2173
    nop

    .line 2186
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x14 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private emitCodePoint(I)V
    .locals 20
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codePoint"
        }
    .end annotation

    .line 2346
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 2347
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v2, :cond_1

    .line 2349
    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 2447
    :sswitch_0
    const/16 v1, 0xb7

    .end local p1    # "codePoint":I
    .local v1, "codePoint":I
    goto/16 :goto_1

    .line 2444
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1
    const/16 v1, 0xa3

    .line 2445
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2441
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_2
    const/16 v1, 0x2260

    .line 2442
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2438
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_3
    const/16 v1, 0x3c0

    .line 2439
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2435
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_4
    const/16 v1, 0x2265

    .line 2436
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2432
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_5
    const/16 v1, 0x2264

    .line 2433
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2429
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_6
    const/16 v1, 0x2502

    .line 2430
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2426
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_7
    const/16 v1, 0x252c

    .line 2427
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2423
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_8
    const/16 v1, 0x2534

    .line 2424
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2420
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_9
    const/16 v1, 0x2524

    .line 2421
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2417
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_a
    const/16 v1, 0x251c

    .line 2418
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2414
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_b
    const/16 v1, 0x23bd

    .line 2415
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2411
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_c
    const/16 v1, 0x23bc

    .line 2412
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2408
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_d
    const/16 v1, 0x2500

    .line 2409
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2405
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_e
    const/16 v1, 0x23bb

    .line 2406
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2402
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_f
    const/16 v1, 0x23ba

    .line 2403
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2399
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_10
    const/16 v1, 0x253c

    .line 2400
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2396
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_11
    const/16 v1, 0x2514

    .line 2397
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2393
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_12
    const/16 v1, 0x250c

    .line 2394
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2390
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_13
    const/16 v1, 0x2510

    .line 2391
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2387
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_14
    const/16 v1, 0x2518

    .line 2388
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2384
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_15
    const/16 v1, 0x240b

    .line 2385
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2381
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_16
    const/16 v1, 0xa

    .line 2382
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2378
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_17
    const/16 v1, 0xb1

    .line 2379
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2375
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_18
    const/16 v1, 0xb0

    .line 2376
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2372
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_19
    const/16 v1, 0x240a

    .line 2373
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2369
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1a
    const/16 v1, 0xd

    .line 2370
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2366
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1b
    const/16 v1, 0x240c

    .line 2367
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2363
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1c
    const/16 v1, 0x2409

    .line 2364
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2360
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1d
    const/16 v1, 0x2592

    .line 2361
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2354
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1e
    const/16 v1, 0x25c6

    .line 2355
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2351
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1f
    const/16 v1, 0x20

    .line 2352
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2357
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_20
    const/16 v1, 0x2588

    .line 2452
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    :cond_1
    :goto_1
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v8

    .line 2453
    .local v8, "autoWrap":Z
    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v9

    .line 2454
    .local v9, "displayWidth":I
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    const/4 v11, 0x0

    if-ne v2, v3, :cond_2

    move v2, v10

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    move v12, v2

    .line 2456
    .local v12, "cursorInLastColumn":Z
    const/4 v2, 0x2

    if-eqz v8, :cond_6

    .line 2457
    if-eqz v12, :cond_7

    iget-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v3, :cond_3

    if-eq v9, v10, :cond_4

    :cond_3
    if-ne v9, v2, :cond_7

    .line 2458
    :cond_4
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 2459
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2460
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ge v3, v4, :cond_5

    .line 2461
    add-int/2addr v2, v10

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_3

    .line 2463
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto :goto_3

    .line 2466
    :cond_6
    if-eqz v12, :cond_7

    if-ne v9, v2, :cond_7

    .line 2469
    return-void

    .line 2472
    :cond_7
    :goto_3
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v2, :cond_8

    if-lez v9, :cond_8

    .line 2474
    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v2, v14, v9

    .line 2475
    .local v2, "destCol":I
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v2, v3, :cond_8

    .line 2476
    iget-object v13, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v16, v3, v2

    const/16 v17, 0x1

    move v15, v4

    move/from16 v18, v2

    move/from16 v19, v4

    invoke-virtual/range {v13 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2479
    .end local v2    # "destCol":I
    :cond_8
    if-gtz v9, :cond_9

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v2, :cond_9

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v2, :cond_9

    move v2, v10

    goto :goto_4

    :cond_9
    move v2, v11

    :goto_4
    move v13, v2

    .line 2480
    .local v13, "offsetDueToCombiningChar":I
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v13

    .line 2486
    .local v2, "column":I
    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    move v14, v2

    .line 2487
    .end local v2    # "column":I
    .local v14, "column":I
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v3, v14

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 2489
    if-eqz v8, :cond_c

    if-lez v9, :cond_c

    .line 2490
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_b

    move v11, v10

    :cond_b
    iput-boolean v11, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2492
    :cond_c
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2493
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_20
        0x5f -> :sswitch_1f
        0x60 -> :sswitch_1e
        0x61 -> :sswitch_1d
        0x62 -> :sswitch_1c
        0x63 -> :sswitch_1b
        0x64 -> :sswitch_1a
        0x65 -> :sswitch_19
        0x66 -> :sswitch_18
        0x67 -> :sswitch_17
        0x68 -> :sswitch_16
        0x69 -> :sswitch_15
        0x6a -> :sswitch_14
        0x6b -> :sswitch_13
        0x6c -> :sswitch_12
        0x6d -> :sswitch_11
        0x6e -> :sswitch_10
        0x6f -> :sswitch_f
        0x70 -> :sswitch_e
        0x71 -> :sswitch_d
        0x72 -> :sswitch_c
        0x73 -> :sswitch_b
        0x74 -> :sswitch_a
        0x75 -> :sswitch_9
        0x76 -> :sswitch_8
        0x77 -> :sswitch_7
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private finishSequence()V
    .locals 1

    .line 2337
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2338
    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 2333
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2334
    return-void
.end method

.method private getArg(IIZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I
    .param p3, "treatZeroAsDefault"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "defaultValue",
            "treatZeroAsDefault"
        }
    .end annotation

    .line 2275
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v0, v0, p1

    .line 2276
    .local v0, "result":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 2277
    :cond_0
    move v0, p2

    .line 2279
    :cond_1
    return v0
.end method

.method private getArg0(I)I
    .locals 2
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 2267
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .locals 1
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 2271
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getStyle()J
    .locals 3

    .line 2164
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTerminalTranscriptRows(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "transcriptRows"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transcriptRows"
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 354
    :cond_1
    :goto_0
    const/16 v0, 0x7d0

    return v0
.end method

.method private isDecsetInternalBitSet(I)Z
    .locals 1
    .param p1, "bit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bit"
        }
    .end annotation

    .line 274
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorType"
        }
    .end annotation

    .line 2329
    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .locals 1
    .param p0, "decsetBit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decsetBit"
        }
    .end annotation

    .line 294
    sparse-switch p0, :sswitch_data_0

    .line 320
    const/4 v0, -0x1

    return v0

    .line 318
    :sswitch_0
    const/16 v0, 0x400

    return v0

    .line 316
    :sswitch_1
    const/16 v0, 0x200

    return v0

    .line 314
    :sswitch_2
    const/16 v0, 0x100

    return v0

    .line 312
    :sswitch_3
    const/16 v0, 0x80

    return v0

    .line 310
    :sswitch_4
    const/16 v0, 0x40

    return v0

    .line 308
    :sswitch_5
    const/16 v0, 0x800

    return v0

    .line 306
    :sswitch_6
    const/16 v0, 0x20

    return v0

    .line 304
    :sswitch_7
    const/16 v0, 0x10

    return v0

    .line 302
    :sswitch_8
    const/16 v0, 0x8

    return v0

    .line 300
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 298
    :sswitch_a
    const/4 v0, 0x2

    return v0

    .line 296
    :sswitch_b
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x19 -> :sswitch_7
        0x42 -> :sswitch_6
        0x45 -> :sswitch_5
        0x3e8 -> :sswitch_4
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_2
        0x3ee -> :sswitch_1
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method private nextTabStop(I)I
    .locals 2
    .param p1, "numTabs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numTabs"
        }
    .end annotation

    .line 1062
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 1062
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private parseArg(I)V
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2236
    const/16 v0, 0x30

    if-lt p1, v0, :cond_3

    const/16 v0, 0x39

    if-gt p1, v0, :cond_3

    .line 2237
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2238
    aget v2, v1, v0

    .line 2239
    .local v2, "oldValue":I
    add-int/lit8 v3, p1, -0x30

    .line 2241
    .local v3, "thisDigit":I
    if-ltz v2, :cond_0

    .line 2242
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v3

    .local v4, "value":I
    goto :goto_0

    .line 2244
    .end local v4    # "value":I
    :cond_0
    move v4, v3

    .line 2246
    .restart local v4    # "value":I
    :goto_0
    const/16 v5, 0x270f

    if-le v4, v5, :cond_1

    .line 2247
    const/16 v4, 0x270f

    .line 2248
    :cond_1
    aput v4, v1, v0

    .line 2250
    .end local v2    # "oldValue":I
    .end local v3    # "thisDigit":I
    .end local v4    # "value":I
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_3

    .line 2251
    :cond_3
    const/16 v0, 0x3b

    const/16 v1, 0x3a

    if-eq p1, v0, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 2262
    :cond_4
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_3

    .line 2252
    :cond_5
    :goto_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 2253
    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2254
    if-ne p1, v1, :cond_7

    .line 2255
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    shl-int v0, v2, v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    goto :goto_2

    .line 2258
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many parameters when in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2260
    :cond_7
    :goto_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 2264
    :goto_3
    return-void
.end method

.method private processByte(B)V
    .locals 10
    .param p1, "byteToProcess"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteToProcess"
        }
    .end annotation

    .line 503
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    const v1, 0xfffd

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_9

    .line 504
    and-int/lit16 v5, p1, 0xc0

    const/4 v6, 0x0

    const/16 v7, 0x80

    if-ne v5, v7, :cond_8

    .line 506
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v8, v5, 0x1

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v1, v5

    .line 507
    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez v0, :cond_d

    .line 508
    if-ne v8, v3, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    if-ne v8, v2, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    int-to-byte v0, v0

    .line 509
    .local v0, "firstByteMask":B
    aget-byte v1, v1, v6

    and-int/2addr v1, v0

    .line 510
    .local v1, "codePoint":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    iget-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ge v5, v8, :cond_2

    .line 511
    shl-int/lit8 v8, v1, 0x6

    iget-object v9, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v9, v9, v5

    and-int/lit8 v9, v9, 0x3f

    or-int v1, v8, v9

    .line 510
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 512
    .end local v5    # "i":I
    :cond_2
    const/16 v5, 0x7f

    if-gt v1, v5, :cond_3

    if-gt v8, v4, :cond_5

    :cond_3
    const/16 v4, 0x7ff

    if-ge v1, v4, :cond_4

    if-gt v8, v3, :cond_5

    :cond_4
    const v3, 0xffff

    if-ge v1, v3, :cond_6

    if-le v8, v2, :cond_6

    .line 515
    :cond_5
    const v1, 0xfffd

    .line 518
    :cond_6
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 520
    if-lt v1, v7, :cond_7

    const/16 v2, 0x9f

    if-gt v1, v2, :cond_7

    goto :goto_3

    .line 527
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 530
    :sswitch_0
    const v1, 0xfffd

    .line 532
    :goto_2
    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 534
    .end local v0    # "firstByteMask":B
    .end local v1    # "codePoint":I
    :goto_3
    goto :goto_5

    .line 537
    :cond_8
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 538
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 546
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_5

    .line 549
    :cond_9
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_a

    .line 550
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 551
    return-void

    .line 552
    :cond_a
    and-int/lit16 v0, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v0, v5, :cond_b

    .line 553
    iput-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 554
    :cond_b
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_c

    .line 555
    iput-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 556
    :cond_c
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_e

    .line 557
    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 563
    :goto_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    .line 565
    :cond_d
    :goto_5
    return-void

    .line 560
    :cond_e
    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 561
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeScreen()V
    .locals 12

    .line 414
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 415
    .local v0, "cursor":[I
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    :goto_0
    move v7, v1

    .line 416
    .local v7, "newTotalRows":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v11

    move-object v8, v0

    invoke-virtual/range {v4 .. v11}, Lcom/termux/terminal/TerminalBuffer;->resize(III[IJZ)V

    .line 417
    aget v1, v0, v2

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 418
    aget v1, v0, v3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 419
    return-void
.end method

.method private restoreCursor()V
    .locals 4

    .line 1513
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1514
    .local v0, "state":Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    :goto_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    invoke-direct {p0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1515
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 1516
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1517
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1518
    const/16 v1, 0xc

    .line 1519
    .local v1, "mask":I
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int v3, v1

    and-int/2addr v2, v3

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 1520
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 1521
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 1522
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 1523
    return-void
.end method

.method private saveCursor()V
    .locals 2

    .line 1499
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1500
    .local v0, "state":Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1501
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1502
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    .line 1503
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    .line 1504
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    .line 1505
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    .line 1506
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    .line 1507
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    .line 1508
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    .line 1509
    return-void
.end method

.method private scrollDownOneLine()V
    .locals 11

    .line 2204
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2205
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v9

    .line 2206
    .local v9, "currentStyle":J
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v5, :cond_1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_1

    .line 2208
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v2, v6, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v3, v1, v5

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v6

    add-int/lit8 v4, v1, -0x1

    move v1, v5

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2210
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v3, v0, -0x1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v4, v0, v2

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-wide v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 2214
    :goto_1
    return-void
.end method

.method private selectGraphicRendition()V
    .locals 10

    .line 1854
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1855
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v1, :cond_28

    .line 1857
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    shl-int v2, v3, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1858
    goto/16 :goto_6

    .line 1861
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    .line 1862
    .local v2, "code":I
    if-gez v2, :cond_3

    .line 1863
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lez v4, :cond_2

    .line 1864
    goto/16 :goto_6

    .line 1866
    :cond_2
    const/4 v2, 0x0

    .line 1869
    :cond_3
    const/16 v4, 0x101

    const/16 v5, 0x100

    if-nez v2, :cond_4

    .line 1870
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1871
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1872
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1873
    :cond_4
    if-ne v2, v3, :cond_5

    .line 1874
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1875
    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 1876
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v5

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1877
    :cond_6
    const/4 v7, 0x3

    if-ne v2, v7, :cond_7

    .line 1878
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v6

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1879
    :cond_7
    const/4 v7, 0x4

    if-ne v2, v7, :cond_a

    .line 1880
    add-int/lit8 v1, v0, 0x1

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v1, v4, :cond_9

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    add-int/lit8 v4, v0, 0x1

    shl-int v4, v3, v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_9

    .line 1882
    add-int/lit8 v0, v0, 0x1

    .line 1883
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    .line 1885
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1888
    :cond_8
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v7

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1891
    :cond_9
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v7

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1893
    :cond_a
    const/4 v7, 0x5

    const/16 v8, 0x8

    if-ne v2, v7, :cond_b

    .line 1894
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v8

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1895
    :cond_b
    const/4 v9, 0x7

    if-ne v2, v9, :cond_c

    .line 1896
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1897
    :cond_c
    if-ne v2, v8, :cond_d

    .line 1898
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1899
    :cond_d
    const/16 v9, 0x9

    if-ne v2, v9, :cond_e

    .line 1900
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1901
    :cond_e
    const/16 v9, 0xa

    if-ne v2, v9, :cond_f

    goto/16 :goto_6

    .line 1903
    :cond_f
    const/16 v9, 0xb

    if-ne v2, v9, :cond_10

    goto/16 :goto_6

    .line 1905
    :cond_10
    const/16 v9, 0x16

    if-ne v2, v9, :cond_11

    .line 1906
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v1, v1, -0x102

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1907
    :cond_11
    const/16 v9, 0x17

    if-ne v2, v9, :cond_12

    .line 1908
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1909
    :cond_12
    const/16 v9, 0x18

    if-ne v2, v9, :cond_13

    .line 1910
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1911
    :cond_13
    const/16 v9, 0x19

    if-ne v2, v9, :cond_14

    .line 1912
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1913
    :cond_14
    const/16 v9, 0x1b

    if-ne v2, v9, :cond_15

    .line 1914
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1915
    :cond_15
    const/16 v9, 0x1c

    if-ne v2, v9, :cond_16

    .line 1916
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1917
    :cond_16
    const/16 v9, 0x1d

    if-ne v2, v9, :cond_17

    .line 1918
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1919
    :cond_17
    const/16 v9, 0x1e

    if-lt v2, v9, :cond_18

    const/16 v9, 0x25

    if-gt v2, v9, :cond_18

    .line 1920
    add-int/lit8 v1, v2, -0x1e

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1921
    :cond_18
    const/16 v9, 0x26

    if-eq v2, v9, :cond_1f

    const/16 v9, 0x30

    if-eq v2, v9, :cond_1f

    const/16 v9, 0x3a

    if-ne v2, v9, :cond_19

    goto :goto_1

    .line 1962
    :cond_19
    const/16 v1, 0x27

    if-ne v2, v1, :cond_1a

    .line 1963
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1964
    :cond_1a
    const/16 v1, 0x28

    if-lt v2, v1, :cond_1b

    const/16 v1, 0x2f

    if-gt v2, v1, :cond_1b

    .line 1965
    add-int/lit8 v1, v2, -0x28

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1966
    :cond_1b
    const/16 v1, 0x31

    if-ne v2, v1, :cond_1c

    .line 1967
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1968
    :cond_1c
    const/16 v1, 0x3b

    if-ne v2, v1, :cond_1d

    .line 1969
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUnderlineColor:I

    goto/16 :goto_6

    .line 1970
    :cond_1d
    const/16 v1, 0x5a

    if-lt v2, v1, :cond_1e

    const/16 v1, 0x61

    if-gt v2, v1, :cond_1e

    .line 1971
    add-int/lit8 v1, v2, -0x5a

    add-int/2addr v1, v8

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1972
    :cond_1e
    const/16 v1, 0x64

    if-lt v2, v1, :cond_27

    const/16 v1, 0x6b

    if-gt v2, v1, :cond_27

    .line 1973
    add-int/lit8 v1, v2, -0x64

    add-int/2addr v1, v8

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1925
    :cond_1f
    :goto_1
    add-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-le v4, v5, :cond_20

    goto/16 :goto_6

    .line 1926
    :cond_20
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v8, v0, 0x1

    aget v4, v4, v8

    .line 1927
    .local v4, "firstArg":I
    if-ne v4, v6, :cond_24

    .line 1928
    add-int/lit8 v6, v0, 0x4

    if-le v6, v5, :cond_21

    .line 1929
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too few CSI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";2 RGB arguments"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TerminalEmulator"

    invoke-static {v1, v6, v5}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1931
    :cond_21
    add-int/lit8 v5, v0, 0x2

    invoke-direct {p0, v5, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    .line 1932
    .local v5, "red":I
    add-int/lit8 v6, v0, 0x3

    invoke-direct {p0, v6, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    .line 1933
    .local v6, "green":I
    add-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    .line 1935
    .local v1, "blue":I
    if-ltz v5, :cond_23

    if-ltz v6, :cond_23

    if-ltz v1, :cond_23

    const/16 v7, 0xff

    if-gt v5, v7, :cond_23

    if-gt v6, v7, :cond_23

    if-le v1, v7, :cond_22

    goto :goto_2

    .line 1938
    :cond_22
    const/high16 v7, -0x1000000

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v6, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v1

    .line 1939
    .local v7, "argbColor":I
    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    .line 1942
    :sswitch_0
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUnderlineColor:I

    goto :goto_3

    .line 1941
    :sswitch_1
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_3

    .line 1940
    :sswitch_2
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_3

    .line 1936
    .end local v7    # "argbColor":I
    :cond_23
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid RGB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1945
    :goto_3
    nop

    .end local v1    # "blue":I
    .end local v5    # "red":I
    .end local v6    # "green":I
    add-int/lit8 v0, v0, 0x4

    .line 1946
    goto :goto_5

    .line 1947
    :cond_24
    if-ne v4, v7, :cond_26

    .line 1948
    add-int/lit8 v5, v0, 0x2

    invoke-direct {p0, v5, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    .line 1949
    .local v1, "color":I
    add-int/lit8 v0, v0, 0x2

    .line 1950
    if-ltz v1, :cond_25

    const/16 v5, 0x103

    if-ge v1, v5, :cond_25

    .line 1951
    sparse-switch v2, :sswitch_data_1

    goto :goto_4

    .line 1954
    :sswitch_3
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUnderlineColor:I

    goto :goto_4

    .line 1953
    :sswitch_4
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_4

    .line 1952
    :sswitch_5
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1959
    .end local v1    # "color":I
    :cond_25
    :goto_4
    goto :goto_5

    .line 1960
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ISO-8613-3 SGR first argument: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1962
    .end local v4    # "firstArg":I
    :goto_5
    nop

    .line 1855
    .end local v2    # "code":I
    :cond_27
    :goto_6
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 1979
    .end local v0    # "i":I
    :cond_28
    return-void

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_2
        0x30 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x26 -> :sswitch_5
        0x30 -> :sswitch_4
        0x3a -> :sswitch_3
    .end sparse-switch
.end method

.method private setCursorCol(I)V
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .line 2501
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2503
    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .line 2507
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 2508
    return-void
.end method

.method private setCursorPosition(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
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

    .line 2193
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 2194
    .local v0, "originMode":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2195
    .local v2, "effectiveTopMargin":I
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 2196
    .local v3, "effectiveBottomMargin":I
    :goto_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 2197
    .local v1, "effectiveLeftMargin":I
    :cond_2
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 2198
    .local v4, "effectiveRightMargin":I
    :goto_2
    add-int v5, v2, p2

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2199
    .local v5, "newRow":I
    add-int v6, v1, p1

    add-int/lit8 v7, v4, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2200
    .local v6, "newCol":I
    invoke-direct {p0, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 2201
    return-void
.end method

.method private setCursorRow(I)V
    .locals 1
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 2496
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2498
    return-void
.end method

.method private setCursorRowCol(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "row",
            "col"
        }
    .end annotation

    .line 2512
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2513
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2514
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2515
    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .locals 3
    .param p1, "internalBit"    # I
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalBit",
            "set"
        }
    .end annotation

    .line 278
    if-eqz p2, :cond_1

    .line 280
    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    .line 281
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 282
    :cond_0
    if-ne p1, v1, :cond_1

    .line 283
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 286
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 287
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_1

    .line 289
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 291
    :goto_1
    return-void
.end method

.method private setDefaultTabStops()V
    .locals 3

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, v1, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newTitle"
        }
    .end annotation

    .line 2569
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2570
    .local v0, "oldTitle":Ljava/lang/String;
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2571
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2572
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .locals 3

    .line 1364
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1366
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1367
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    .line 1368
    return-void
.end method

.method private unimplementedSequence(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented sequence char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%04x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2293
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2294
    return-void
.end method

.method private unknownParameter(I)V
    .locals 2
    .param p1, "parameter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2303
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2304
    return-void
.end method

.method private unknownSequence(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sequence char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2298
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2299
    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "length"
        }
    .end annotation

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 499
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public clearScrollCounter()V
    .locals 1

    .line 2522
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2523
    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .locals 11
    .param p1, "setting"    # Z
    .param p2, "externalBit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "setting",
            "externalBit"
        }
    .end annotation

    .line 1184
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    .line 1185
    .local v0, "internalBit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1186
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1188
    :cond_0
    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 1278
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_1

    .line 1276
    :sswitch_0
    goto/16 :goto_1

    .line 1241
    :sswitch_1
    if-eqz p1, :cond_1

    .line 1242
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_1

    .line 1244
    :cond_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1245
    goto/16 :goto_1

    .line 1239
    :sswitch_2
    goto/16 :goto_1

    .line 1225
    :sswitch_3
    if-nez p1, :cond_9

    .line 1226
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1227
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto/16 :goto_1

    .line 1251
    :sswitch_4
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 1252
    .local v2, "newScreen":Lcom/termux/terminal/TerminalBuffer;
    :goto_0
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v2, v3, :cond_9

    .line 1253
    iget v3, v2, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v3, v4, :cond_3

    iget v3, v2, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v3, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 1254
    .local v1, "resized":Z
    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1255
    :cond_5
    iput-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 1256
    if-nez p1, :cond_6

    .line 1257
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1258
    .local v3, "col":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1259
    .local v4, "row":I
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1260
    if-eqz v1, :cond_6

    .line 1262
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1263
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1267
    .end local v3    # "col":I
    .end local v4    # "row":I
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1269
    :cond_7
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v3, :cond_8

    .line 1270
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v8, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v9

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1271
    .end local v1    # "resized":Z
    :cond_8
    goto :goto_1

    .line 1223
    .end local v2    # "newScreen":Lcom/termux/terminal/TerminalBuffer;
    :sswitch_5
    goto :goto_1

    .line 1217
    :sswitch_6
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v1, :cond_9

    .line 1218
    invoke-interface {v1, p1}, Lcom/termux/terminal/TerminalSessionClient;->onTerminalCursorStateChange(Z)V

    goto :goto_1

    .line 1210
    :sswitch_7
    if-eqz p1, :cond_9

    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_1

    .line 1208
    :sswitch_8
    goto :goto_1

    .line 1206
    :sswitch_9
    goto :goto_1

    .line 1196
    :sswitch_a
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1197
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1198
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1200
    const/16 v2, 0x800

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1202
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1203
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1204
    goto :goto_1

    .line 1190
    :sswitch_b
    nop

    .line 1281
    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xc -> :sswitch_6
        0x19 -> :sswitch_6
        0x28 -> :sswitch_5
        0x2d -> :sswitch_5
        0x2f -> :sswitch_4
        0x42 -> :sswitch_5
        0x45 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3f7 -> :sswitch_2
        0x40a -> :sswitch_2
        0x417 -> :sswitch_4
        0x418 -> :sswitch_1
        0x419 -> :sswitch_4
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCursorCol()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/termux/terminal/TerminalBuffer;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .locals 1

    .line 2518
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    .line 2559
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2564
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCursorEnabled()Z
    .locals 1

    .line 454
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isCursorKeysApplicationMode()Z
    .locals 1

    .line 478
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .locals 1

    .line 474
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .locals 1

    .line 483
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReverseVideo()Z
    .locals 1

    .line 448
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 2579
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2581
    const-string v0, "\r?\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2584
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 2585
    .local v0, "bracketed":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[200~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2586
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2587
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[201~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2588
    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .locals 28
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 569
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 570
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doApc(I)V

    .line 571
    return-void

    .line 572
    :cond_0
    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    .line 573
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doApcEscape(I)V

    .line 574
    return-void

    .line 577
    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 642
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 643
    const/4 v3, -0x1

    const/16 v6, 0x1000

    const/16 v7, 0x7e

    const/16 v8, 0x78

    const/16 v9, 0x70

    const/16 v10, 0x30

    const/16 v11, 0x20

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_0

    .line 906
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 632
    :sswitch_0
    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 634
    return-void

    .line 635
    :cond_2
    if-eq v2, v3, :cond_3

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto/16 :goto_1a

    .line 638
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    .line 640
    goto/16 :goto_1a

    .line 624
    :sswitch_1
    if-eqz v2, :cond_2f

    .line 626
    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 627
    const/16 v2, 0x7f

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    goto/16 :goto_1a

    .line 620
    :sswitch_2
    iput-boolean v5, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 621
    goto/16 :goto_1a

    .line 617
    :sswitch_3
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 618
    goto/16 :goto_1a

    .line 614
    :sswitch_4
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 615
    goto/16 :goto_1a

    .line 611
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 612
    goto/16 :goto_1a

    .line 606
    :sswitch_6
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v2

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 607
    goto/16 :goto_1a

    .line 587
    :sswitch_7
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v2, v3, :cond_5

    .line 589
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v2, v5

    .line 590
    .local v2, "previousRow":I
    if-ltz v2, :cond_4

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 591
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->clearLineWrap(I)V

    .line 592
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v5

    invoke-direct {v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 594
    .end local v2    # "previousRow":I
    :cond_4
    goto/16 :goto_1a

    .line 595
    :cond_5
    sub-int/2addr v3, v5

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 597
    goto/16 :goto_1a

    .line 581
    :sswitch_8
    if-ne v2, v3, :cond_6

    .line 582
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_1a

    .line 584
    :cond_6
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    .line 585
    goto/16 :goto_1a

    .line 579
    :sswitch_9
    goto/16 :goto_1a

    .line 664
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiUnsupportedParameterOrIntermediateByte(I)V

    .line 665
    goto/16 :goto_19

    .line 667
    :pswitch_2
    if-ne v1, v9, :cond_7

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_19

    .line 670
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 672
    goto/16 :goto_19

    .line 820
    :pswitch_3
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_8

    .line 821
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v3

    .line 822
    .local v2, "columnsAfterCursor":I
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 823
    .local v3, "columnsToInsert":I
    sub-int v12, v2, v3

    .line 824
    .local v12, "columnsToMove":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v7, 0x0

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v10, v6, v3

    const/4 v11, 0x0

    move v8, v12

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 825
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v5, v4, v3, v6}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 826
    .end local v2    # "columnsAfterCursor":I
    .end local v3    # "columnsToInsert":I
    .end local v12    # "columnsToMove":I
    goto/16 :goto_19

    :cond_8
    if-ne v1, v7, :cond_9

    .line 827
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v3

    .line 828
    .restart local v2    # "columnsAfterCursor":I
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 829
    .local v3, "columnsToDelete":I
    sub-int v12, v2, v3

    .line 830
    .restart local v12    # "columnsToMove":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v6, v10, v3

    const/4 v7, 0x0

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v11, 0x0

    move v8, v12

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 831
    .end local v2    # "columnsAfterCursor":I
    .end local v3    # "columnsToDelete":I
    .end local v12    # "columnsToMove":I
    goto/16 :goto_19

    .line 832
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 834
    goto/16 :goto_19

    .line 803
    :pswitch_4
    const/16 v2, 0x71

    if-ne v1, v2, :cond_d

    .line 805
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 806
    .local v2, "arg":I
    if-eqz v2, :cond_c

    if-ne v2, v12, :cond_a

    goto :goto_0

    .line 809
    :cond_a
    if-ne v2, v5, :cond_b

    .line 811
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 813
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_1

    .line 808
    :cond_c
    :goto_0
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 815
    .end local v2    # "arg":I
    :goto_1
    goto/16 :goto_19

    .line 816
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 818
    goto/16 :goto_19

    .line 897
    :pswitch_5
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 898
    .local v2, "attributeChangeExtent":I
    if-ne v1, v8, :cond_f

    if-ltz v2, :cond_f

    if-gt v2, v12, :cond_f

    .line 900
    if-ne v2, v12, :cond_e

    goto :goto_2

    :cond_e
    move v5, v4

    :goto_2
    invoke-direct {v0, v6, v5}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_19

    .line 902
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 904
    goto/16 :goto_19

    .line 869
    .end local v2    # "attributeChangeExtent":I
    :pswitch_6
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 870
    .local v2, "arg":I
    packed-switch v1, :pswitch_data_1

    .line 893
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 895
    goto/16 :goto_19

    .line 891
    :pswitch_8
    goto/16 :goto_19

    .line 872
    :pswitch_9
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 884
    :pswitch_a
    iput v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_3

    .line 880
    :pswitch_b
    iput v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 881
    goto :goto_3

    .line 876
    :pswitch_c
    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 877
    nop

    .line 887
    :goto_3
    goto/16 :goto_19

    .line 847
    .end local v2    # "arg":I
    :pswitch_d
    if-ne v1, v9, :cond_15

    .line 849
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 851
    .local v2, "mode":I
    const/16 v6, 0x2f

    if-eq v2, v6, :cond_13

    const/16 v6, 0x417

    if-eq v2, v6, :cond_13

    const/16 v6, 0x419

    if-ne v2, v6, :cond_10

    goto :goto_5

    .line 855
    :cond_10
    invoke-static {v2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v6

    .line 856
    .local v6, "internalBit":I
    if-eq v6, v3, :cond_12

    .line 857
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v5

    goto :goto_4

    :cond_11
    move v3, v12

    .local v3, "value":I
    :goto_4
    goto :goto_6

    .line 859
    .end local v3    # "value":I
    :cond_12
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got DECRQM for unrecognized private DEC mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TerminalEmulator"

    invoke-static {v3, v8, v7}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/4 v3, 0x0

    .restart local v3    # "value":I
    goto :goto_6

    .line 853
    .end local v3    # "value":I
    .end local v6    # "internalBit":I
    :cond_13
    :goto_5
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v3, v6, :cond_14

    move v3, v5

    goto :goto_6

    :cond_14
    move v3, v12

    .line 863
    .restart local v3    # "value":I
    :goto_6
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v5, "\u001b[?%d;%d$y"

    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 864
    .end local v2    # "mode":I
    .end local v3    # "value":I
    goto/16 :goto_19

    .line 865
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 867
    goto/16 :goto_19

    .line 844
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    .line 845
    goto/16 :goto_19

    .line 677
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    .line 678
    goto/16 :goto_19

    .line 841
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    .line 842
    goto/16 :goto_19

    .line 838
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    .line 839
    goto/16 :goto_19

    .line 836
    :pswitch_12
    goto/16 :goto_19

    .line 680
    :pswitch_13
    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v9

    .line 681
    .local v9, "originMode":Z
    if-eqz v9, :cond_16

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_7

    :cond_16
    move v10, v4

    .line 682
    .local v10, "effectiveTopMargin":I
    :goto_7
    if-eqz v9, :cond_17

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_8

    :cond_17
    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 683
    .local v13, "effectiveBottomMargin":I
    :goto_8
    if-eqz v9, :cond_18

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    goto :goto_9

    :cond_18
    move v14, v4

    .line 684
    .local v14, "effectiveLeftMargin":I
    :goto_9
    if-eqz v9, :cond_19

    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_a

    :cond_19
    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 685
    .local v15, "effectiveRightMargin":I
    :goto_a
    const/4 v6, 0x3

    packed-switch v1, :pswitch_data_3

    .line 799
    :pswitch_14
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .local v26, "effectiveRightMargin":I
    .local v27, "originMode":Z
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 801
    goto/16 :goto_19

    .line 715
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :pswitch_15
    if-eq v1, v8, :cond_1a

    move v2, v5

    goto :goto_b

    :cond_1a
    move v2, v4

    .line 716
    .local v2, "erase":Z
    :goto_b
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_1b

    move v6, v5

    goto :goto_c

    :cond_1b
    move v6, v4

    .line 718
    .local v6, "selective":Z
    :goto_c
    if-eqz v2, :cond_1c

    if-eqz v6, :cond_1c

    move v8, v5

    goto :goto_d

    :cond_1c
    move v8, v4

    .line 719
    .local v8, "keepVisualAttributes":Z
    :goto_d
    const/4 v12, 0x0

    .line 720
    .local v12, "argIndex":I
    if-eqz v2, :cond_1d

    move v3, v11

    goto :goto_e

    :cond_1d
    add-int/lit8 v16, v12, 0x1

    .end local v12    # "argIndex":I
    .local v16, "argIndex":I
    invoke-direct {v0, v12, v3, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    move/from16 v12, v16

    .line 723
    .end local v16    # "argIndex":I
    .local v3, "fillChar":I
    .restart local v12    # "argIndex":I
    :goto_e
    if-lt v3, v11, :cond_1e

    if-le v3, v7, :cond_1f

    :cond_1e
    const/16 v7, 0xa0

    if-lt v3, v7, :cond_25

    const/16 v7, 0xff

    if-gt v3, v7, :cond_25

    .line 726
    :cond_1f
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "argIndex":I
    .local v7, "argIndex":I
    invoke-direct {v0, v12, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v11

    add-int/2addr v11, v10

    add-int/lit8 v12, v13, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 727
    .local v11, "top":I
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "argIndex":I
    .restart local v12    # "argIndex":I
    invoke-direct {v0, v7, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    add-int/2addr v7, v14

    add-int/lit8 v4, v15, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 728
    .local v4, "left":I
    add-int/lit8 v7, v12, 0x1

    move/from16 v22, v2

    .end local v2    # "erase":Z
    .end local v12    # "argIndex":I
    .restart local v7    # "argIndex":I
    .local v22, "erase":Z
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v2, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 729
    .local v2, "bottom":I
    iget v12, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v7, v12, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    add-int/2addr v5, v14

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 730
    .local v5, "right":I
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v23

    .line 731
    .local v23, "style":J
    add-int/lit8 v12, v11, -0x1

    .local v12, "row":I
    :goto_f
    if-ge v12, v2, :cond_24

    .line 732
    add-int/lit8 v16, v4, -0x1

    move/from16 v25, v2

    move/from16 v2, v16

    .local v2, "col":I
    .local v25, "bottom":I
    :goto_10
    if-ge v2, v5, :cond_23

    .line 733
    if-eqz v6, :cond_20

    move/from16 v26, v4

    .end local v4    # "left":I
    .local v26, "left":I
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v4, v12, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_22

    goto :goto_11

    .end local v26    # "left":I
    .restart local v4    # "left":I
    :cond_20
    move/from16 v26, v4

    .line 734
    .end local v4    # "left":I
    .restart local v26    # "left":I
    :goto_11
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v8, :cond_21

    invoke-virtual {v4, v12, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v16

    move-wide/from16 v20, v16

    goto :goto_12

    :cond_21
    move-wide/from16 v20, v23

    :goto_12
    move-object/from16 v16, v4

    move/from16 v17, v2

    move/from16 v18, v12

    move/from16 v19, v3

    invoke-virtual/range {v16 .. v21}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 732
    :cond_22
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v26

    goto :goto_10

    .end local v26    # "left":I
    .restart local v4    # "left":I
    :cond_23
    move/from16 v26, v4

    .line 731
    .end local v2    # "col":I
    .end local v4    # "left":I
    .restart local v26    # "left":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v25

    goto :goto_f

    .end local v25    # "bottom":I
    .end local v26    # "left":I
    .local v2, "bottom":I
    .restart local v4    # "left":I
    :cond_24
    move/from16 v25, v2

    move/from16 v26, v4

    .line 735
    .end local v2    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v11    # "top":I
    .end local v12    # "row":I
    .end local v23    # "style":J
    goto/16 :goto_19

    .line 723
    .end local v7    # "argIndex":I
    .end local v22    # "erase":Z
    .local v2, "erase":Z
    .local v12, "argIndex":I
    :cond_25
    move/from16 v22, v2

    .end local v2    # "erase":Z
    .restart local v22    # "erase":Z
    goto/16 :goto_19

    .line 696
    .end local v3    # "fillChar":I
    .end local v6    # "selective":Z
    .end local v8    # "keepVisualAttributes":Z
    .end local v12    # "argIndex":I
    .end local v22    # "erase":Z
    :pswitch_16
    const/4 v2, 0x0

    invoke-direct {v0, v2, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    sub-int/2addr v3, v5

    add-int/2addr v3, v10

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 697
    .local v2, "topSource":I
    invoke-direct {v0, v5, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    sub-int/2addr v3, v5

    add-int/2addr v3, v14

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 699
    .local v3, "leftSource":I
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v4, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v10

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 700
    .local v4, "bottomSource":I
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v6, v7, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v14

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 702
    .local v6, "rightSource":I
    const/4 v7, 0x5

    invoke-direct {v0, v7, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v5

    add-int/2addr v7, v10

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 703
    .local v7, "destionationTop":I
    const/4 v8, 0x6

    invoke-direct {v0, v8, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    sub-int/2addr v8, v5

    add-int/2addr v8, v14

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 705
    .local v5, "destinationLeft":I
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v8, v7

    sub-int v11, v4, v2

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 706
    .local v8, "heightToCopy":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v11, v5

    sub-int v12, v6, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 707
    .local v11, "widthToCopy":I
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v16, v12

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v11

    move/from16 v20, v8

    move/from16 v21, v5

    move/from16 v22, v7

    invoke-virtual/range {v16 .. v22}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 708
    goto/16 :goto_19

    .line 741
    .end local v2    # "topSource":I
    .end local v3    # "leftSource":I
    .end local v4    # "bottomSource":I
    .end local v5    # "destinationLeft":I
    .end local v6    # "rightSource":I
    .end local v7    # "destionationTop":I
    .end local v8    # "heightToCopy":I
    .end local v11    # "widthToCopy":I
    :pswitch_17
    const/16 v3, 0x74

    if-ne v1, v3, :cond_26

    move v3, v5

    goto :goto_13

    :cond_26
    const/4 v3, 0x0

    .line 743
    .local v3, "reverse":Z
    :goto_13
    const/4 v4, 0x0

    invoke-direct {v0, v4, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v10

    .line 744
    .local v4, "top":I
    invoke-direct {v0, v5, v5, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v14

    .line 745
    .local v7, "left":I
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v8, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v11, v13, -0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v10

    .line 746
    .local v8, "bottom":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v6, v11, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v11, v15, -0x1

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v14

    .line 747
    .local v6, "right":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lt v11, v2, :cond_2b

    .line 748
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v12, v2

    if-lt v11, v12, :cond_27

    array-length v2, v2

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 749
    :cond_27
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_14
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v5, :cond_2a

    .line 750
    const/4 v5, 0x0

    .line 751
    .local v5, "bits":I
    const/4 v11, 0x1

    .line 752
    .local v11, "setOrClear":Z
    const/4 v12, 0x0

    invoke-direct {v0, v2, v12, v12}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    goto :goto_15

    .line 783
    :sswitch_a
    const/16 v5, 0x10

    .line 784
    const/4 v11, 0x0

    goto :goto_15

    .line 779
    :sswitch_b
    const/16 v5, 0x8

    .line 780
    const/4 v11, 0x0

    .line 781
    goto :goto_15

    .line 775
    :sswitch_c
    const/4 v5, 0x4

    .line 776
    const/4 v11, 0x0

    .line 777
    goto :goto_15

    .line 771
    :sswitch_d
    const/4 v5, 0x1

    .line 772
    const/4 v11, 0x0

    .line 773
    goto :goto_15

    .line 768
    :sswitch_e
    const/16 v5, 0x10

    .line 769
    goto :goto_15

    .line 765
    :sswitch_f
    const/16 v5, 0x8

    .line 766
    goto :goto_15

    .line 762
    :sswitch_10
    const/4 v5, 0x4

    .line 763
    goto :goto_15

    .line 759
    :sswitch_11
    const/4 v5, 0x1

    .line 760
    goto :goto_15

    .line 754
    :sswitch_12
    const/16 v5, 0x1d

    .line 756
    if-nez v3, :cond_28

    const/4 v11, 0x0

    .line 787
    :cond_28
    :goto_15
    if-eqz v3, :cond_29

    if-nez v11, :cond_29

    move/from16 v27, v9

    move/from16 v26, v15

    const/16 v9, 0x1000

    goto :goto_16

    .line 790
    :cond_29
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move/from16 v27, v9

    const/16 v9, 0x1000

    .end local v9    # "originMode":Z
    .restart local v27    # "originMode":Z
    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v19

    move/from16 v26, v15

    .end local v15    # "effectiveRightMargin":I
    .local v26, "effectiveRightMargin":I
    move-object v15, v12

    move/from16 v16, v5

    move/from16 v17, v11

    move/from16 v18, v3

    move/from16 v20, v14

    move/from16 v21, v26

    move/from16 v22, v4

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v6

    invoke-virtual/range {v15 .. v25}, Lcom/termux/terminal/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    .line 749
    .end local v5    # "bits":I
    .end local v11    # "setOrClear":Z
    :goto_16
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v26

    move/from16 v9, v27

    goto :goto_14

    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :cond_2a
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v2    # "i":I
    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .restart local v26    # "effectiveRightMargin":I
    .restart local v27    # "originMode":Z
    goto :goto_19

    .line 747
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :cond_2b
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .restart local v26    # "effectiveRightMargin":I
    .restart local v27    # "originMode":Z
    goto :goto_19

    .line 674
    .end local v3    # "reverse":Z
    .end local v4    # "top":I
    .end local v6    # "right":I
    .end local v7    # "left":I
    .end local v8    # "bottom":I
    .end local v10    # "effectiveTopMargin":I
    .end local v13    # "effectiveBottomMargin":I
    .end local v14    # "effectiveLeftMargin":I
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    .line 675
    goto :goto_19

    .line 660
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    .line 661
    goto :goto_19

    .line 657
    :pswitch_1a
    if-ne v1, v10, :cond_2c

    goto :goto_17

    :cond_2c
    const/4 v5, 0x0

    :goto_17
    iput-boolean v5, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 658
    goto :goto_19

    .line 654
    :pswitch_1b
    if-ne v1, v10, :cond_2d

    goto :goto_18

    :cond_2d
    const/4 v5, 0x0

    :goto_18
    iput-boolean v5, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 655
    goto :goto_19

    .line 651
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    .line 652
    goto :goto_19

    .line 648
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    .line 649
    goto :goto_19

    .line 645
    :pswitch_1e
    if-lt v1, v11, :cond_2e

    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 909
    :cond_2e
    :goto_19
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 912
    :cond_2f
    :goto_1a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_16
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x7 -> :sswitch_e
        0x16 -> :sswitch_d
        0x18 -> :sswitch_c
        0x19 -> :sswitch_b
        0x1b -> :sswitch_a
    .end sparse-switch
.end method

.method public reset()V
    .locals 4

    .line 2527
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    .line 2528
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2529
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2530
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2531
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2532
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2533
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2534
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2535
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2536
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x100

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2537
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x101

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2538
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2540
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 2541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2543
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2544
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2545
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 2547
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2548
    const/16 v2, 0x10

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2549
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2552
    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 2554
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2555
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2556
    return-void
.end method

.method public resize(IIII)V
    .locals 5
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "cellWidthPixels"    # I
    .param p4, "cellHeightPixels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "columns",
            "rows",
            "cellWidthPixels",
            "cellHeightPixels"
        }
    .end annotation

    .line 384
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    .line 385
    iput p4, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    .line 387
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v0, p2, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v1, p1, :cond_0

    .line 388
    return-void

    .line 389
    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    if-lt p2, v1, :cond_3

    .line 393
    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    .line 394
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 395
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 396
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 398
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, p1, :cond_2

    .line 399
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 400
    .local v0, "oldColumns":I
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 401
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 402
    .local v2, "oldTabStop":[Z
    new-array v3, p1, [Z

    iput-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 403
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 404
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 405
    .local v3, "toTransfer":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 407
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 410
    .end local v0    # "oldColumns":I
    .end local v2    # "oldTabStop":[Z
    .end local v3    # "toTransfer":I
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 411
    return-void

    .line 390
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", columns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMouseEvent(IIIZ)V
    .locals 8
    .param p1, "mouseButton"    # I
    .param p2, "column"    # I
    .param p3, "row"    # I
    .param p4, "pressed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mouseButton",
            "column",
            "row",
            "pressed"
        }
    .end annotation

    .line 363
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    .line 364
    :cond_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p2, v1, :cond_1

    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 365
    :cond_1
    if-ge p3, v0, :cond_2

    const/4 p3, 0x1

    .line 366
    :cond_2
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-le p3, v1, :cond_3

    iget p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 368
    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 370
    :cond_4
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x4d

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 371
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001b[<%d;%d;%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x6d

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 373
    :cond_6
    if-eqz p4, :cond_7

    move v1, p1

    goto :goto_1

    :cond_7
    move v1, v4

    :goto_1
    move p1, v1

    .line 375
    const/16 v1, 0xdf

    if-gt p2, v1, :cond_9

    if-le p3, v1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v5

    goto :goto_3

    :cond_9
    :goto_2
    move v1, v0

    .line 376
    .local v1, "out_of_bounds":Z
    :goto_3
    if-nez v1, :cond_a

    .line 377
    const/4 v6, 0x6

    new-array v6, v6, [B

    const/16 v7, 0x1b

    aput-byte v7, v6, v5

    const/16 v7, 0x5b

    aput-byte v7, v6, v0

    aput-byte v3, v6, v2

    add-int/lit8 v0, p1, 0x20

    int-to-byte v0, v0

    aput-byte v0, v6, v4

    const/4 v0, 0x4

    add-int/lit8 v2, p2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/4 v0, 0x5

    add-int/lit8 v2, p3, 0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    move-object v0, v6

    .line 378
    .local v0, "data":[B
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    .line 381
    .end local v0    # "data":[B
    .end local v1    # "out_of_bounds":Z
    :cond_a
    :goto_4
    return-void
.end method

.method public setCursorBlinkState(Z)V
    .locals 0
    .param p1, "cursorBlinkState"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursorBlinkState"
        }
    .end annotation

    .line 468
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    .line 469
    return-void
.end method

.method public setCursorBlinkingEnabled(Z)V
    .locals 0
    .param p1, "cursorBlinkingEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursorBlinkingEnabled"
        }
    .end annotation

    .line 464
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    .line 465
    return-void
.end method

.method public setCursorStyle()V
    .locals 2

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "cursorStyle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v1, :cond_0

    .line 439
    invoke-interface {v1}, Lcom/termux/terminal/TerminalSessionClient;->getTerminalCursorStyle()Ljava/lang/Integer;

    move-result-object v0

    .line 441
    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_1

    .line 442
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 445
    :goto_1
    return-void
.end method

.method public shouldCursorBeVisible()Z
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerminalEmulator[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margins={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 1
    .param p1, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 340
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 342
    return-void
.end method
