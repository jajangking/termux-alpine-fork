.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "size"    # J

    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2
    .param p1, "size"    # J
    .param p3, "markSupported"    # Z
    .param p4, "throwEofException"    # Z

    .line 96
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 97
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 98
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 99
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    .line 100
    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 334
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-nez v0, :cond_0

    .line 337
    const/4 v0, -0x1

    return v0

    .line 335
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 127
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    sub-long/2addr v0, v2

    .line 128
    .local v0, "avail":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    return v2

    .line 130
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 131
    const v2, 0x7fffffff

    return v2

    .line 133
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 148
    return-void
.end method

.method public getPosition()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_0

    .line 162
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 163
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 160
    .end local p0    # "this":Lorg/apache/commons/io/input/NullInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .locals 1

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 322
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_1

    .line 191
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 192
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    return v0

    .line 194
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    return v0

    .line 189
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_2

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    return v0

    .line 235
    :cond_0
    int-to-long v4, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 236
    move v4, p3

    .line 237
    .local v4, "returnLength":I
    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 238
    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v4, p3, v0

    .line 239
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 241
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    .line 242
    return v4

    .line 230
    .end local v4    # "returnLength":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_2

    .line 258
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 261
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 266
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 262
    .end local p0    # "this":Lorg/apache/commons/io/input/NullInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "numberOfBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_2

    .line 286
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 287
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 289
    :cond_0
    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 290
    move-wide v4, p1

    .line 291
    .local v4, "returnLength":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 292
    sub-long/2addr v0, v2

    sub-long v4, p1, v0

    .line 293
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 295
    :cond_1
    return-wide v4

    .line 284
    .end local v4    # "returnLength":J
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Skip after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
