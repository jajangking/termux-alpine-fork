.class Lcom/termux/api/apis/CameraPhotoAPI$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/CameraPhotoAPI;->proceedWithOpenedCamera(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraDevice;Ljava/io/File;Landroid/os/Looper;Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$autoExposureModeFinal:I

.field final synthetic val$camera:Landroid/hardware/camera2/CameraDevice;

.field final synthetic val$characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dummySurface:Landroid/view/Surface;

.field final synthetic val$imageReaderSurface:Landroid/view/Surface;

.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$mImageReader:Landroid/media/ImageReader;

.field final synthetic val$outputSurfaces:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/view/Surface;ILandroid/view/Surface;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader;Ljava/util/List;Landroid/os/Looper;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iput-object p2, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$dummySurface:Landroid/view/Surface;

    iput p3, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$autoExposureModeFinal:I

    iput-object p4, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$imageReaderSurface:Landroid/view/Surface;

    iput-object p5, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object p7, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$mImageReader:Landroid/media/ImageReader;

    iput-object p8, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$outputSurfaces:Ljava/util/List;

    iput-object p9, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$looper:Landroid/os/Looper;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 206
    const-string p1, "CameraPhotoAPI"

    const-string v0, "onConfigureFailed() error in preview"

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 208
    iget-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$outputSurfaces:Ljava/util/List;

    invoke-static {p1}, Lcom/termux/api/apis/CameraPhotoAPI;->releaseSurfaces(Ljava/util/List;)V

    .line 209
    iget-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$looper:Landroid/os/Looper;

    invoke-static {p1, v0}, Lcom/termux/api/apis/CameraPhotoAPI;->closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    .line 175
    const-string v0, "CameraPhotoAPI"

    :try_start_0
    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$dummySurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 177
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 178
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$autoExposureModeFinal:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 182
    const-string v1, "preview started"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 184
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 185
    const-string v1, "preview stoppend"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 189
    iget-object v5, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$imageReaderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 192
    iget v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$autoExposureModeFinal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 193
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, v4}, Lcom/termux/api/apis/CameraPhotoAPI;->correctOrientation(Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$camera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/termux/api/apis/CameraPhotoAPI;->saveImage(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    const-string v1, "onConfigured() error in preview"

    invoke-static {v0, v1, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iget-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 199
    iget-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$outputSurfaces:Ljava/util/List;

    invoke-static {p1}, Lcom/termux/api/apis/CameraPhotoAPI;->releaseSurfaces(Ljava/util/List;)V

    .line 200
    iget-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$3;->val$looper:Landroid/os/Looper;

    invoke-static {p1, v0}, Lcom/termux/api/apis/CameraPhotoAPI;->closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    :goto_0
    return-void
.end method
