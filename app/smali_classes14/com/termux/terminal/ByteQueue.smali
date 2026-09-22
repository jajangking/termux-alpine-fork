.class final Lcom/termux/terminal/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private final mBuffer:[B

.field private mHead:I

.field private mOpen:Z

.field private mStoredBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 12
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 16
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 15
    .end local p0    # "this":Lcom/termux/terminal/ByteQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BZ)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "block"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "block"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 22
    if-eqz p2, :cond_0

    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    goto :goto_0

    .line 25
    .end local p0    # "this":Lcom/termux/terminal/ByteQueue;
    :catch_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    monitor-exit p0

    return v1

    .line 32
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    .local v2, "totalRead":I
    :try_start_3
    iget-object v3, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v3, v3

    .line 36
    .local v3, "bufferLength":I
    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 37
    .local v0, "wasFull":Z
    :goto_1
    array-length v4, p1

    .line 38
    .local v4, "length":I
    const/4 v5, 0x0

    .line 39
    .local v5, "offset":I
    :goto_2
    if-lez v4, :cond_5

    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-lez v6, :cond_5

    .line 40
    iget v7, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    sub-int v7, v3, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 41
    .local v6, "oneRun":I
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 42
    .local v7, "bytesToCopy":I
    iget-object v8, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    iget v9, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    invoke-static {v8, v9, p1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v8, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 44
    if-lt v8, v3, :cond_4

    iput v1, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 45
    :cond_4
    iget v8, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    .line 46
    sub-int/2addr v4, v7

    .line 47
    add-int/2addr v5, v7

    .line 48
    add-int/2addr v2, v7

    .line 49
    .end local v6    # "oneRun":I
    .end local v7    # "bytesToCopy":I
    goto :goto_2

    .line 50
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :cond_6
    monitor-exit p0

    return v2

    .line 20
    .end local v0    # "wasFull":Z
    .end local v2    # "totalRead":I
    .end local v3    # "bufferLength":I
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local p1    # "buffer":[B
    .end local p2    # "block":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)Z
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "lengthToWrite"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "lengthToWrite"
        }
    .end annotation

    .line 60
    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_8

    .line 62
    if-lez p3, :cond_7

    .line 66
    iget-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v0, v0

    .line 68
    .local v0, "bufferLength":I
    monitor-enter p0

    .line 69
    :goto_0
    const/4 v1, 0x1

    if-lez p3, :cond_6

    .line 70
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_2
    goto :goto_1

    .line 73
    :catch_0
    move-exception v2

    goto :goto_2

    .line 77
    :cond_0
    :try_start_2
    iget-boolean v3, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    monitor-exit p0

    return v4

    .line 78
    :cond_1
    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move v1, v4

    .line 79
    .local v1, "wasEmpty":Z
    :goto_3
    sub-int v2, v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, "bytesToWriteBeforeWaiting":I
    sub-int/2addr p3, v2

    .line 82
    :goto_4
    if-lez v2, :cond_4

    .line 83
    iget v3, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    iget v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v4, v3

    .line 85
    .local v4, "tail":I
    if-lt v4, v0, :cond_3

    .line 92
    sub-int/2addr v4, v0

    .line 93
    sub-int/2addr v3, v4

    .local v3, "oneRun":I
    goto :goto_5

    .line 95
    .end local v3    # "oneRun":I
    :cond_3
    sub-int v3, v0, v4

    .line 97
    .restart local v3    # "oneRun":I
    :goto_5
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 98
    .local v5, "bytesToCopy":I
    iget-object v6, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    invoke-static {p1, p2, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    add-int/2addr p2, v5

    .line 100
    sub-int/2addr v2, v5

    .line 101
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    .line 102
    .end local v3    # "oneRun":I
    .end local v4    # "tail":I
    .end local v5    # "bytesToCopy":I
    goto :goto_4

    .line 103
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 104
    .end local v1    # "wasEmpty":Z
    .end local v2    # "bytesToWriteBeforeWaiting":I
    :cond_5
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    goto :goto_6

    :cond_6
    monitor-exit p0

    .line 106
    return v1

    .line 105
    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 63
    .end local v0    # "bufferLength":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length + offset > buffer.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
