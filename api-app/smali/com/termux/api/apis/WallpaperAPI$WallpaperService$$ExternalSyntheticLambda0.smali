.class public final synthetic Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->$r8$lambda$CqFHgBN0OnOp9x3EYQNKCnUQwWQ(Ljava/lang/String;)Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    move-result-object v0

    return-object v0
.end method
