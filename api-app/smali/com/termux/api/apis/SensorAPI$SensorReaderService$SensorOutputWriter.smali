.class Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SensorAPI$SensorReaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SensorOutputWriter"
.end annotation


# instance fields
.field protected counter:I

.field protected delay:I

.field protected errorListener:Lcom/termux/api/apis/SensorAPI$SocketWriterErrorListener;

.field protected isRunning:Z

.field protected limit:I

.field protected outputSocketAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 373
    invoke-direct {p0, p1, v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->outputSocketAddress:Ljava/lang/String;

    .line 369
    iput p2, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->delay:I

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 434
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 435
    iput-boolean v0, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->isRunning:Z

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 7

    .line 394
    const-string v0, "SensorReaderService"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->isRunning:Z

    const/4 v2, 0x0

    .line 395
    iput v2, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->counter:I

    .line 398
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    :try_start_1
    sget-object v3, Lcom/termux/api/util/ResultReturner;->context:Landroid/content/Context;

    const-string v4, "output"

    iget-object v5, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->outputSocketAddress:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/termux/api/util/ResultReturner;->getApiLocalSocketAddress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/LocalSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 402
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 404
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v4, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->isRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 406
    :try_start_3
    iget v4, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->delay:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 408
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorOutputWriter interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_1
    sget-object v4, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorReadout:Lorg/json/JSONObject;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 413
    sget-object v4, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 415
    iget v4, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->counter:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->counter:I

    iget v5, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->limit:I

    if-lt v4, v5, :cond_0

    .line 416
    const-string v4, "SensorOutput limit reached! Performing cleanup"

    invoke-static {v0, v4}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->cleanup()V

    goto :goto_0

    .line 420
    :cond_1
    const-string v1, "SensorOutputWriter finished"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    :try_start_5
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 422
    :try_start_6
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_4

    .line 402
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 398
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 424
    :goto_6
    const-string v2, "SensorOutputWriter error"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    iget-object v0, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->errorListener:Lcom/termux/api/apis/SensorAPI$SocketWriterErrorListener;

    if-eqz v0, :cond_2

    .line 427
    invoke-interface {v0, v1}, Lcom/termux/api/apis/SensorAPI$SocketWriterErrorListener;->onError(Ljava/lang/Exception;)V

    :cond_2
    :goto_7
    return-void
.end method

.method public setDelay(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->delay:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->limit:I

    return-void
.end method

.method public setOnErrorListener(Lcom/termux/api/apis/SensorAPI$SocketWriterErrorListener;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->errorListener:Lcom/termux/api/apis/SensorAPI$SocketWriterErrorListener;

    return-void
.end method
