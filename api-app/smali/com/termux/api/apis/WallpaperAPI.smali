.class public abstract Lcom/termux/api/apis/WallpaperAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/WallpaperAPI$WallpaperService;,
        Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;
    }
.end annotation


# direct methods
.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 29
    const-string v0, "WallpaperAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
