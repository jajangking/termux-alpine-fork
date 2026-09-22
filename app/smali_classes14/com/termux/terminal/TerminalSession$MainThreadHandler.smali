.class Lcom/termux/terminal/TerminalSession$MainThreadHandler;
.super Landroid/os/Handler;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/terminal/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final mReceiveBuffer:[B

.field final synthetic this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 338
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->mReceiveBuffer:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->mReceiveBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result v0

    .line 343
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    .line 344
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->mReceiveBuffer:[B

    invoke-virtual {v1, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 345
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 348
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 349
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    .local v1, "exitCode":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalSession;->cleanupResources(I)V

    .line 352
    const-string v2, "\r\n[Process completed"

    .line 353
    .local v2, "exitDescription":Ljava/lang/String;
    const-string v3, ")"

    if-lez v1, :cond_1

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 356
    :cond_1
    if-gez v1, :cond_2

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (signal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    neg-int v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - press Enter]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 363
    .local v3, "bytesToWrite":[B
    iget-object v4, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v4, v4, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    array-length v5, v3

    invoke-virtual {v4, v3, v5}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 364
    iget-object v4, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 366
    iget-object v4, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v4, v4, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    iget-object v5, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v4, v5}, Lcom/termux/terminal/TerminalSessionClient;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    .line 368
    .end local v1    # "exitCode":I
    .end local v2    # "exitDescription":Ljava/lang/String;
    .end local v3    # "bytesToWrite":[B
    :cond_3
    return-void
.end method
