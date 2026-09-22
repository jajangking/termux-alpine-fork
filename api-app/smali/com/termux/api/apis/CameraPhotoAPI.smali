.class public abstract Lcom/termux/api/apis/CameraPhotoAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$Y-C9duIuwH_jSoYMoo9mWVkjQ64(Landroid/util/Size;Landroid/util/Size;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/CameraPhotoAPI;->lambda$proceedWithOpenedCamera$1(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Z9-3Rvv-PhKO5UMaNeF8sy9f3zc(Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;Landroid/media/ImageReader;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/termux/api/apis/CameraPhotoAPI;->lambda$proceedWithOpenedCamera$2(Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zyJMXlPolP82h7BmS5FQA3J0tIc(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/termux/api/apis/CameraPhotoAPI;->lambda$onReceive$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V
    .locals 2

    .line 284
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception closing camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraPhotoAPI"

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method static correctOrientation(Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 6

    .line 228
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 230
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    const-string v4, "Using"

    goto :goto_1

    :cond_1
    const-string v4, "Not using"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " a front facing camera."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraPhotoAPI"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 234
    const-string v3, "Sensor orientation: %s degrees"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :cond_2
    const-string p1, "CameraCharacteristics didn\'t contain SENSOR_ORIENTATION. Assuming 0 degrees."

    invoke-static {v4, p1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 241
    :goto_2
    const-string v3, "window"

    .line 242
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_6

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    .line 258
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Default display has unknown rotation %d. Assuming 0 degrees."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/16 v2, 0x10e

    goto :goto_3

    :cond_4
    const/16 v2, 0xb4

    goto :goto_3

    :cond_5
    const/16 v2, 0x5a

    .line 261
    :cond_6
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Device orientation: %d degrees"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 265
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v2

    goto :goto_4

    .line 267
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_4
    add-int/lit16 p0, p0, 0x168

    .line 270
    rem-int/lit16 p0, p0, 0x168

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Returning JPEG orientation of %d degrees"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static synthetic lambda$onReceive$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-static {p0, v0, v1}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/termux/shared/file/FileUtils;->getFileDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoFilePath=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", photoDirPath=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPhotoAPI"

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 67
    const-string v0, "photo directory"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/termux/shared/termux/file/TermuxFileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ERROR: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1, v0, p2}, Lcom/termux/api/apis/CameraPhotoAPI;->takePicture(Ljava/io/PrintWriter;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_2
    :goto_0
    const-string p0, "ERROR: File path not passed"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$proceedWithOpenedCamera$1(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 136
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v2, p0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$proceedWithOpenedCamera$2(Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;Landroid/media/ImageReader;)V
    .locals 9

    .line 142
    new-instance v8, Lcom/termux/api/apis/CameraPhotoAPI$2;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/termux/api/apis/CameraPhotoAPI$2;-><init>(Landroid/media/ImageReader;Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    .line 161
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 46
    const-string v0, "CameraPhotoAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "file"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "camera"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, v1}, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p2, v2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method static proceedWithOpenedCamera(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraDevice;Ljava/io/File;Landroid/os/Looper;Ljava/io/PrintWriter;)V
    .locals 14

    .line 120
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 125
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    const/4 v9, 0x1

    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-ne v3, v9, :cond_0

    move v8, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 134
    new-instance v1, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x100

    .line 138
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 141
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v11

    .line 142
    new-instance v12, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object v3, v11

    move-object v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;-><init>(Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 162
    invoke-virtual {v11}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    .line 163
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v9}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 167
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 168
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v12, Lcom/termux/api/apis/CameraPhotoAPI$3;

    move-object v0, v12

    move-object/from16 v1, p2

    move v3, v8

    move-object v5, p0

    move-object v6, v7

    move-object v7, v11

    move-object v8, v10

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/termux/api/apis/CameraPhotoAPI$3;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/view/Surface;ILandroid/view/Surface;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader;Ljava/util/List;Landroid/os/Looper;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12, v13}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static releaseSurfaces(Ljava/util/List;)V
    .locals 1

    .line 276
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 277
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 279
    :cond_0
    const-string p0, "CameraPhotoAPI"

    const-string v0, "surfaces released"

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveImage(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    .line 215
    new-instance p0, Lcom/termux/api/apis/CameraPhotoAPI$4;

    invoke-direct {p0}, Lcom/termux/api/apis/CameraPhotoAPI$4;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method

.method private static takePicture(Ljava/io/PrintWriter;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 81
    :try_start_0
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 83
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 87
    new-instance v7, Lcom/termux/api/apis/CameraPhotoAPI$1;

    move-object v1, v7

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/termux/api/apis/CameraPhotoAPI$1;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/io/File;Landroid/os/Looper;Ljava/io/PrintWriter;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p3, v7, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    const-string p1, "CameraPhotoAPI"

    const-string p2, "Error getting camera"

    invoke-static {p1, p2, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
