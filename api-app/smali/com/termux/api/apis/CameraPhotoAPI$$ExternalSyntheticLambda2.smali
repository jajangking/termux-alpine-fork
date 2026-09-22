.class public final synthetic Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Landroid/media/ImageReader;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic f$5:Landroid/os/Looper;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$2:Landroid/media/ImageReader;

    iput-object p4, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$4:Landroid/hardware/camera2/CameraDevice;

    iput-object p6, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$5:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$2:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$4:Landroid/hardware/camera2/CameraDevice;

    iget-object v5, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda2;->f$5:Landroid/os/Looper;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/termux/api/apis/CameraPhotoAPI;->$r8$lambda$Z9-3Rvv-PhKO5UMaNeF8sy9f3zc(Ljava/io/File;Ljava/io/PrintWriter;Landroid/media/ImageReader;Ljava/util/List;Landroid/hardware/camera2/CameraDevice;Landroid/os/Looper;Landroid/media/ImageReader;)V

    return-void
.end method
