.class public abstract Lcom/termux/api/apis/BatteryStatusAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTargetSdkVersion:I


# direct methods
.method static bridge synthetic -$$Nest$smgetIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/BatteryStatusAPI;->getIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetLongProperty(Landroid/os/BatteryManager;I)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/BatteryStatusAPI;->getLongProperty(Landroid/os/BatteryManager;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static getIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    .line 181
    sget p1, Lcom/termux/api/apis/BatteryStatusAPI;->sTargetSdkVersion:I

    const/16 v1, 0x1c

    if-ge p1, v1, :cond_2

    if-eqz p0, :cond_1

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/high16 p1, -0x80000000

    if-eq p0, p1, :cond_3

    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static getLongProperty(Landroid/os/BatteryManager;I)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide p0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p0, v1

    if-eqz v1, :cond_1

    .line 193
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 25
    const-string v0, "BatteryStatusAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Lcom/termux/api/apis/BatteryStatusAPI;->sTargetSdkVersion:I

    .line 29
    new-instance v0, Lcom/termux/api/apis/BatteryStatusAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/BatteryStatusAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
