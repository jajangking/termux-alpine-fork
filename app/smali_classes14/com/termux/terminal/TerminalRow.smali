.class public final Lcom/termux/terminal/TerminalRow;
.super Ljava/lang/Object;
.source "TerminalRow.java"


# static fields
.field private static final MAX_COMBINING_CHARACTERS_PER_COLUMN:I = 0xf

.field private static final SPARE_CAPACITY_FACTOR:F = 1.5f


# instance fields
.field private final mColumns:I

.field mHasNonOneWidthOrSurrogateChars:Z

.field mLineWrap:Z

.field private mSpaceUsed:S

.field final mStyle:[J

.field public mText:[C


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "columns"    # I
    .param p2, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columns",
            "style"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    .line 56
    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 57
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    .line 58
    invoke-virtual {p0, p2, p3}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    .line 59
    return-void
.end method

.method private wideDisplayCharacterStartingAt(I)Z
    .locals 7
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    .local v0, "currentCharIndex":I
    const/4 v1, 0x0

    .local v1, "currentColumn":I
    :goto_0
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "currentCharIndex":I
    .local v4, "currentCharIndex":I
    aget-char v0, v2, v0

    .line 133
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "currentCharIndex":I
    .local v5, "currentCharIndex":I
    aget-char v2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v4, v5

    goto :goto_1

    .end local v5    # "currentCharIndex":I
    .restart local v4    # "currentCharIndex":I
    :cond_0
    move v2, v0

    .line 134
    .local v2, "codePoint":I
    :goto_1
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 135
    .local v5, "wcwidth":I
    if-lez v5, :cond_2

    .line 136
    if-ne v1, p1, :cond_1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    return v3

    .line 137
    :cond_1
    add-int/2addr v1, v5

    .line 138
    if-le v1, p1, :cond_2

    return v3

    .line 140
    .end local v0    # "c":C
    .end local v2    # "codePoint":I
    .end local v5    # "wcwidth":I
    :cond_2
    move v0, v4

    goto :goto_0

    .line 141
    .end local v1    # "currentColumn":I
    .end local v4    # "currentCharIndex":I
    :cond_3
    return v3
.end method


# virtual methods
.method public clear(J)V
    .locals 2
    .param p1, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 146
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 147
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-short v0, v0

    iput-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 149
    return-void
.end method

.method public copyInterval(Lcom/termux/terminal/TerminalRow;III)V
    .locals 16
    .param p1, "line"    # Lcom/termux/terminal/TerminalRow;
    .param p2, "sourceX1"    # I
    .param p3, "sourceX2"    # I
    .param p4, "destinationX"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "sourceX1",
            "sourceX2",
            "destinationX"
        }
    .end annotation

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    iget-boolean v3, v1, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 64
    invoke-virtual/range {p1 .. p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v2

    .line 65
    .local v2, "x1":I
    move/from16 v3, p3

    invoke-virtual {v1, v3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v4

    .line 66
    .local v4, "x2":I
    const/4 v5, 0x1

    if-lez p2, :cond_0

    add-int/lit8 v6, p2, -0x1

    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 67
    .local v6, "startingFromSecondHalfOfWideChar":Z
    :goto_0
    iget-object v7, v1, Lcom/termux/terminal/TerminalRow;->mText:[C

    if-ne v0, v1, :cond_1

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v7

    .line 68
    .local v7, "sourceChars":[C
    :cond_1
    const/4 v8, 0x0

    .line 69
    .local v8, "latestNonCombiningWidth":I
    move v9, v2

    move v10, v8

    move v11, v9

    move/from16 v8, p4

    move v9, v6

    move/from16 v6, p2

    .end local p2    # "sourceX1":I
    .end local p4    # "destinationX":I
    .local v6, "sourceX1":I
    .local v8, "destinationX":I
    .local v9, "startingFromSecondHalfOfWideChar":Z
    .local v10, "latestNonCombiningWidth":I
    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_5

    .line 70
    aget-char v12, v7, v11

    .line 71
    .local v12, "sourceChar":C
    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v11, v11, 0x1

    aget-char v13, v7, v11

    invoke-static {v12, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v13

    goto :goto_2

    :cond_2
    move v13, v12

    .line 72
    .local v13, "codePoint":I
    :goto_2
    if-eqz v9, :cond_3

    .line 74
    const/16 v13, 0x20

    .line 75
    const/4 v9, 0x0

    .line 77
    :cond_3
    invoke-static {v13}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v14

    .line 78
    .local v14, "w":I
    if-lez v14, :cond_4

    .line 79
    add-int/2addr v8, v10

    .line 80
    add-int/2addr v6, v10

    .line 81
    move v10, v14

    .line 83
    :cond_4
    move v15, v2

    .end local v2    # "x1":I
    .local v15, "x1":I
    invoke-virtual {v1, v6}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v2

    invoke-virtual {v0, v8, v13, v2, v3}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 69
    .end local v12    # "sourceChar":C
    .end local v13    # "codePoint":I
    .end local v14    # "w":I
    add-int/2addr v11, v5

    move/from16 v3, p3

    move v2, v15

    goto :goto_1

    .line 85
    .end local v11    # "i":I
    .end local v15    # "x1":I
    .restart local v2    # "x1":I
    :cond_5
    return-void
.end method

.method public findStartOfColumn(I)I
    .locals 10
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "currentColumn":I
    const/4 v1, 0x0

    .line 98
    .local v1, "currentCharIndex":I
    :goto_0
    move v2, v1

    .line 99
    .local v2, "newCharIndex":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "newCharIndex":I
    .local v4, "newCharIndex":I
    aget-char v2, v3, v2

    .line 100
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    .line 101
    .local v3, "isHigh":Z
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "newCharIndex":I
    .local v6, "newCharIndex":I
    aget-char v4, v5, v4

    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1

    .end local v6    # "newCharIndex":I
    .restart local v4    # "newCharIndex":I
    :cond_1
    move v6, v4

    move v4, v2

    .line 102
    .local v4, "codePoint":I
    .restart local v6    # "newCharIndex":I
    :goto_1
    invoke-static {v4}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 103
    .local v5, "wcwidth":I
    if-lez v5, :cond_5

    .line 104
    add-int/2addr v0, v5

    .line 105
    if-ne v0, p1, :cond_4

    .line 106
    :goto_2
    iget-short v7, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v6, v7, :cond_3

    .line 108
    iget-object v7, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    iget-object v7, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v8, v7, v6

    add-int/lit8 v9, v6, 0x1

    aget-char v7, v7, v9

    invoke-static {v8, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-gtz v7, :cond_3

    .line 110
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 114
    :cond_2
    iget-object v7, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v7, v6

    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-gtz v7, :cond_3

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 120
    :cond_3
    return v6

    .line 121
    :cond_4
    if-le v0, p1, :cond_5

    .line 123
    return v1

    .line 126
    :cond_5
    move v1, v6

    .line 127
    .end local v2    # "c":C
    .end local v3    # "isHigh":Z
    .end local v4    # "codePoint":I
    .end local v5    # "wcwidth":I
    .end local v6    # "newCharIndex":I
    goto :goto_0
.end method

.method public getSpaceUsed()I
    .locals 1

    .line 88
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method isBlank()Z
    .locals 4

    .line 274
    const/4 v0, 0x0

    .local v0, "charIndex":I
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v1

    .local v1, "charLen":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 275
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v2, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "charIndex":I
    .end local v1    # "charLen":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setChar(IIJ)V
    .locals 18
    .param p1, "columnToSet"    # I
    .param p2, "codePoint"    # I
    .param p3, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnToSet",
            "codePoint",
            "style"
        }
    .end annotation

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    if-ltz v1, :cond_17

    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    array-length v6, v5

    if-ge v1, v6, :cond_17

    .line 156
    aput-wide v3, v5, v1

    .line 158
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 161
    .local v5, "newCodePointDisplayWidth":I
    iget-boolean v6, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 162
    const/high16 v6, 0x10000

    if-ge v2, v6, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v6, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    int-to-char v7, v2

    aput-char v7, v6, v1

    .line 166
    return-void

    .line 163
    :cond_1
    :goto_0
    iput-boolean v7, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 170
    :cond_2
    if-gtz v5, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 172
    .local v8, "newIsCombining":Z
    :goto_1
    if-lez v1, :cond_4

    add-int/lit8 v9, v1, -0x1

    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 174
    .local v9, "wasExtraColForWideChar":Z
    :goto_2
    const/16 v10, 0x20

    const/4 v11, 0x2

    if-eqz v8, :cond_5

    .line 176
    if-eqz v9, :cond_8

    add-int/lit8 v1, v1, -0x1

    .end local p1    # "columnToSet":I
    .local v1, "columnToSet":I
    goto :goto_4

    .line 179
    .end local v1    # "columnToSet":I
    .restart local p1    # "columnToSet":I
    :cond_5
    if-eqz v9, :cond_6

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v0, v12, v10, v3, v4}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 181
    :cond_6
    if-ne v5, v11, :cond_7

    add-int/lit8 v12, v1, 0x1

    invoke-direct {v0, v12}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v7

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    .line 182
    .local v12, "overwritingWideCharInNextColumn":Z
    :goto_3
    if-eqz v12, :cond_8

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v0, v13, v10, v3, v4}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 185
    .end local v12    # "overwritingWideCharInNextColumn":Z
    .end local p1    # "columnToSet":I
    .restart local v1    # "columnToSet":I
    :cond_8
    :goto_4
    iget-object v12, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 186
    .local v12, "text":[C
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v13

    .line 187
    .local v13, "oldStartOfColumnIndex":I
    invoke-static {v12, v13}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v14

    .line 191
    .local v14, "oldCodePointDisplayWidth":I
    add-int v15, v1, v14

    iget v10, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v15, v10, :cond_9

    .line 192
    add-int v10, v1, v14

    invoke-virtual {v0, v10}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v10

    .line 193
    .local v10, "oldEndOfColumnIndex":I
    sub-int/2addr v10, v13

    .line 194
    .local v10, "oldCharactersUsedForColumn":I
    goto :goto_5

    .line 196
    .end local v10    # "oldCharactersUsedForColumn":I
    :cond_9
    iget-short v10, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v10, v13

    .line 200
    .restart local v10    # "oldCharactersUsedForColumn":I
    :goto_5
    if-eqz v8, :cond_a

    .line 201
    iget-object v15, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int v7, v13, v10

    invoke-static {v15, v13, v7}, Lcom/termux/terminal/WcWidth;->zeroWidthCharsCount([CII)I

    move-result v7

    .line 202
    .local v7, "combiningCharsCount":I
    const/16 v15, 0xf

    if-lt v7, v15, :cond_a

    .line 203
    return-void

    .line 207
    .end local v7    # "combiningCharsCount":I
    :cond_a
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    .line 208
    .local v7, "newCharactersUsedForColumn":I
    if-eqz v8, :cond_b

    .line 212
    add-int/2addr v7, v10

    .line 215
    :cond_b
    add-int v15, v13, v10

    .line 216
    .local v15, "oldNextColumnIndex":I
    add-int v11, v13, v7

    .line 218
    .local v11, "newNextColumnIndex":I
    sub-int v16, v7, v10

    .line 219
    .local v16, "javaCharDifference":I
    if-lez v16, :cond_e

    .line 221
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    move/from16 p1, v7

    .end local v7    # "newCharactersUsedForColumn":I
    .local p1, "newCharactersUsedForColumn":I
    sub-int v7, v6, v15

    .line 222
    .local v7, "oldCharactersAfterColumn":I
    add-int v6, v6, v16

    move/from16 v17, v9

    .end local v9    # "wasExtraColForWideChar":Z
    .local v17, "wasExtraColForWideChar":Z
    array-length v9, v12

    if-le v6, v9, :cond_c

    .line 224
    array-length v6, v12

    iget v9, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v6, v9

    new-array v6, v6, [C

    .line 225
    .local v6, "newText":[C
    const/4 v9, 0x0

    invoke-static {v12, v9, v6, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-static {v12, v15, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    move-object v12, v6

    iput-object v6, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 228
    .end local v6    # "newText":[C
    goto :goto_6

    .line 229
    :cond_c
    invoke-static {v12, v15, v12, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    .end local v7    # "oldCharactersAfterColumn":I
    :cond_d
    :goto_6
    goto :goto_7

    .end local v17    # "wasExtraColForWideChar":Z
    .end local p1    # "newCharactersUsedForColumn":I
    .local v7, "newCharactersUsedForColumn":I
    .restart local v9    # "wasExtraColForWideChar":Z
    :cond_e
    move/from16 p1, v7

    move/from16 v17, v9

    .end local v7    # "newCharactersUsedForColumn":I
    .end local v9    # "wasExtraColForWideChar":Z
    .restart local v17    # "wasExtraColForWideChar":Z
    .restart local p1    # "newCharactersUsedForColumn":I
    if-gez v16, :cond_d

    .line 233
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v6, v15

    invoke-static {v12, v15, v12, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    :goto_7
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int v6, v6, v16

    int-to-short v6, v6

    iput-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 239
    if-eqz v8, :cond_f

    move v9, v10

    goto :goto_8

    :cond_f
    const/4 v9, 0x0

    :goto_8
    add-int/2addr v9, v13

    invoke-static {v2, v12, v9}, Ljava/lang/Character;->toChars(I[CI)I

    .line 241
    const/4 v6, 0x2

    if-ne v14, v6, :cond_12

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 243
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v7, v6, 0x1

    array-length v9, v12

    if-le v7, v9, :cond_10

    .line 244
    array-length v6, v12

    iget v7, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v6, v7

    new-array v6, v6, [C

    .line 245
    .restart local v6    # "newText":[C
    const/4 v7, 0x0

    invoke-static {v12, v7, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    add-int/lit8 v7, v11, 0x1

    iget-short v9, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v9, v11

    invoke-static {v12, v11, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    move-object v12, v6

    iput-object v6, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 248
    .end local v6    # "newText":[C
    goto :goto_9

    .line 249
    :cond_10
    add-int/lit8 v7, v11, 0x1

    sub-int/2addr v6, v11

    invoke-static {v12, v11, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :goto_9
    const/16 v6, 0x20

    aput-char v6, v12, v11

    .line 253
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v7, 0x1

    add-int/2addr v6, v7

    int-to-short v6, v6

    iput-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_c

    .line 241
    :cond_11
    move v7, v6

    goto :goto_a

    :cond_12
    const/4 v7, 0x1

    .line 254
    :goto_a
    if-ne v14, v7, :cond_16

    const/4 v6, 0x2

    if-ne v5, v6, :cond_16

    .line 255
    iget v9, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v7, v9, -0x1

    if-eq v1, v7, :cond_15

    .line 257
    sub-int/2addr v9, v6

    if-ne v1, v9, :cond_13

    .line 259
    int-to-short v6, v11

    iput-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_c

    .line 263
    :cond_13
    iget-object v7, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v7, v11

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v6

    goto :goto_b

    :cond_14
    const/4 v7, 0x1

    :goto_b
    add-int/2addr v7, v11

    .line 264
    .local v7, "newNextNextColumnIndex":I
    sub-int v6, v7, v11

    .line 267
    .local v6, "nextLen":I
    iget-short v9, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v9, v7

    invoke-static {v12, v7, v12, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-short v9, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v9, v6

    int-to-short v9, v9

    iput-short v9, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_c

    .line 256
    .end local v6    # "nextLen":I
    .end local v7    # "newNextNextColumnIndex":I
    :cond_15
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot put wide character in last column"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :cond_16
    :goto_c
    return-void

    .line 154
    .end local v1    # "columnToSet":I
    .end local v5    # "newCodePointDisplayWidth":I
    .end local v8    # "newIsCombining":Z
    .end local v10    # "oldCharactersUsedForColumn":I
    .end local v11    # "newNextColumnIndex":I
    .end local v12    # "text":[C
    .end local v13    # "oldStartOfColumnIndex":I
    .end local v14    # "oldCodePointDisplayWidth":I
    .end local v15    # "oldNextColumnIndex":I
    .end local v16    # "javaCharDifference":I
    .end local v17    # "wasExtraColForWideChar":Z
    .local p1, "columnToSet":I
    :cond_17
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TerminalRow.setChar(): columnToSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", codePoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", style="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
