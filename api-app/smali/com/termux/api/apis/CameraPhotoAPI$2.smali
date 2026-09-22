.class Lcom/termux/api/apis/CameraPhotoAPI$2;
.super Ljava/lang/Thread;
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
.field final synthetic val$camera:Landroid/hardware/camera2/CameraDevice;

.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$mImageReader:Landroid/media/ImageReader;

.field final synthetic val$outputFile:Ljava/io/File;

.field final synthetic val$outputSurfaces:Ljava/util/List;

.field final synthetic val$reader:Landroid/media/ImageReader;

.field final synthetic val$stdout:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Landroid/media/ImageReader;Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$reader:Landroid/media/ImageReader;

    iput-object p2, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$outputFile:Ljava/io/File;

    iput-object p3, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$stdout:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$mImageReader:Landroid/media/ImageReader;

    iput-object p5, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$outputSurfaces:Ljava/util/List;

    iput-object p6, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iput-object p7, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$looper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 146
    :try_start_1
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 148
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$outputFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    :goto_1
    :try_start_7
    iget-object v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$stdout:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string v2, "CameraPhotoAPI"

    const-string v3, "Error writing image"

    invoke-static {v2, v3, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 155
    :goto_2
    :try_start_8
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 156
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 157
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$outputSurfaces:Ljava/util/List;

    invoke-static {v0}, Lcom/termux/api/apis/CameraPhotoAPI;->releaseSurfaces(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$looper:Landroid/os/Looper;

    invoke-static {v0, v1}, Lcom/termux/api/apis/CameraPhotoAPI;->closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_5

    :goto_3
    if-eqz v0, :cond_0

    .line 145
    :try_start_9
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_4
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 156
    :goto_5
    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 157
    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$outputSurfaces:Ljava/util/List;

    invoke-static {v1}, Lcom/termux/api/apis/CameraPhotoAPI;->releaseSurfaces(Ljava/util/List;)V

    .line 158
    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$2;->val$looper:Landroid/os/Looper;

    invoke-static {v1, v2}, Lcom/termux/api/apis/CameraPhotoAPI;->closeCamera(Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V

    .line 159
    throw v0
.end method
