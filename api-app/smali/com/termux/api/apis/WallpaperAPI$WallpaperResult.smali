.class Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/WallpaperAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public wallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->message:Ljava/lang/String;

    return-void
.end method
