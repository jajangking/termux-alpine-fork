.class public abstract Lcom/termux/api/apis/InfraredAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static onReceiveCarrierFrequency(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    const-string v0, "InfraredAPI"

    const-string v1, "onReceiveCarrierFrequency"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/termux/api/apis/InfraredAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/InfraredAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public static onReceiveTransmit(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 50
    const-string v0, "InfraredAPI"

    const-string v1, "onReceiveTransmit"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/termux/api/apis/InfraredAPI$2;

    invoke-direct {v0, p1, p2}, Lcom/termux/api/apis/InfraredAPI$2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
