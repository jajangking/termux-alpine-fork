.class public Lcom/termux/api/KeepAliveService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 17
    const-string p1, "KeepAliveService"

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
