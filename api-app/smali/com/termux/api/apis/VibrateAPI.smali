.class public abstract Lcom/termux/api/apis/VibrateAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    const-string v0, "VibrateAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/termux/api/apis/VibrateAPI$1;

    invoke-direct {v0, p1, p2}, Lcom/termux/api/apis/VibrateAPI$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method
