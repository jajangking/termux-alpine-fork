.class public final Lcom/termux/terminal/TerminalColors;
.super Ljava/lang/Object;
.source "TerminalColors.java"


# static fields
.field public static final COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;


# instance fields
.field public final mCurrentColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/termux/terminal/TerminalColorScheme;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColorScheme;-><init>()V

    sput-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x103

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    .line 19
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 20
    return-void
.end method

.method public static getPerceivedBrightnessOfColor(I)I
    .locals 8
    .param p0, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 88
    nop

    .line 90
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v0, v4

    .line 91
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 92
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 88
    return v0
.end method

.method static parse(Ljava/lang/String;)I
    .locals 16
    .param p0, "c"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 40
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 43
    .local v0, "skipInitial":I
    const/4 v3, 0x0

    .local v3, "skipBetween":I
    goto :goto_0

    .line 44
    .end local v0    # "skipInitial":I
    .end local v3    # "skipBetween":I
    :cond_0
    const-string v0, "rgb:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x4

    .line 47
    .restart local v0    # "skipInitial":I
    const/4 v3, 0x1

    .line 51
    .restart local v3    # "skipBetween":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    .line 52
    .local v4, "charsForColors":I
    rem-int/lit8 v5, v4, 0x3

    if-eqz v5, :cond_1

    return v2

    .line 53
    :cond_1
    div-int/lit8 v5, v4, 0x3

    .line 54
    .local v5, "componentLength":I
    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-int/lit8 v10, v5, 0x4

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 56
    .local v6, "mult":D
    move v8, v0

    .line 57
    .local v8, "currentPosition":I
    add-int v9, v8, v5

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "rString":Ljava/lang/String;
    add-int v10, v5, v3

    add-int/2addr v8, v10

    .line 59
    add-int v10, v8, v5

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "gString":Ljava/lang/String;
    add-int v11, v5, v3

    add-int/2addr v8, v11

    .line 61
    add-int v11, v8, v5

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, "bString":Ljava/lang/String;
    const/16 v12, 0x10

    invoke-static {v9, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v6

    double-to-int v13, v13

    .line 64
    .local v13, "r":I
    invoke-static {v10, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v6

    double-to-int v14, v14

    .line 65
    .local v14, "g":I
    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .end local v0    # "skipInitial":I
    .local v12, "skipInitial":I
    int-to-double v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 66
    .local v0, "b":I
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v13, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v14, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v0

    return v1

    .line 49
    .end local v0    # "b":I
    .end local v3    # "skipBetween":I
    .end local v4    # "charsForColors":I
    .end local v5    # "componentLength":I
    .end local v6    # "mult":D
    .end local v8    # "currentPosition":I
    .end local v9    # "rString":Ljava/lang/String;
    .end local v10    # "gString":Ljava/lang/String;
    .end local v11    # "bString":Ljava/lang/String;
    .end local v12    # "skipInitial":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    :cond_2
    return v2

    .line 67
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    return v2
.end method


# virtual methods
.method public reset()V
    .locals 4

    .line 29
    sget-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    iget-object v1, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/4 v2, 0x0

    const/16 v3, 0x103

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    return-void
.end method

.method public reset(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    sget-object v1, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    iget-object v1, v1, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 25
    return-void
.end method

.method public tryParseColor(ILjava/lang/String;)V
    .locals 2
    .param p1, "intoIndex"    # I
    .param p2, "textParameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intoIndex",
            "textParameter"
        }
    .end annotation

    .line 74
    invoke-static {p2}, Lcom/termux/terminal/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "c":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aput v0, v1, p1

    .line 76
    :cond_0
    return-void
.end method
