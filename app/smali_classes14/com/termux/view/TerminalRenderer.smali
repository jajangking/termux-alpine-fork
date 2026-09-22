.class public final Lcom/termux/view/TerminalRenderer;
.super Ljava/lang/Object;
.source "TerminalRenderer.java"


# instance fields
.field private final asciiMeasures:[F

.field private final mFontAscent:I

.field final mFontLineSpacing:I

.field final mFontLineSpacingAndAscent:I

.field final mFontWidth:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field final mTextSize:I

.field final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(ILandroid/graphics/Typeface;)V
    .locals 6
    .param p1, "textSize"    # I
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textSize",
            "typeface"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 34
    const/16 v1, 0x7f

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    .line 37
    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    .line 38
    iput-object p2, p0, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    .line 40
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    .line 46
    add-int/2addr v2, v3

    iput v2, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    .line 47
    const-string v2, "X"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 51
    int-to-char v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    iget-object v3, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    iget-object v5, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    aput v4, v3, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # [C
    .param p3, "palette"    # [I
    .param p4, "y"    # F
    .param p5, "startColumn"    # I
    .param p6, "runWidthColumns"    # I
    .param p7, "startCharIndex"    # I
    .param p8, "runWidthChars"    # I
    .param p9, "mes"    # F
    .param p10, "cursor"    # I
    .param p11, "cursorStyle"    # I
    .param p12, "textStyle"    # J
    .param p14, "reverseVideo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "text",
            "palette",
            "y",
            "startColumn",
            "runWidthColumns",
            "startCharIndex",
            "runWidthChars",
            "mes",
            "cursor",
            "cursorStyle",
            "textStyle",
            "reverseVideo"
        }
    .end annotation

    .line 162
    move-object/from16 v0, p0

    move/from16 v7, p6

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v1

    .line 163
    .local v1, "foreColor":I
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v10

    .line 164
    .local v10, "effect":I
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v2

    .line 165
    .local v2, "backColor":I
    and-int/lit8 v3, v10, 0x9

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v12, v3

    .line 166
    .local v12, "bold":Z
    and-int/lit8 v3, v10, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v13, v3

    .line 167
    .local v13, "underline":Z
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    move v14, v3

    .line 168
    .local v14, "italic":Z
    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    move v15, v3

    .line 169
    .local v15, "strikeThrough":Z
    and-int/lit16 v3, v10, 0x100

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    move/from16 v16, v3

    .line 171
    .local v16, "dim":Z
    const/high16 v6, -0x1000000

    and-int v3, v1, v6

    if-eq v3, v6, :cond_6

    .line 173
    if-eqz v12, :cond_5

    if-ltz v1, :cond_5

    const/16 v3, 0x8

    if-ge v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x8

    .line 174
    :cond_5
    aget v1, p3, v1

    .line 177
    :cond_6
    and-int v3, v2, v6

    if-eq v3, v6, :cond_7

    .line 178
    aget v2, p3, v2

    .line 182
    :cond_7
    and-int/lit8 v3, v10, 0x10

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    :cond_8
    xor-int v17, p14, v4

    .line 183
    .local v17, "reverseVideoHere":Z
    if-eqz v17, :cond_9

    .line 184
    move v3, v1

    .line 185
    .local v3, "tmp":I
    move v1, v2

    .line 186
    move v2, v3

    move v5, v1

    move v4, v2

    goto :goto_5

    .line 183
    .end local v3    # "tmp":I
    :cond_9
    move v5, v1

    move v4, v2

    .line 189
    .end local v1    # "foreColor":I
    .end local v2    # "backColor":I
    .local v4, "backColor":I
    .local v5, "foreColor":I
    :goto_5
    move/from16 v3, p5

    int-to-float v1, v3

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v1, v2

    .line 190
    .local v1, "left":F
    int-to-float v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    .line 192
    .local v6, "right":F
    div-float v19, p9, v2

    .line 193
    .end local p9    # "mes":F
    .local v19, "mes":F
    const/4 v2, 0x0

    .line 194
    .local v2, "savedMatrix":Z
    int-to-float v11, v7

    sub-float v11, v19, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move/from16 p9, v2

    .end local v2    # "savedMatrix":Z
    .local p9, "savedMatrix":Z
    float-to-double v2, v11

    const-wide v21, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v21

    if-lez v2, :cond_a

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 196
    int-to-float v2, v7

    div-float v2, v2, v19

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v11, p1

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 197
    int-to-float v2, v7

    div-float v2, v19, v2

    mul-float/2addr v1, v2

    .line 198
    int-to-float v2, v7

    div-float v2, v19, v2

    mul-float/2addr v6, v2

    .line 199
    const/4 v2, 0x1

    move/from16 v31, v1

    move/from16 v32, v2

    .end local p9    # "savedMatrix":Z
    .restart local v2    # "savedMatrix":Z
    goto :goto_6

    .line 194
    .end local v2    # "savedMatrix":Z
    .restart local p9    # "savedMatrix":Z
    :cond_a
    move-object/from16 v11, p1

    move/from16 v32, p9

    move/from16 v31, v1

    .line 202
    .end local v1    # "left":F
    .end local p9    # "savedMatrix":Z
    .local v31, "left":F
    .local v32, "savedMatrix":Z
    :goto_6
    const/16 v1, 0x101

    aget v1, p3, v1

    if-eq v4, v1, :cond_b

    .line 204
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    int-to-float v2, v2

    add-float v3, v1, v2

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move/from16 v2, v31

    move/from16 v33, v4

    .end local v4    # "backColor":I
    .local v33, "backColor":I
    move v4, v6

    move v7, v5

    .end local v5    # "foreColor":I
    .local v7, "foreColor":I
    move/from16 v5, p4

    move v11, v6

    const/high16 v18, -0x1000000

    .end local v6    # "right":F
    .local v11, "right":F
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 202
    .end local v7    # "foreColor":I
    .end local v11    # "right":F
    .end local v33    # "backColor":I
    .restart local v4    # "backColor":I
    .restart local v5    # "foreColor":I
    .restart local v6    # "right":F
    :cond_b
    move/from16 v33, v4

    move v7, v5

    move v11, v6

    const/high16 v18, -0x1000000

    .line 208
    .end local v4    # "backColor":I
    .end local v5    # "foreColor":I
    .end local v6    # "right":F
    .restart local v7    # "foreColor":I
    .restart local v11    # "right":F
    .restart local v33    # "backColor":I
    :goto_7
    if-eqz v8, :cond_e

    .line 209
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 211
    .local v1, "cursorHeight":F
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const/4 v4, 0x1

    if-ne v9, v4, :cond_c

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    move v8, v1

    goto :goto_8

    .line 212
    :cond_c
    const/4 v4, 0x2

    if-ne v9, v4, :cond_d

    float-to-double v4, v11

    sub-float v6, v11, v31

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v6, v6, v20

    float-to-double v8, v6

    div-double/2addr v8, v2

    sub-double/2addr v4, v8

    double-to-float v6, v4

    move v8, v1

    move v11, v6

    .end local v11    # "right":F
    .restart local v6    # "right":F
    goto :goto_8

    .end local v6    # "right":F
    .restart local v11    # "right":F
    :cond_d
    move v8, v1

    .line 213
    .end local v1    # "cursorHeight":F
    .local v8, "cursorHeight":F
    :goto_8
    sub-float v3, p4, v8

    iget-object v6, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v31

    move v4, v11

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v6, v11

    goto :goto_9

    .line 208
    .end local v8    # "cursorHeight":F
    :cond_e
    move v6, v11

    .line 216
    .end local v11    # "right":F
    .restart local v6    # "right":F
    :goto_9
    and-int/lit8 v1, v10, 0x20

    if-nez v1, :cond_11

    .line 217
    if-eqz v16, :cond_f

    .line 218
    shr-int/lit8 v1, v7, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 219
    .local v1, "red":I
    shr-int/lit8 v2, v7, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 220
    .local v2, "green":I
    and-int/lit16 v3, v7, 0xff

    .line 223
    .local v3, "blue":I
    mul-int/lit8 v4, v1, 0x2

    div-int/lit8 v4, v4, 0x3

    .line 224
    .end local v1    # "red":I
    .local v4, "red":I
    mul-int/lit8 v1, v2, 0x2

    div-int/lit8 v1, v1, 0x3

    .line 225
    .end local v2    # "green":I
    .local v1, "green":I
    mul-int/lit8 v2, v3, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 226
    .end local v3    # "blue":I
    .local v2, "blue":I
    shl-int/lit8 v3, v4, 0x10

    add-int v3, v3, v18

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v3, v5

    add-int v5, v3, v2

    .end local v7    # "foreColor":I
    .restart local v5    # "foreColor":I
    goto :goto_a

    .line 217
    .end local v1    # "green":I
    .end local v2    # "blue":I
    .end local v4    # "red":I
    .end local v5    # "foreColor":I
    .restart local v7    # "foreColor":I
    :cond_f
    move v5, v7

    .line 229
    .end local v7    # "foreColor":I
    .restart local v5    # "foreColor":I
    :goto_a
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 230
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 231
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v14, :cond_10

    const v2, -0x414ccccd    # -0.35f

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 232
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 233
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float v28, p4, v1

    const/16 v29, 0x0

    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move/from16 v23, p7

    move/from16 v24, p8

    move/from16 v25, p7

    move/from16 v26, p8

    move/from16 v27, v31

    move-object/from16 v30, v1

    invoke-virtual/range {v21 .. v30}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_c

    .line 216
    .end local v5    # "foreColor":I
    .restart local v7    # "foreColor":I
    :cond_11
    move v5, v7

    .line 239
    .end local v7    # "foreColor":I
    .restart local v5    # "foreColor":I
    :goto_c
    if-eqz v32, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    :cond_12
    return-void
.end method


# virtual methods
.method public getFontLineSpacing()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    return v0
.end method

.method public getFontWidth()F
    .locals 1

    .line 243
    iget v0, p0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    return v0
.end method

.method public final render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V
    .locals 60
    .param p1, "mEmulator"    # Lcom/termux/terminal/TerminalEmulator;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "topRow"    # I
    .param p4, "selectionY1"    # I
    .param p5, "selectionY2"    # I
    .param p6, "selectionX1"    # I
    .param p7, "selectionX2"    # I
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
            "mEmulator",
            "canvas",
            "topRow",
            "selectionY1",
            "selectionY2",
            "selectionX1",
            "selectionX2"
        }
    .end annotation

    .line 59
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->isReverseVideo()Z

    move-result v16

    .line 60
    .local v16, "reverseVideo":Z
    iget v0, v14, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v11, p3, v0

    .line 61
    .local v11, "endRow":I
    iget v9, v14, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 62
    .local v9, "columns":I
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorCol()I

    move-result v17

    .line 63
    .local v17, "cursorCol":I
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorRow()I

    move-result v8

    .line 64
    .local v8, "cursorRow":I
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->shouldCursorBeVisible()Z

    move-result v18

    .line 65
    .local v18, "cursorVisible":Z
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v7

    .line 66
    .local v7, "screen":Lcom/termux/terminal/TerminalBuffer;
    iget-object v0, v14, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v6, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    .line 67
    .local v6, "palette":[I
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorStyle()I

    move-result v19

    .line 69
    .local v19, "cursorShape":I
    if-eqz v16, :cond_0

    .line 70
    const/16 v0, 0x100

    aget v0, v6, v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v5, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v5, p2

    .line 72
    :goto_0
    iget v0, v15, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v0, v0

    .line 73
    .local v0, "heightOffset":F
    move/from16 v1, p3

    move v4, v1

    .local v4, "row":I
    :goto_1
    if-ge v4, v11, :cond_1c

    .line 74
    iget v1, v15, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    add-float v20, v0, v1

    .line 76
    .end local v0    # "heightOffset":F
    .local v20, "heightOffset":F
    if-ne v4, v8, :cond_1

    if-eqz v18, :cond_1

    move/from16 v0, v17

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v3, v0

    .line 77
    .local v3, "cursorX":I
    const/4 v0, -0x1

    .local v0, "selx1":I
    const/4 v1, -0x1

    .line 78
    .local v1, "selx2":I
    if-lt v4, v12, :cond_4

    if-gt v4, v13, :cond_4

    .line 79
    if-ne v4, v12, :cond_2

    move/from16 v0, p6

    .line 80
    :cond_2
    if-ne v4, v13, :cond_3

    move/from16 v2, p7

    goto :goto_3

    :cond_3
    iget v2, v14, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :goto_3
    move v1, v2

    move v2, v0

    goto :goto_4

    .line 83
    :cond_4
    move v2, v0

    .end local v0    # "selx1":I
    .local v2, "selx1":I
    :goto_4
    invoke-virtual {v7, v4}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    .line 84
    .local v0, "lineObject":Lcom/termux/terminal/TerminalRow;
    iget-object v10, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 85
    .local v10, "line":[C
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v12

    .line 87
    .local v12, "charsUsedInLine":I
    const-wide/16 v21, 0x0

    .line 88
    .local v21, "lastRunStyle":J
    const/16 v23, 0x0

    .line 89
    .local v23, "lastRunInsideCursor":Z
    const/16 v24, 0x0

    .line 90
    .local v24, "lastRunInsideSelection":Z
    const/16 v25, -0x1

    .line 91
    .local v25, "lastRunStartColumn":I
    const/16 v26, 0x0

    .line 92
    .local v26, "lastRunStartIndex":I
    const/16 v27, 0x0

    .line 93
    .local v27, "lastRunFontWidthMismatch":Z
    const/16 v28, 0x0

    .line 94
    .local v28, "currentCharIndex":I
    const/16 v29, 0x0

    .line 96
    .local v29, "measuredWidthForRun":F
    const/16 v30, 0x0

    move/from16 v13, v24

    move/from16 v24, v11

    move/from16 v11, v28

    move/from16 v28, v8

    move/from16 v8, v30

    move/from16 v59, v23

    move/from16 v23, v12

    move/from16 v12, v59

    .local v8, "column":I
    .local v11, "currentCharIndex":I
    .local v12, "lastRunInsideCursor":Z
    .local v13, "lastRunInsideSelection":Z
    .local v23, "charsUsedInLine":I
    .local v24, "endRow":I
    .local v28, "cursorRow":I
    :goto_5
    const/16 v30, 0x102

    const/16 v31, 0x0

    const/16 v32, 0x1

    if-ge v8, v9, :cond_17

    .line 97
    move/from16 v33, v9

    .end local v9    # "columns":I
    .local v33, "columns":I
    aget-char v9, v10, v11

    .line 98
    .local v9, "charAtIndex":C
    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v34

    .line 99
    .local v34, "charIsHighsurrogate":Z
    move-object/from16 v35, v7

    .end local v7    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .local v35, "screen":Lcom/termux/terminal/TerminalBuffer;
    if-eqz v34, :cond_5

    const/16 v36, 0x2

    goto :goto_6

    :cond_5
    move/from16 v36, v32

    :goto_6
    move/from16 v37, v36

    .line 100
    .local v37, "charsForCodePoint":I
    if-eqz v34, :cond_6

    add-int/lit8 v36, v11, 0x1

    aget-char v7, v10, v36

    invoke-static {v9, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    goto :goto_7

    :cond_6
    move v7, v9

    .line 101
    .local v7, "codePoint":I
    :goto_7
    move/from16 v36, v9

    .end local v9    # "charAtIndex":C
    .local v36, "charAtIndex":C
    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v9

    .line 102
    .local v9, "codePointWcWidth":I
    if-eq v3, v8, :cond_8

    const/4 v5, 0x2

    if-ne v9, v5, :cond_7

    add-int/lit8 v5, v8, 0x1

    if-ne v3, v5, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v5, v31

    goto :goto_9

    :cond_8
    :goto_8
    move/from16 v5, v32

    .line 103
    .local v5, "insideCursor":Z
    :goto_9
    if-lt v8, v2, :cond_9

    if-gt v8, v1, :cond_9

    move/from16 v39, v32

    goto :goto_a

    :cond_9
    move/from16 v39, v31

    :goto_a
    move/from16 v40, v39

    .line 104
    .local v40, "insideSelection":Z
    invoke-virtual {v0, v8}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v41

    .line 110
    .local v41, "style":J
    move-object/from16 v39, v0

    .end local v0    # "lineObject":Lcom/termux/terminal/TerminalRow;
    .local v39, "lineObject":Lcom/termux/terminal/TerminalRow;
    iget-object v0, v15, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    move/from16 v43, v1

    .end local v1    # "selx2":I
    .local v43, "selx2":I
    array-length v1, v0

    if-ge v7, v1, :cond_a

    aget v0, v0, v7

    move/from16 v1, v37

    goto :goto_b

    :cond_a
    iget-object v0, v15, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v1, v37

    .end local v37    # "charsForCodePoint":I
    .local v1, "charsForCodePoint":I
    invoke-virtual {v0, v10, v11, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    :goto_b
    move/from16 v37, v0

    .line 112
    .local v37, "measuredCodePointWidth":F
    iget v0, v15, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v0, v37, v0

    move/from16 v44, v1

    .end local v1    # "charsForCodePoint":I
    .local v44, "charsForCodePoint":I
    int-to-float v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v45, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v45

    if-lez v0, :cond_b

    move/from16 v0, v32

    goto :goto_c

    :cond_b
    move/from16 v0, v31

    :goto_c
    move/from16 v45, v0

    .line 114
    .local v45, "fontWidthMismatch":Z
    cmp-long v0, v41, v21

    if-nez v0, :cond_d

    if-ne v5, v12, :cond_d

    move/from16 v1, v40

    .end local v40    # "insideSelection":Z
    .local v1, "insideSelection":Z
    if-ne v1, v13, :cond_e

    if-nez v45, :cond_e

    if-eqz v27, :cond_c

    goto :goto_d

    :cond_c
    move/from16 v49, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v38, v5

    move-object/from16 v53, v6

    move/from16 v54, v7

    move/from16 v55, v8

    move/from16 v56, v9

    move-object/from16 v47, v10

    move/from16 v57, v11

    move/from16 v15, v23

    move-object/from16 v52, v35

    move/from16 v48, v43

    move/from16 v43, v44

    const/16 v35, 0x2

    move/from16 v44, v1

    goto/16 :goto_11

    .end local v1    # "insideSelection":Z
    .restart local v40    # "insideSelection":Z
    :cond_d
    move/from16 v1, v40

    .line 115
    .end local v40    # "insideSelection":Z
    .restart local v1    # "insideSelection":Z
    :cond_e
    :goto_d
    if-nez v8, :cond_f

    move/from16 v49, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v38, v5

    move-object/from16 v53, v6

    move/from16 v54, v7

    move/from16 v55, v8

    move/from16 v56, v9

    move-object/from16 v47, v10

    move/from16 v57, v11

    move/from16 v58, v13

    move/from16 v15, v23

    move-object/from16 v52, v35

    move/from16 v48, v43

    move/from16 v43, v44

    const/16 v35, 0x2

    move/from16 v44, v1

    move/from16 v23, v12

    goto/16 :goto_10

    .line 118
    :cond_f
    sub-int v40, v8, v25

    .line 119
    .local v40, "columnWidthSinceLastRun":I
    sub-int v46, v11, v26

    .line 120
    .local v46, "charsSinceLastRun":I
    if-eqz v12, :cond_10

    iget-object v0, v14, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v0, v0, v30

    goto :goto_e

    :cond_10
    move/from16 v0, v31

    :goto_e
    move-object/from16 v47, v10

    .end local v10    # "line":[C
    .local v47, "line":[C
    move v10, v0

    .line 121
    .local v10, "cursorColor":I
    const/4 v0, 0x0

    .line 122
    .local v0, "invertCursorTextColor":Z
    if-eqz v12, :cond_11

    if-nez v19, :cond_11

    .line 123
    const/4 v0, 0x1

    move/from16 v30, v0

    goto :goto_f

    .line 125
    :cond_11
    move/from16 v30, v0

    .end local v0    # "invertCursorTextColor":Z
    .local v30, "invertCursorTextColor":Z
    :goto_f
    if-nez v16, :cond_12

    if-nez v30, :cond_12

    if-eqz v13, :cond_13

    :cond_12
    move/from16 v31, v32

    :cond_13
    move-object/from16 v0, p0

    move/from16 v48, v43

    move/from16 v43, v44

    move/from16 v44, v1

    .end local v1    # "insideSelection":Z
    .local v43, "charsForCodePoint":I
    .local v44, "insideSelection":Z
    .local v48, "selx2":I
    move-object/from16 v1, p2

    move/from16 v49, v2

    .end local v2    # "selx1":I
    .local v49, "selx1":I
    move-object/from16 v2, v47

    move/from16 v50, v3

    .end local v3    # "cursorX":I
    .local v50, "cursorX":I
    move-object v3, v6

    move/from16 v51, v4

    .end local v4    # "row":I
    .local v51, "row":I
    move/from16 v4, v20

    move/from16 v38, v5

    const/16 v52, 0x2

    .end local v5    # "insideCursor":Z
    .local v38, "insideCursor":Z
    move/from16 v5, v25

    move-object/from16 v53, v6

    .end local v6    # "palette":[I
    .local v53, "palette":[I
    move/from16 v6, v40

    move/from16 v54, v7

    move/from16 v59, v52

    move-object/from16 v52, v35

    move/from16 v35, v59

    .end local v7    # "codePoint":I
    .end local v35    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .local v52, "screen":Lcom/termux/terminal/TerminalBuffer;
    .local v54, "codePoint":I
    move/from16 v7, v26

    move/from16 v55, v8

    .end local v8    # "column":I
    .local v55, "column":I
    move/from16 v8, v46

    move/from16 v56, v9

    .end local v9    # "codePointWcWidth":I
    .local v56, "codePointWcWidth":I
    move/from16 v9, v29

    move/from16 v57, v11

    .end local v11    # "currentCharIndex":I
    .local v57, "currentCharIndex":I
    move/from16 v11, v19

    move/from16 v58, v13

    move/from16 v15, v23

    move/from16 v23, v12

    .end local v12    # "lastRunInsideCursor":Z
    .end local v13    # "lastRunInsideSelection":Z
    .local v15, "charsUsedInLine":I
    .local v23, "lastRunInsideCursor":Z
    .local v58, "lastRunInsideSelection":Z
    move-wide/from16 v12, v21

    move/from16 v14, v31

    invoke-direct/range {v0 .. v14}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    .line 129
    .end local v10    # "cursorColor":I
    .end local v30    # "invertCursorTextColor":Z
    .end local v40    # "columnWidthSinceLastRun":I
    .end local v46    # "charsSinceLastRun":I
    :goto_10
    const/16 v29, 0x0

    .line 130
    move-wide/from16 v0, v41

    .line 131
    .end local v21    # "lastRunStyle":J
    .local v0, "lastRunStyle":J
    move/from16 v2, v38

    .line 132
    .end local v23    # "lastRunInsideCursor":Z
    .local v2, "lastRunInsideCursor":Z
    move/from16 v3, v44

    .line 133
    .end local v58    # "lastRunInsideSelection":Z
    .local v3, "lastRunInsideSelection":Z
    move/from16 v4, v55

    .line 134
    .end local v25    # "lastRunStartColumn":I
    .local v4, "lastRunStartColumn":I
    move/from16 v5, v57

    .line 135
    .end local v26    # "lastRunStartIndex":I
    .local v5, "lastRunStartIndex":I
    move/from16 v6, v45

    move-wide/from16 v21, v0

    move v12, v2

    move v13, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    .line 137
    .end local v0    # "lastRunStyle":J
    .end local v2    # "lastRunInsideCursor":Z
    .end local v3    # "lastRunInsideSelection":Z
    .end local v4    # "lastRunStartColumn":I
    .end local v5    # "lastRunStartIndex":I
    .restart local v12    # "lastRunInsideCursor":Z
    .restart local v13    # "lastRunInsideSelection":Z
    .restart local v21    # "lastRunStyle":J
    .restart local v25    # "lastRunStartColumn":I
    .restart local v26    # "lastRunStartIndex":I
    :goto_11
    add-float v29, v29, v37

    .line 138
    add-int v8, v55, v56

    .line 139
    .end local v55    # "column":I
    .restart local v8    # "column":I
    add-int v11, v57, v43

    .line 140
    .end local v57    # "currentCharIndex":I
    .restart local v11    # "currentCharIndex":I
    :goto_12
    if-ge v11, v15, :cond_15

    move-object/from16 v14, v47

    .end local v47    # "line":[C
    .local v14, "line":[C
    invoke-static {v14, v11}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v0

    if-gtz v0, :cond_16

    .line 143
    aget-char v0, v14, v11

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_14

    move/from16 v7, v35

    goto :goto_13

    :cond_14
    move/from16 v7, v32

    :goto_13
    add-int/2addr v11, v7

    move-object/from16 v47, v14

    goto :goto_12

    .line 140
    .end local v14    # "line":[C
    .restart local v47    # "line":[C
    :cond_15
    move-object/from16 v14, v47

    .line 145
    .end local v34    # "charIsHighsurrogate":Z
    .end local v36    # "charAtIndex":C
    .end local v37    # "measuredCodePointWidth":F
    .end local v38    # "insideCursor":Z
    .end local v41    # "style":J
    .end local v43    # "charsForCodePoint":I
    .end local v44    # "insideSelection":Z
    .end local v45    # "fontWidthMismatch":Z
    .end local v47    # "line":[C
    .end local v54    # "codePoint":I
    .end local v56    # "codePointWcWidth":I
    .restart local v14    # "line":[C
    :cond_16
    move-object/from16 v5, p2

    move-object v10, v14

    move/from16 v23, v15

    move/from16 v9, v33

    move-object/from16 v0, v39

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    move-object/from16 v7, v52

    move-object/from16 v6, v53

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    goto/16 :goto_5

    .line 96
    .end local v14    # "line":[C
    .end local v15    # "charsUsedInLine":I
    .end local v33    # "columns":I
    .end local v39    # "lineObject":Lcom/termux/terminal/TerminalRow;
    .end local v48    # "selx2":I
    .end local v49    # "selx1":I
    .end local v50    # "cursorX":I
    .end local v51    # "row":I
    .end local v52    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .end local v53    # "palette":[I
    .local v0, "lineObject":Lcom/termux/terminal/TerminalRow;
    .local v1, "selx2":I
    .local v2, "selx1":I
    .local v3, "cursorX":I
    .local v4, "row":I
    .restart local v6    # "palette":[I
    .local v7, "screen":Lcom/termux/terminal/TerminalBuffer;
    .local v9, "columns":I
    .local v10, "line":[C
    .local v23, "charsUsedInLine":I
    :cond_17
    move-object/from16 v39, v0

    move/from16 v48, v1

    move/from16 v49, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move-object/from16 v53, v6

    move-object/from16 v52, v7

    move/from16 v55, v8

    move/from16 v33, v9

    move-object v14, v10

    move/from16 v57, v11

    move/from16 v58, v13

    move/from16 v15, v23

    move/from16 v23, v12

    .line 147
    .end local v0    # "lineObject":Lcom/termux/terminal/TerminalRow;
    .end local v1    # "selx2":I
    .end local v2    # "selx1":I
    .end local v3    # "cursorX":I
    .end local v4    # "row":I
    .end local v6    # "palette":[I
    .end local v7    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .end local v8    # "column":I
    .end local v9    # "columns":I
    .end local v10    # "line":[C
    .end local v11    # "currentCharIndex":I
    .end local v12    # "lastRunInsideCursor":Z
    .end local v13    # "lastRunInsideSelection":Z
    .restart local v14    # "line":[C
    .restart local v15    # "charsUsedInLine":I
    .local v23, "lastRunInsideCursor":Z
    .restart local v33    # "columns":I
    .restart local v39    # "lineObject":Lcom/termux/terminal/TerminalRow;
    .restart local v48    # "selx2":I
    .restart local v49    # "selx1":I
    .restart local v50    # "cursorX":I
    .restart local v51    # "row":I
    .restart local v52    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .restart local v53    # "palette":[I
    .restart local v57    # "currentCharIndex":I
    .restart local v58    # "lastRunInsideSelection":Z
    sub-int v34, v33, v25

    .line 148
    .local v34, "columnWidthSinceLastRun":I
    sub-int v35, v57, v26

    .line 149
    .local v35, "charsSinceLastRun":I
    if-eqz v23, :cond_18

    move-object/from16 v12, p1

    iget-object v0, v12, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v0, v0, v30

    move v10, v0

    goto :goto_14

    :cond_18
    move-object/from16 v12, p1

    move/from16 v10, v31

    .line 150
    .local v10, "cursorColor":I
    :goto_14
    const/4 v0, 0x0

    .line 151
    .local v0, "invertCursorTextColor":Z
    if-eqz v23, :cond_19

    if-nez v19, :cond_19

    .line 152
    const/4 v0, 0x1

    move/from16 v30, v0

    goto :goto_15

    .line 154
    :cond_19
    move/from16 v30, v0

    .end local v0    # "invertCursorTextColor":Z
    .restart local v30    # "invertCursorTextColor":Z
    :goto_15
    if-nez v16, :cond_1a

    if-nez v30, :cond_1a

    if-eqz v58, :cond_1b

    :cond_1a
    move/from16 v31, v32

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, v53

    move/from16 v4, v20

    move/from16 v5, v25

    move/from16 v6, v34

    move/from16 v7, v26

    move/from16 v8, v35

    move/from16 v9, v29

    move/from16 v11, v19

    move-wide/from16 v12, v21

    move-object/from16 v32, v14

    .end local v14    # "line":[C
    .local v32, "line":[C
    move/from16 v14, v31

    invoke-direct/range {v0 .. v14}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    .line 73
    .end local v10    # "cursorColor":I
    .end local v15    # "charsUsedInLine":I
    .end local v21    # "lastRunStyle":J
    .end local v23    # "lastRunInsideCursor":Z
    .end local v25    # "lastRunStartColumn":I
    .end local v26    # "lastRunStartIndex":I
    .end local v27    # "lastRunFontWidthMismatch":Z
    .end local v29    # "measuredWidthForRun":F
    .end local v30    # "invertCursorTextColor":Z
    .end local v32    # "line":[C
    .end local v34    # "columnWidthSinceLastRun":I
    .end local v35    # "charsSinceLastRun":I
    .end local v39    # "lineObject":Lcom/termux/terminal/TerminalRow;
    .end local v48    # "selx2":I
    .end local v49    # "selx1":I
    .end local v50    # "cursorX":I
    .end local v57    # "currentCharIndex":I
    .end local v58    # "lastRunInsideSelection":Z
    add-int/lit8 v4, v51, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v0, v20

    move/from16 v11, v24

    move/from16 v8, v28

    move/from16 v9, v33

    move-object/from16 v7, v52

    move-object/from16 v6, v53

    .end local v51    # "row":I
    .restart local v4    # "row":I
    goto/16 :goto_1

    .line 157
    .end local v4    # "row":I
    .end local v20    # "heightOffset":F
    .end local v24    # "endRow":I
    .end local v28    # "cursorRow":I
    .end local v33    # "columns":I
    .end local v52    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .end local v53    # "palette":[I
    .local v0, "heightOffset":F
    .restart local v6    # "palette":[I
    .restart local v7    # "screen":Lcom/termux/terminal/TerminalBuffer;
    .local v8, "cursorRow":I
    .restart local v9    # "columns":I
    .local v11, "endRow":I
    :cond_1c
    return-void
.end method
