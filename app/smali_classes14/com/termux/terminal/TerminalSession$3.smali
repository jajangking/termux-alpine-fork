.class Lcom/termux/terminal/TerminalSession$3;
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


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "name"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget v0, v0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-static {v0}, Lcom/termux/terminal/JNI;->waitFor(I)I

    move-result v0

    .line 169
    .local v0, "processExitCode":I
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method
