.class public final synthetic Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/api/apis/CameraPhotoAPI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/api/apis/CameraPhotoAPI;->$r8$lambda$zyJMXlPolP82h7BmS5FQA3J0tIc(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
