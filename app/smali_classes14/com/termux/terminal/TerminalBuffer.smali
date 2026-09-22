.class public final Lcom/termux/terminal/TerminalBuffer;
.super Ljava/lang/Object;
.source "TerminalBuffer.java"


# instance fields
.field private mActiveTranscriptRows:I

.field mColumns:I

.field mLines:[Lcom/termux/terminal/TerminalRow;

.field private mScreenFirstRow:I

.field mScreenRows:I

.field mTotalRows:I


# direct methods
.method public constructor <init>(III)V
    .locals 9
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columns",
            "totalRows",
            "screenRows"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 21
    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 32
    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 33
    iput p2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 34
    iput p3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 35
    new-array v0, p2, [Lcom/termux/terminal/TerminalRow;

    iput-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 37
    sget-wide v7, Lcom/termux/terminal/TextStyle;->NORMAL:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x20

    move-object v1, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 38
    return-void
.end method

.method private blockCopyLinesDown(II)V
    .locals 7
    .param p1, "srcInternal"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcInternal",
            "len"
        }
    .end annotation

    .line 364
    if-nez p2, :cond_0

    return-void

    .line 365
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 367
    .local v0, "totalRows":I
    add-int/lit8 v1, p2, -0x1

    .line 369
    .local v1, "start":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v0

    aget-object v2, v2, v3

    .line 371
    .local v2, "lineToBeOverWritten":Lcom/termux/terminal/TerminalRow;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 372
    iget-object v4, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v5, p1, v3

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v0

    add-int v6, p1, v3

    rem-int/2addr v6, v0

    aget-object v6, v4, v6

    aput-object v6, v4, v5

    .line 371
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 374
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    rem-int v4, p1, v0

    aput-object v2, v3, v4

    .line 375
    return-void
.end method


# virtual methods
.method public allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;
    .locals 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/termux/terminal/TerminalRow;

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v1, v0, p1

    goto :goto_0

    :cond_0
    aget-object v1, v0, p1

    :goto_0
    return-object v1
.end method

.method public blockCopy(IIIIII)V
    .locals 6
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "w",
            "h",
            "dx",
            "dy"
        }
    .end annotation

    .line 421
    if-nez p3, :cond_0

    return-void

    .line 422
    :cond_0
    if-ltz p1, :cond_4

    add-int v0, p1, p3

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_4

    if-ltz p2, :cond_4

    add-int v0, p2, p4

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v0, v2, :cond_4

    if-ltz p5, :cond_4

    add-int v0, p5, p3

    if-gt v0, v1, :cond_4

    if-ltz p6, :cond_4

    add-int v0, p6, p4

    if-gt v0, v2, :cond_4

    .line 424
    if-le p2, p6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 425
    .local v0, "copyingUp":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    if-ge v1, p4, :cond_3

    .line 426
    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, 0x1

    sub-int v2, p4, v2

    .line 427
    .local v2, "y2":I
    :goto_2
    add-int v3, p2, v2

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v3

    .line 428
    .local v3, "sourceRow":Lcom/termux/terminal/TerminalRow;
    add-int v4, p6, v2

    invoke-virtual {p0, v4}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v4

    add-int v5, p1, p3

    invoke-virtual {v4, v3, p1, v5, p5}, Lcom/termux/terminal/TerminalRow;->copyInterval(Lcom/termux/terminal/TerminalRow;III)V

    .line 425
    .end local v2    # "y2":I
    .end local v3    # "sourceRow":Lcom/termux/terminal/TerminalRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v1    # "y":I
    :cond_3
    return-void

    .line 423
    .end local v0    # "copyingUp":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blockSet(IIIIIJ)V
    .locals 8
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "val"    # I
    .param p6, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "w",
            "h",
            "val",
            "style"
        }
    .end annotation

    .line 438
    if-ltz p1, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v0, v1, :cond_2

    .line 442
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 443
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 444
    add-int v3, p1, v1

    add-int v4, p2, v0

    move-object v2, p0

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    .end local v1    # "x":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "y":I
    :cond_1
    return-void

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal arguments! blockSet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearLineWrap(I)V
    .locals 2
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    .line 193
    return-void
.end method

.method public clearTranscript()V
    .locals 6

    .line 488
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 489
    iget-object v4, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v1

    invoke-static {v4, v0, v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v4, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    sub-int v1, v0, v1

    invoke-static {v4, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 494
    :goto_0
    iput v2, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 495
    return-void
.end method

.method public externalToInternalRow(I)I
    .locals 3
    .param p1, "externalRow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "externalRow"
        }
    .end annotation

    .line 177
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p1, v0, :cond_1

    .line 179
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, p1

    .line 180
    .local v0, "internalRow":I
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    rem-int v1, v0, v1

    :goto_0
    return v1

    .line 178
    .end local v0    # "internalRow":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extRow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenRows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mActiveTranscriptRows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveRows()I
    .locals 2

    .line 152
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    return v0
.end method

.method public getLineWrap(I)Z
    .locals 2
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 6
    .param p1, "selX1"    # I
    .param p2, "selY1"    # I
    .param p3, "selX2"    # I
    .param p4, "selY2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selX1",
            "selY1",
            "selX2",
            "selY2"
        }
    .end annotation

    .line 53
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(IIIIZ)Ljava/lang/String;
    .locals 7
    .param p1, "selX1"    # I
    .param p2, "selY1"    # I
    .param p3, "selX2"    # I
    .param p4, "selY2"    # I
    .param p5, "joinBackLines"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selX1",
            "selY1",
            "selX2",
            "selY2",
            "joinBackLines"
        }
    .end annotation

    .line 57
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(IIIIZZ)Ljava/lang/String;
    .locals 18
    .param p1, "selX1"    # I
    .param p2, "selY1"    # I
    .param p3, "selX2"    # I
    .param p4, "selY2"    # I
    .param p5, "joinBackLines"    # Z
    .param p6, "joinFullLines"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selX1",
            "selY1",
            "selX2",
            "selY2",
            "joinBackLines",
            "joinFullLines"
        }
    .end annotation

    .line 61
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 64
    .local v2, "columns":I
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    move/from16 v4, p2

    if-ge v4, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    .end local p2    # "selY1":I
    .local v3, "selY1":I
    goto :goto_0

    .end local v3    # "selY1":I
    .restart local p2    # "selY1":I
    :cond_0
    move v3, v4

    .line 65
    .end local p2    # "selY1":I
    .restart local v3    # "selY1":I
    :goto_0
    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v5, 0x1

    move/from16 v6, p4

    if-lt v6, v4, :cond_1

    sub-int/2addr v4, v5

    .end local p4    # "selY2":I
    .local v4, "selY2":I
    goto :goto_1

    .end local v4    # "selY2":I
    .restart local p4    # "selY2":I
    :cond_1
    move v4, v6

    .line 67
    .end local p4    # "selY2":I
    .restart local v4    # "selY2":I
    :goto_1
    move v6, v3

    .local v6, "row":I
    :goto_2
    if-gt v6, v4, :cond_11

    .line 68
    if-ne v6, v3, :cond_2

    move/from16 v8, p1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    .line 70
    .local v8, "x1":I
    :goto_3
    if-ne v6, v4, :cond_3

    .line 71
    add-int/lit8 v9, p3, 0x1

    .line 72
    .local v9, "x2":I
    if-le v9, v2, :cond_4

    move v9, v2

    goto :goto_4

    .line 74
    .end local v9    # "x2":I
    :cond_3
    move v9, v2

    .line 76
    .restart local v9    # "x2":I
    :cond_4
    :goto_4
    iget-object v10, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 77
    .local v10, "lineObject":Lcom/termux/terminal/TerminalRow;
    invoke-virtual {v10, v8}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v11

    .line 78
    .local v11, "x1Index":I
    iget v12, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge v9, v12, :cond_5

    invoke-virtual {v10, v9}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v12

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v12

    .line 79
    .local v12, "x2Index":I
    :goto_5
    if-ne v12, v11, :cond_6

    .line 81
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v10, v13}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v12

    .line 83
    :cond_6
    iget-object v13, v10, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 84
    .local v13, "line":[C
    const/4 v14, -0x1

    .line 86
    .local v14, "lastPrintingCharIndex":I
    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v15

    .line 87
    .local v15, "rowLineWrap":Z
    if-eqz v15, :cond_7

    if-ne v9, v2, :cond_7

    .line 89
    add-int/lit8 v14, v12, -0x1

    move/from16 v17, v2

    goto :goto_7

    .line 91
    :cond_7
    move/from16 v16, v11

    move/from16 v7, v16

    .local v7, "i":I
    :goto_6
    if-ge v7, v12, :cond_9

    .line 92
    aget-char v5, v13, v7

    .line 93
    .local v5, "c":C
    move/from16 v17, v2

    .end local v2    # "columns":I
    .local v17, "columns":I
    const/16 v2, 0x20

    if-eq v5, v2, :cond_8

    move v2, v7

    move v14, v2

    .line 91
    .end local v5    # "c":C
    :cond_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v17

    const/4 v5, 0x1

    goto :goto_6

    .end local v17    # "columns":I
    .restart local v2    # "columns":I
    :cond_9
    move/from16 v17, v2

    .line 97
    .end local v2    # "columns":I
    .end local v7    # "i":I
    .restart local v17    # "columns":I
    :goto_7
    sub-int v2, v14, v11

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 98
    .local v2, "len":I
    const/4 v5, -0x1

    if-eq v14, v5, :cond_a

    if-lez v2, :cond_a

    .line 99
    invoke-virtual {v1, v13, v11, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 101
    :cond_a
    add-int/lit8 v5, v12, -0x1

    if-ne v14, v5, :cond_b

    const/4 v7, 0x1

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    :goto_8
    move v5, v7

    .line 102
    .local v5, "lineFillsWidth":Z
    if-eqz p5, :cond_d

    if-nez v15, :cond_c

    goto :goto_9

    :cond_c
    const/16 v16, 0x1

    goto :goto_a

    :cond_d
    :goto_9
    if-eqz p6, :cond_e

    if-nez v5, :cond_c

    :cond_e
    if-ge v6, v4, :cond_f

    iget v7, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_10

    .line 103
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 102
    :cond_f
    const/16 v16, 0x1

    .line 67
    .end local v2    # "len":I
    .end local v5    # "lineFillsWidth":Z
    .end local v8    # "x1":I
    .end local v9    # "x2":I
    .end local v10    # "lineObject":Lcom/termux/terminal/TerminalRow;
    .end local v11    # "x1Index":I
    .end local v12    # "x2Index":I
    .end local v13    # "line":[C
    .end local v14    # "lastPrintingCharIndex":I
    .end local v15    # "rowLineWrap":Z
    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    move/from16 v2, v17

    goto/16 :goto_2

    .end local v17    # "columns":I
    .local v2, "columns":I
    :cond_11
    move/from16 v17, v2

    .line 105
    .end local v2    # "columns":I
    .end local v6    # "row":I
    .restart local v17    # "columns":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStyleAt(II)J
    .locals 2
    .param p1, "externalRow"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "externalRow",
            "column"
        }
    .end annotation

    .line 459
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptTextWithFullLinesJoined()Ljava/lang/String;
    .locals 8

    .line 49
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptTextWithoutJoinedLines()Ljava/lang/String;
    .locals 7

    .line 45
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWordAtLocation(II)Ljava/lang/String;
    .locals 11
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

    .line 112
    move v0, p2

    .line 113
    .local v0, "y1":I
    move v1, p2

    .line 114
    .local v1, "y2":I
    :goto_0
    const-string v2, "\n"

    if-lez v0, :cond_0

    const/4 v4, 0x0

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 117
    :cond_0
    :goto_1
    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge v1, v3, :cond_1

    const/4 v5, 0x0

    iget v7, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_1
    const/4 v3, 0x0

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move v4, v0

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "text":Ljava/lang/String;
    sub-int v3, p2, v0

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    mul-int/2addr v3, v4

    add-int/2addr v3, p1

    .line 126
    .local v3, "textOffset":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ""

    if-lt v3, v4, :cond_2

    .line 129
    return-object v5

    .line 134
    :cond_2
    const/16 v4, 0x20

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 135
    .local v6, "x1":I
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 136
    .local v4, "x2":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_3

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 140
    :cond_3
    if-ne v6, v4, :cond_4

    .line 142
    return-object v5

    .line 144
    :cond_4
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public resize(III[IJZ)V
    .locals 38
    .param p1, "newColumns"    # I
    .param p2, "newRows"    # I
    .param p3, "newTotalRows"    # I
    .param p4, "cursor"    # [I
    .param p5, "currentStyle"    # J
    .param p7, "altScreen"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newColumns",
            "newRows",
            "newTotalRows",
            "cursor",
            "currentStyle",
            "altScreen"
        }
    .end annotation

    .line 205
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v10, p5

    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v7, v0, :cond_9

    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gt v8, v0, :cond_9

    .line 207
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int v1, v0, v8

    .line 208
    .local v1, "shiftDownOfTopRow":I
    if-lez v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 210
    sub-int/2addr v0, v13

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_3

    .line 211
    aget v2, p4, v13

    if-lt v2, v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v6, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v2

    .line 213
    .local v2, "r":I
    iget-object v3, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    goto :goto_1

    .line 210
    .end local v2    # "r":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_3
    :goto_1
    goto :goto_3

    .line 217
    :cond_4
    if-gez v1, :cond_6

    .line 219
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 220
    .local v0, "actualShift":I
    if-eq v1, v0, :cond_6

    .line 222
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_5

    .line 223
    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v3, v4

    invoke-virtual {v6, v3}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 224
    .end local v2    # "i":I
    :cond_5
    move v1, v0

    .line 227
    .end local v0    # "actualShift":I
    :cond_6
    :goto_3
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 228
    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_7

    add-int/2addr v0, v2

    goto :goto_4

    :cond_7
    rem-int/2addr v0, v2

    :goto_4
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 229
    iput v9, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 230
    if-eqz p7, :cond_8

    move v0, v12

    goto :goto_5

    :cond_8
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_5
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 231
    aget v0, p4, v13

    sub-int/2addr v0, v1

    aput v0, p4, v13

    .line 232
    iput v8, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 233
    .end local v1    # "shiftDownOfTopRow":I
    move v2, v12

    move v3, v13

    goto/16 :goto_1b

    .line 235
    :cond_9
    iget-object v14, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 236
    .local v14, "oldLines":[Lcom/termux/terminal/TerminalRow;
    new-array v0, v9, [Lcom/termux/terminal/TerminalRow;

    iput-object v0, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v9, :cond_a

    .line 238
    iget-object v1, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v2, Lcom/termux/terminal/TerminalRow;

    invoke-direct {v2, v7, v10, v11}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 240
    .end local v0    # "i":I
    :cond_a
    iget v15, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 241
    .local v15, "oldActiveTranscriptRows":I
    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 242
    .local v4, "oldScreenFirstRow":I
    iget v5, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 243
    .local v5, "oldScreenRows":I
    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 244
    .local v2, "oldTotalRows":I
    iput v9, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 245
    iput v8, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 246
    iput v12, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iput v12, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 247
    iput v7, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 249
    const/4 v0, -0x1

    .line 250
    .local v0, "newCursorRow":I
    const/4 v1, -0x1

    .line 251
    .local v1, "newCursorColumn":I
    aget v3, p4, v13

    .line 252
    .local v3, "oldCursorRow":I
    aget v13, p4, v12

    .line 253
    .local v13, "oldCursorColumn":I
    const/16 v16, 0x0

    .line 255
    .local v16, "newCursorPlaced":Z
    const/16 v17, 0x0

    .line 256
    .local v17, "currentOutputExternalRow":I
    const/16 v18, 0x0

    .line 261
    .local v18, "currentOutputExternalColumn":I
    const/16 v19, 0x0

    .line 262
    .local v19, "skippedBlankLines":I
    neg-int v12, v15

    move/from16 v7, v19

    .end local v19    # "skippedBlankLines":I
    .local v7, "skippedBlankLines":I
    .local v12, "externalOldRow":I
    :goto_7
    if-ge v12, v5, :cond_25

    .line 264
    add-int v19, v4, v12

    .line 265
    .local v19, "internalOldRow":I
    if-gez v19, :cond_b

    add-int v20, v2, v19

    goto :goto_8

    :cond_b
    rem-int v20, v19, v2

    :goto_8
    move/from16 v19, v20

    .line 267
    aget-object v8, v14, v19

    .line 268
    .local v8, "oldLine":Lcom/termux/terminal/TerminalRow;
    if-ne v12, v3, :cond_c

    const/16 v20, 0x1

    goto :goto_9

    :cond_c
    const/16 v20, 0x0

    .line 270
    .local v20, "cursorAtThisRow":Z
    :goto_9
    if-eqz v8, :cond_24

    if-nez v16, :cond_d

    if-nez v20, :cond_e

    :cond_d
    invoke-virtual {v8}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v21

    if-eqz v21, :cond_e

    move/from16 v22, v2

    move v9, v3

    move/from16 v23, v4

    move/from16 v24, v5

    goto/16 :goto_19

    .line 273
    :cond_e
    if-lez v7, :cond_11

    .line 275
    const/16 v21, 0x0

    move/from16 v22, v2

    move/from16 v2, v17

    move/from16 v37, v21

    move/from16 v21, v3

    move/from16 v3, v37

    .end local v17    # "currentOutputExternalRow":I
    .local v2, "currentOutputExternalRow":I
    .local v3, "i":I
    .local v21, "oldCursorRow":I
    .local v22, "oldTotalRows":I
    :goto_a
    if-ge v3, v7, :cond_10

    .line 276
    move/from16 v23, v4

    .end local v4    # "oldScreenFirstRow":I
    .local v23, "oldScreenFirstRow":I
    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move/from16 v24, v5

    .end local v5    # "oldScreenRows":I
    .local v24, "oldScreenRows":I
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_f

    .line 277
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v4, v10, v11}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_b

    .line 279
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 281
    :goto_b
    const/16 v18, 0x0

    .line 275
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v23

    move/from16 v5, v24

    goto :goto_a

    .end local v23    # "oldScreenFirstRow":I
    .end local v24    # "oldScreenRows":I
    .restart local v4    # "oldScreenFirstRow":I
    .restart local v5    # "oldScreenRows":I
    :cond_10
    move/from16 v23, v4

    move/from16 v24, v5

    .line 283
    .end local v3    # "i":I
    .end local v4    # "oldScreenFirstRow":I
    .end local v5    # "oldScreenRows":I
    .restart local v23    # "oldScreenFirstRow":I
    .restart local v24    # "oldScreenRows":I
    const/4 v7, 0x0

    move/from16 v17, v2

    goto :goto_c

    .line 273
    .end local v21    # "oldCursorRow":I
    .end local v22    # "oldTotalRows":I
    .end local v23    # "oldScreenFirstRow":I
    .end local v24    # "oldScreenRows":I
    .local v2, "oldTotalRows":I
    .local v3, "oldCursorRow":I
    .restart local v4    # "oldScreenFirstRow":I
    .restart local v5    # "oldScreenRows":I
    .restart local v17    # "currentOutputExternalRow":I
    :cond_11
    move/from16 v22, v2

    move/from16 v21, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .line 286
    .end local v2    # "oldTotalRows":I
    .end local v3    # "oldCursorRow":I
    .end local v4    # "oldScreenFirstRow":I
    .end local v5    # "oldScreenRows":I
    .restart local v21    # "oldCursorRow":I
    .restart local v22    # "oldTotalRows":I
    .restart local v23    # "oldScreenFirstRow":I
    .restart local v24    # "oldScreenRows":I
    :goto_c
    const/4 v2, 0x0

    .line 287
    .local v2, "lastNonSpaceIndex":I
    const/4 v3, 0x0

    .line 288
    .local v3, "justToCursor":Z
    if-nez v20, :cond_15

    iget-boolean v4, v8, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-eqz v4, :cond_12

    goto :goto_f

    .line 293
    :cond_12
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    invoke-virtual {v8}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 295
    iget-object v5, v8, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v5, v5, v4

    move/from16 v25, v2

    .end local v2    # "lastNonSpaceIndex":I
    .local v25, "lastNonSpaceIndex":I
    const/16 v2, 0x20

    if-eq v5, v2, :cond_13

    .line 296
    add-int/lit8 v2, v4, 0x1

    .end local v25    # "lastNonSpaceIndex":I
    .restart local v2    # "lastNonSpaceIndex":I
    goto :goto_e

    .line 295
    .end local v2    # "lastNonSpaceIndex":I
    .restart local v25    # "lastNonSpaceIndex":I
    :cond_13
    move/from16 v2, v25

    .line 293
    .end local v25    # "lastNonSpaceIndex":I
    .restart local v2    # "lastNonSpaceIndex":I
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_14
    move/from16 v25, v2

    .end local v2    # "lastNonSpaceIndex":I
    .restart local v25    # "lastNonSpaceIndex":I
    move/from16 v4, v25

    move/from16 v25, v3

    goto :goto_10

    .line 290
    .end local v4    # "i":I
    .end local v25    # "lastNonSpaceIndex":I
    .restart local v2    # "lastNonSpaceIndex":I
    :cond_15
    :goto_f
    invoke-virtual {v8}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v2

    .line 291
    if-eqz v20, :cond_16

    const/4 v3, 0x1

    :cond_16
    move v4, v2

    move/from16 v25, v3

    .line 299
    .end local v2    # "lastNonSpaceIndex":I
    .end local v3    # "justToCursor":Z
    .local v4, "lastNonSpaceIndex":I
    .local v25, "justToCursor":Z
    :goto_10
    const/4 v2, 0x0

    .line 300
    .local v2, "currentOldCol":I
    const-wide/16 v26, 0x0

    .line 301
    .local v26, "styleAtCol":J
    const/4 v3, 0x0

    move v5, v2

    move/from16 v37, v16

    move/from16 v16, v1

    move/from16 v1, v17

    move/from16 v17, v37

    .end local v2    # "currentOldCol":I
    .local v1, "currentOutputExternalRow":I
    .local v3, "i":I
    .local v5, "currentOldCol":I
    .local v16, "newCursorColumn":I
    .local v17, "newCursorPlaced":Z
    :goto_11
    if-ge v3, v4, :cond_20

    .line 303
    iget-object v2, v8, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v2, v3

    .line 304
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v28

    if-eqz v28, :cond_17

    move/from16 v28, v4

    .end local v4    # "lastNonSpaceIndex":I
    .local v28, "lastNonSpaceIndex":I
    iget-object v4, v8, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    move/from16 v29, v3

    move v3, v4

    goto :goto_12

    .end local v28    # "lastNonSpaceIndex":I
    .restart local v4    # "lastNonSpaceIndex":I
    :cond_17
    move/from16 v28, v4

    .end local v4    # "lastNonSpaceIndex":I
    .restart local v28    # "lastNonSpaceIndex":I
    move/from16 v29, v3

    move v3, v2

    .end local v3    # "i":I
    .local v29, "i":I
    :goto_12
    move/from16 v4, v21

    .line 305
    .end local v21    # "oldCursorRow":I
    .local v3, "codePoint":I
    .local v4, "oldCursorRow":I
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v21

    .line 307
    .local v21, "displayWidth":I
    if-lez v21, :cond_18

    invoke-virtual {v8, v5}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v26

    .line 310
    :cond_18
    move/from16 v30, v2

    .end local v2    # "c":C
    .local v30, "c":C
    add-int v2, v18, v21

    move/from16 v31, v4

    .end local v4    # "oldCursorRow":I
    .local v31, "oldCursorRow":I
    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-le v2, v4, :cond_1b

    .line 311
    invoke-virtual {v6, v1}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 312
    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_1a

    .line 313
    if-eqz v17, :cond_19

    add-int/lit8 v0, v0, -0x1

    .line 314
    :cond_19
    const/4 v4, 0x0

    invoke-virtual {v6, v4, v2, v10, v11}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_13

    .line 316
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 318
    :goto_13
    const/16 v18, 0x0

    move/from16 v32, v1

    move/from16 v33, v18

    move/from16 v18, v0

    goto :goto_14

    .line 310
    :cond_1b
    move/from16 v32, v1

    move/from16 v33, v18

    move/from16 v18, v0

    .line 321
    .end local v0    # "newCursorRow":I
    .end local v1    # "currentOutputExternalRow":I
    .local v18, "newCursorRow":I
    .local v32, "currentOutputExternalRow":I
    .local v33, "currentOutputExternalColumn":I
    :goto_14
    if-gtz v21, :cond_1c

    if-lez v33, :cond_1c

    const/4 v0, 0x1

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    :goto_15
    move/from16 v34, v0

    .line 322
    .local v34, "offsetDueToCombiningChar":I
    sub-int v35, v33, v34

    .line 323
    .local v35, "outputColumn":I
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v32

    move/from16 v36, v7

    move/from16 v9, v31

    move v7, v5

    .end local v5    # "currentOldCol":I
    .end local v31    # "oldCursorRow":I
    .local v7, "currentOldCol":I
    .local v9, "oldCursorRow":I
    .local v36, "skippedBlankLines":I
    move-wide/from16 v4, v26

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 325
    if-lez v21, :cond_1e

    .line 326
    if-ne v9, v12, :cond_1d

    if-ne v13, v7, :cond_1d

    .line 327
    move/from16 v16, v33

    .line 328
    move/from16 v0, v32

    .line 329
    .end local v18    # "newCursorRow":I
    .restart local v0    # "newCursorRow":I
    const/16 v17, 0x1

    goto :goto_16

    .line 331
    .end local v0    # "newCursorRow":I
    .restart local v18    # "newCursorRow":I
    :cond_1d
    move/from16 v0, v18

    .end local v18    # "newCursorRow":I
    .restart local v0    # "newCursorRow":I
    :goto_16
    add-int v5, v7, v21

    .line 332
    .end local v7    # "currentOldCol":I
    .restart local v5    # "currentOldCol":I
    add-int v18, v33, v21

    .line 333
    .end local v33    # "currentOutputExternalColumn":I
    .local v18, "currentOutputExternalColumn":I
    if-eqz v25, :cond_1f

    if-eqz v17, :cond_1f

    move/from16 v1, v32

    goto :goto_17

    .line 325
    .end local v0    # "newCursorRow":I
    .end local v5    # "currentOldCol":I
    .restart local v7    # "currentOldCol":I
    .local v18, "newCursorRow":I
    .restart local v33    # "currentOutputExternalColumn":I
    :cond_1e
    move v5, v7

    move/from16 v0, v18

    move/from16 v18, v33

    .line 301
    .end local v3    # "codePoint":I
    .end local v7    # "currentOldCol":I
    .end local v21    # "displayWidth":I
    .end local v30    # "c":C
    .end local v33    # "currentOutputExternalColumn":I
    .end local v34    # "offsetDueToCombiningChar":I
    .end local v35    # "outputColumn":I
    .restart local v0    # "newCursorRow":I
    .restart local v5    # "currentOldCol":I
    .local v18, "currentOutputExternalColumn":I
    :cond_1f
    add-int/lit8 v3, v29, 0x1

    move/from16 v21, v9

    move/from16 v4, v28

    move/from16 v1, v32

    move/from16 v7, v36

    move/from16 v9, p3

    .end local v29    # "i":I
    .local v3, "i":I
    goto/16 :goto_11

    .end local v9    # "oldCursorRow":I
    .end local v28    # "lastNonSpaceIndex":I
    .end local v32    # "currentOutputExternalRow":I
    .end local v36    # "skippedBlankLines":I
    .restart local v1    # "currentOutputExternalRow":I
    .local v4, "lastNonSpaceIndex":I
    .local v7, "skippedBlankLines":I
    .local v21, "oldCursorRow":I
    :cond_20
    move/from16 v28, v4

    move/from16 v36, v7

    move/from16 v9, v21

    move v7, v5

    .line 337
    .end local v3    # "i":I
    .end local v4    # "lastNonSpaceIndex":I
    .end local v7    # "skippedBlankLines":I
    .end local v21    # "oldCursorRow":I
    .restart local v9    # "oldCursorRow":I
    .restart local v28    # "lastNonSpaceIndex":I
    .restart local v36    # "skippedBlankLines":I
    :goto_17
    add-int/lit8 v2, v24, -0x1

    if-eq v12, v2, :cond_23

    iget-boolean v2, v8, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-nez v2, :cond_23

    .line 338
    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_22

    .line 339
    if-eqz v17, :cond_21

    add-int/lit8 v0, v0, -0x1

    .line 340
    :cond_21
    const/4 v3, 0x0

    invoke-virtual {v6, v3, v2, v10, v11}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_18

    .line 342
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 344
    :goto_18
    const/4 v2, 0x0

    move/from16 v18, v2

    move/from16 v7, v36

    move/from16 v37, v17

    move/from16 v17, v1

    move/from16 v1, v16

    move/from16 v16, v37

    .end local v18    # "currentOutputExternalColumn":I
    .local v2, "currentOutputExternalColumn":I
    goto :goto_1a

    .line 262
    .end local v2    # "currentOutputExternalColumn":I
    .end local v5    # "currentOldCol":I
    .end local v8    # "oldLine":Lcom/termux/terminal/TerminalRow;
    .end local v19    # "internalOldRow":I
    .end local v20    # "cursorAtThisRow":Z
    .end local v25    # "justToCursor":Z
    .end local v26    # "styleAtCol":J
    .end local v28    # "lastNonSpaceIndex":I
    .restart local v18    # "currentOutputExternalColumn":I
    :cond_23
    move/from16 v7, v36

    move/from16 v37, v17

    move/from16 v17, v1

    move/from16 v1, v16

    move/from16 v16, v37

    goto :goto_1a

    .line 270
    .end local v9    # "oldCursorRow":I
    .end local v22    # "oldTotalRows":I
    .end local v23    # "oldScreenFirstRow":I
    .end local v24    # "oldScreenRows":I
    .end local v36    # "skippedBlankLines":I
    .local v1, "newCursorColumn":I
    .local v2, "oldTotalRows":I
    .local v3, "oldCursorRow":I
    .local v4, "oldScreenFirstRow":I
    .local v5, "oldScreenRows":I
    .restart local v7    # "skippedBlankLines":I
    .restart local v8    # "oldLine":Lcom/termux/terminal/TerminalRow;
    .local v16, "newCursorPlaced":Z
    .local v17, "currentOutputExternalRow":I
    .restart local v19    # "internalOldRow":I
    .restart local v20    # "cursorAtThisRow":Z
    :cond_24
    move/from16 v22, v2

    move v9, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .line 271
    .end local v2    # "oldTotalRows":I
    .end local v3    # "oldCursorRow":I
    .end local v4    # "oldScreenFirstRow":I
    .end local v5    # "oldScreenRows":I
    .restart local v9    # "oldCursorRow":I
    .restart local v22    # "oldTotalRows":I
    .restart local v23    # "oldScreenFirstRow":I
    .restart local v24    # "oldScreenRows":I
    :goto_19
    add-int/lit8 v7, v7, 0x1

    .line 272
    nop

    .line 262
    .end local v8    # "oldLine":Lcom/termux/terminal/TerminalRow;
    .end local v19    # "internalOldRow":I
    .end local v20    # "cursorAtThisRow":Z
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p2

    move v3, v9

    move/from16 v2, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v9, p3

    goto/16 :goto_7

    .end local v9    # "oldCursorRow":I
    .end local v22    # "oldTotalRows":I
    .end local v23    # "oldScreenFirstRow":I
    .end local v24    # "oldScreenRows":I
    .restart local v2    # "oldTotalRows":I
    .restart local v3    # "oldCursorRow":I
    .restart local v4    # "oldScreenFirstRow":I
    .restart local v5    # "oldScreenRows":I
    :cond_25
    move/from16 v22, v2

    move v9, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .line 348
    .end local v2    # "oldTotalRows":I
    .end local v3    # "oldCursorRow":I
    .end local v4    # "oldScreenFirstRow":I
    .end local v5    # "oldScreenRows":I
    .end local v12    # "externalOldRow":I
    .restart local v9    # "oldCursorRow":I
    .restart local v22    # "oldTotalRows":I
    .restart local v23    # "oldScreenFirstRow":I
    .restart local v24    # "oldScreenRows":I
    const/4 v2, 0x0

    aput v1, p4, v2

    .line 349
    const/4 v3, 0x1

    aput v0, p4, v3

    .line 353
    .end local v0    # "newCursorRow":I
    .end local v1    # "newCursorColumn":I
    .end local v7    # "skippedBlankLines":I
    .end local v9    # "oldCursorRow":I
    .end local v13    # "oldCursorColumn":I
    .end local v14    # "oldLines":[Lcom/termux/terminal/TerminalRow;
    .end local v15    # "oldActiveTranscriptRows":I
    .end local v16    # "newCursorPlaced":Z
    .end local v17    # "currentOutputExternalRow":I
    .end local v18    # "currentOutputExternalColumn":I
    .end local v22    # "oldTotalRows":I
    .end local v23    # "oldScreenFirstRow":I
    .end local v24    # "oldScreenRows":I
    :goto_1b
    aget v0, p4, v2

    if-ltz v0, :cond_26

    aget v0, p4, v3

    if-gez v0, :cond_27

    :cond_26
    const/4 v0, 0x0

    aput v0, p4, v3

    aput v0, p4, v0

    .line 354
    :cond_27
    return-void
.end method

.method public scrollDownOneLine(IIJ)V
    .locals 4
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "topMargin",
            "bottomMargin",
            "style"
        }
    .end annotation

    .line 385
    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p2, v0, :cond_2

    .line 389
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 392
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 395
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 397
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 400
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    .line 401
    .local v0, "blankRow":I
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 402
    new-instance v2, Lcom/termux/terminal/TerminalRow;

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-direct {v2, v3, p3, p4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 404
    :cond_1
    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    .line 406
    :goto_0
    return-void

    .line 386
    .end local v0    # "blankRow":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topMargin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottomMargin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenRows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChar(IIIJ)V
    .locals 3
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "codePoint"    # I
    .param p4, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "column",
            "row",
            "codePoint",
            "style"
        }
    .end annotation

    .line 452
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge p1, v0, :cond_0

    .line 454
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p2

    .line 455
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 456
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminalBuffer.setChar(): row="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenRows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mColumns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLineWrap(I)V
    .locals 2
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    .line 185
    return-void
.end method

.method public setOrClearEffect(IZZZIIIIII)V
    .locals 17
    .param p1, "bits"    # I
    .param p2, "setOrClear"    # Z
    .param p3, "reverse"    # Z
    .param p4, "rectangular"    # Z
    .param p5, "leftMargin"    # I
    .param p6, "rightMargin"    # I
    .param p7, "top"    # I
    .param p8, "left"    # I
    .param p9, "bottom"    # I
    .param p10, "right"    # I
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
            0x0
        }
        names = {
            "bits",
            "setOrClear",
            "reverse",
            "rectangular",
            "leftMargin",
            "rightMargin",
            "top",
            "left",
            "bottom",
            "right"
        }
    .end annotation

    .line 465
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p9

    move/from16 v3, p7

    .local v3, "y":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 466
    iget-object v4, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {v0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v5

    aget-object v4, v4, v5

    .line 467
    .local v4, "line":Lcom/termux/terminal/TerminalRow;
    if-nez p4, :cond_1

    move/from16 v5, p7

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v6, p5

    goto :goto_2

    :cond_1
    move/from16 v5, p7

    :goto_1
    move/from16 v6, p8

    .line 468
    .local v6, "startOfLine":I
    :goto_2
    if-nez p4, :cond_3

    add-int/lit8 v7, v3, 0x1

    if-ne v7, v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v7, p6

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v7, p10

    .line 469
    .local v7, "endOfLine":I
    :goto_4
    move v8, v6

    .local v8, "x":I
    :goto_5
    if-ge v8, v7, :cond_6

    .line 470
    invoke-virtual {v4, v8}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v9

    .line 471
    .local v9, "currentStyle":J
    invoke-static {v9, v10}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v11

    .line 472
    .local v11, "foreColor":I
    invoke-static {v9, v10}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v12

    .line 473
    .local v12, "backColor":I
    invoke-static {v9, v10}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v13

    .line 474
    .local v13, "effect":I
    if-eqz p3, :cond_4

    .line 476
    not-int v14, v1

    and-int/2addr v14, v13

    not-int v15, v13

    and-int/2addr v15, v1

    or-int v13, v14, v15

    goto :goto_6

    .line 477
    :cond_4
    if-eqz p2, :cond_5

    .line 478
    or-int/2addr v13, v1

    goto :goto_6

    .line 480
    :cond_5
    not-int v14, v1

    and-int/2addr v13, v14

    .line 482
    :goto_6
    iget-object v14, v4, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v11, v12, v13}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v15

    aput-wide v15, v14, v8

    .line 469
    .end local v9    # "currentStyle":J
    .end local v11    # "foreColor":I
    .end local v12    # "backColor":I
    .end local v13    # "effect":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 465
    .end local v4    # "line":Lcom/termux/terminal/TerminalRow;
    .end local v6    # "startOfLine":I
    .end local v7    # "endOfLine":I
    .end local v8    # "x":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move/from16 v5, p7

    .line 485
    .end local v3    # "y":I
    return-void
.end method
