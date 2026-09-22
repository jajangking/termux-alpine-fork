.class public abstract Lcom/termux/api/apis/TorchAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getTorchCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .locals 6

    .line 65
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 68
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 69
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 21
    const-string v0, "TorchAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    invoke-static {p1, v0}, Lcom/termux/api/apis/TorchAPI;->toggleTorch(Landroid/content/Context;Z)V

    .line 26
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method

.method private static toggleTorch(Landroid/content/Context;Z)V
    .locals 2

    .line 31
    :try_start_0
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 32
    invoke-static {v0}, Lcom/termux/api/apis/TorchAPI;->getTorchCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "Torch unavailable on your device"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 40
    :goto_0
    const-string p1, "TorchAPI"

    const-string v0, "Error toggling torch"

    invoke-static {p1, v0, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
