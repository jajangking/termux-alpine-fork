.class Lcom/termux/terminal/TerminalSession$2;
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

    .line 149
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$2;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$2;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 153
    .local v0, "buffer":[B
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$2;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v1, "termOut":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$2;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .local v2, "bytesToWrite":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 159
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    return-void

    .line 157
    :cond_0
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .end local v2    # "bytesToWrite":I
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buffer":[B
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 159
    .end local v1    # "termOut":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .line 162
    return-void
.end method
