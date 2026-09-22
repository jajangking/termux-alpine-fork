.class public abstract Lcom/termux/api/apis/WifiAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static isLocationEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 55
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 56
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static onReceiveWifiConnectionInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 25
    const-string v0, "WifiAPI"

    const-string v1, "onReceiveWifiConnectionInfo"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/termux/api/apis/WifiAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/WifiAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public static onReceiveWifiEnable(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 126
    const-string v0, "WifiAPI"

    const-string v1, "onReceiveWifiEnable"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/termux/api/apis/WifiAPI$3;

    invoke-direct {v0, p1, p2}, Lcom/termux/api/apis/WifiAPI$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public static onReceiveWifiScanInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 60
    const-string v0, "WifiAPI"

    const-string v1, "onReceiveWifiScanInfo"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/termux/api/apis/WifiAPI$2;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/WifiAPI$2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
