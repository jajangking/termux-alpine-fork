.class public abstract Lcom/termux/api/apis/UsbAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/UsbAPI$UsbService;
    }
.end annotation


# static fields
.field protected static openDevices:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/termux/api/apis/UsbAPI;->openDevices:Landroid/util/SparseArray;

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 42
    const-string v0, "UsbAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/UsbAPI$UsbService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
