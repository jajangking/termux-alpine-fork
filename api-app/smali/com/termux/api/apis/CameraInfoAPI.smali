.class public abstract Lcom/termux/api/apis/CameraInfoAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 24
    const-string v0, "CameraInfoAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/termux/api/apis/CameraInfoAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/CameraInfoAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
