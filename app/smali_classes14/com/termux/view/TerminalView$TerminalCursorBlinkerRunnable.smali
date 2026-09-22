.class Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/view/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TerminalCursorBlinkerRunnable"
.end annotation


# instance fields
.field private final mBlinkRate:I

.field mCursorVisible:Z

.field private mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;Lcom/termux/terminal/TerminalEmulator;I)V
    .locals 0
    .param p2, "emulator"    # Lcom/termux/terminal/TerminalEmulator;
    .param p3, "blinkRate"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "emulator",
            "blinkRate"
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mCursorVisible:Z

    .line 1295
    iput-object p2, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 1296
    iput p3, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mBlinkRate:I

    .line 1297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_1

    .line 1310
    iget-boolean v1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mCursorVisible:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mCursorVisible:Z

    .line 1312
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 1313
    iget-object v0, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->access$100(Lcom/termux/view/TerminalView;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mBlinkRate:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1318
    nop

    .line 1319
    return-void

    .line 1317
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v1}, Lcom/termux/view/TerminalView;->access$100(Lcom/termux/view/TerminalView;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mBlinkRate:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1318
    throw v0
.end method

.method public setEmulator(Lcom/termux/terminal/TerminalEmulator;)V
    .locals 0
    .param p1, "emulator"    # Lcom/termux/terminal/TerminalEmulator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emulator"
        }
    .end annotation

    .line 1300
    iput-object p1, p0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 1301
    return-void
.end method
