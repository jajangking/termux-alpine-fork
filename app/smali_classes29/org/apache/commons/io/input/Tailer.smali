.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final cset:Ljava/nio/charset/Charset;

.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cset"    # Ljava/nio/charset/Charset;
    .param p3, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p4, "delayMillis"    # J
    .param p6, "end"    # Z
    .param p7, "reOpen"    # Z
    .param p8, "bufSize"    # I

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 255
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 256
    iput-wide p4, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 257
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 259
    new-array v0, p8, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 262
    iput-object p3, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 263
    invoke-interface {p3, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 264
    iput-boolean p7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 265
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .line 178
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J

    .line 188
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z

    .line 199
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "bufSize"    # I

    .line 225
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z

    .line 212
    const/16 v7, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufSize"    # I

    .line 239
    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 240
    return-void
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufSize"    # I

    .line 315
    new-instance v9, Lorg/apache/commons/io/input/Tailer;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 316
    .local v0, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 317
    .local v1, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 318
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 319
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .line 372
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J

    .line 360
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z

    .line 333
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "bufSize"    # I

    .line 280
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z

    .line 348
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z
    .param p6, "bufSize"    # I

    .line 297
    sget-object v1, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .locals 16
    .param p1, "reader"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 518
    .local v2, "lineBuf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 519
    .local v3, "pos":J
    move-wide v5, v3

    .line 521
    .local v5, "rePos":J
    const/4 v7, 0x0

    .line 522
    .local v7, "seenCR":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "num":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 523
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 524
    iget-object v10, v0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v10, v10, v8

    .line 525
    .local v10, "ch":B
    sparse-switch v10, :sswitch_data_0

    .line 539
    if-eqz v7, :cond_1

    .line 540
    const/4 v7, 0x0

    .line 541
    iget-object v11, v0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    iget-object v14, v0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v11, v12}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 543
    int-to-long v11, v8

    add-long/2addr v11, v3

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-wide v5, v11

    .end local v5    # "rePos":J
    .local v11, "rePos":J
    goto :goto_2

    .line 533
    .end local v11    # "rePos":J
    .restart local v5    # "rePos":J
    :sswitch_0
    if-eqz v7, :cond_0

    .line 534
    const/16 v11, 0xd

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    :cond_0
    const/4 v7, 0x1

    .line 537
    goto :goto_3

    .line 527
    :sswitch_1
    const/4 v7, 0x0

    .line 528
    iget-object v13, v0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v14, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iget-object v11, v0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 530
    int-to-long v11, v8

    add-long/2addr v11, v3

    const-wide/16 v13, 0x1

    add-long v5, v11, v13

    .line 531
    goto :goto_3

    .line 545
    :cond_1
    :goto_2
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 523
    .end local v10    # "ch":B
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 548
    .end local v8    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    goto :goto_0

    .line 550
    .end local v9    # "num":I
    :cond_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 551
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 553
    iget-object v8, v0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    instance-of v9, v8, Lorg/apache/commons/io/input/TailerListenerAdapter;

    if-eqz v9, :cond_4

    .line 554
    check-cast v8, Lorg/apache/commons/io/input/TailerListenerAdapter;

    invoke-virtual {v8}, Lorg/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V

    .line 557
    :cond_4
    return-wide v5

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private stop(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 498
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    .line 500
    return-void
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method protected getRun()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return v0
.end method

.method public run()V
    .locals 12

    .line 407
    const/4 v0, 0x0

    .line 409
    .local v0, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v1, 0x0

    .line 410
    .local v1, "last":J
    const-wide/16 v3, 0x0

    .line 412
    .local v3, "position":J
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "r"

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    .line 414
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v5, v7, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 417
    goto :goto_1

    .line 415
    :catch_0
    move-exception v5

    .line 416
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v6}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 418
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    if-nez v0, :cond_0

    .line 419
    iget-wide v5, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 422
    :cond_0
    iget-boolean v5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_2

    :cond_1
    const-wide/16 v5, 0x0

    :goto_2
    move-wide v3, v5

    .line 423
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    move-wide v1, v5

    .line 424
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 427
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 428
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v5, v1, v2}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v5

    .line 430
    .local v5, "newer":Z
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 431
    .local v7, "length":J
    cmp-long v9, v7, v3

    if-gez v9, :cond_3

    .line 433
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v9}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    move-object v9, v0

    .line 438
    .local v9, "save":Ljava/io/RandomAccessFile;
    :try_start_3
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v10, v11, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v10

    .line 442
    :try_start_4
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 445
    goto :goto_4

    .line 443
    :catch_1
    move-exception v10

    .line 444
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_5
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 446
    .end local v10    # "ioe":Ljava/io/IOException;
    :goto_4
    const-wide/16 v3, 0x0

    .line 448
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 452
    .end local v9    # "save":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 449
    :catch_2
    move-exception v9

    .line 451
    .local v9, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 453
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 457
    :cond_3
    cmp-long v9, v7, v3

    if-lez v9, :cond_4

    .line 459
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    move-wide v3, v9

    .line 460
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    move-wide v1, v9

    goto :goto_5

    .line 461
    :cond_4
    if-eqz v5, :cond_5

    .line 466
    const-wide/16 v3, 0x0

    .line 467
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 470
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    move-wide v3, v9

    .line 471
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    move-wide v1, v9

    .line 474
    :cond_5
    :goto_5
    iget-boolean v9, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v9, :cond_6

    .line 475
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 477
    :cond_6
    iget-wide v9, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v9, :cond_7

    .line 479
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v9, v10, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    .line 480
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 482
    .end local v5    # "newer":Z
    .end local v7    # "length":J
    :cond_7
    goto/16 :goto_3

    .line 427
    .end local v1    # "last":J
    .end local v3    # "position":J
    :cond_8
    goto :goto_6

    .line 489
    :catchall_0
    move-exception v1

    goto :goto_8

    .line 486
    :catch_3
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/Tailer;->stop(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 489
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 490
    goto :goto_7

    .line 483
    :catch_4
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 485
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/Tailer;->stop(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 491
    :goto_7
    return-void

    .line 489
    :goto_8
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public stop()V
    .locals 1

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 507
    return-void
.end method
