.class Lcom/termux/api/apis/CameraPhotoAPI$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/CameraPhotoAPI;->takePicture(Ljava/io/PrintWriter;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$manager:Landroid/hardware/camera2/CameraManager;

.field final synthetic val$outputFile:Ljava/io/File;

.field final synthetic val$stdout:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/io/File;Landroid/os/Looper;Ljava/io/PrintWriter;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$manager:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$outputFile:Ljava/io/File;

    iput-object p4, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$looper:Landroid/os/Looper;

    iput-object p5, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$stdout:Ljava/io/PrintWriter;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 100
    const-string p1, "CameraPhotoAPI"

    const-string v0, "onDisconnected() from camera"

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed opening camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraPhotoAPI"

    invoke-static {v0, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$looper:Landroid/os/Looper;

    invoke-static {p1, p2}, Lcom/termux/api/apis/CameraPhotoAPI;->closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$manager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$outputFile:Ljava/io/File;

    iget-object v4, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$looper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$stdout:Ljava/io/PrintWriter;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/api/apis/CameraPhotoAPI;->proceedWithOpenedCamera(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraDevice;Ljava/io/File;Landroid/os/Looper;Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    const-string v1, "CameraPhotoAPI"

    const-string v2, "Exception in onOpened()"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$1;->val$looper:Landroid/os/Looper;

    invoke-static {p1, v0}, Lcom/termux/api/apis/CameraPhotoAPI;->closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    :goto_0
    return-void
.end method
