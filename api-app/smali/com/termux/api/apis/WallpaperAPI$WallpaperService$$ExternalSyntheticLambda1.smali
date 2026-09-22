.class public final synthetic Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda1;->f$0:Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda1;->f$0:Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    invoke-static {v0, p1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->$r8$lambda$TAes7DlK2gRQuNSaCMgELAgtGW8(Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;Ljava/io/PrintWriter;)V

    return-void
.end method
