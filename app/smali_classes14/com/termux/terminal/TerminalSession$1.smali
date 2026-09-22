.class Lcom/termux/terminal/TerminalSession$1;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/terminal/TerminalSession;->initializeEmulator(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/terminal/TerminalSession;

.field final synthetic val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "name",
            "val$terminalFileDescriptorWrapped"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$1;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 135
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .local v0, "termIn":Ljava/io/InputStream;
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 138
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 143
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    return-void

    .line 140
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v3, v3, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1

    .line 143
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    return-void

    .line 141
    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v3, v3, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    nop

    .end local v2    # "read":I
    goto :goto_0

    .line 135
    .end local v1    # "buffer":[B
    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 143
    .end local v0    # "termIn":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 146
    return-void
.end method
