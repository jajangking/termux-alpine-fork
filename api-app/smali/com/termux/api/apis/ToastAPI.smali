.class public abstract Lcom/termux/api/apis/ToastAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static getColorExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    const-string v0, "Failed to parse color \'%s\' for \'%s\'"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastAPI"

    invoke-static {p1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p2
.end method

.method protected static getGravityExtra(Landroid/content/Intent;)I
    .locals 1

    .line 68
    const-string v0, "gravity"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 70
    const-string p0, ""

    :cond_0
    const-string v0, "bottom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "top"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x11

    return p0

    :cond_1
    const/16 p0, 0x30

    return p0

    :cond_2
    const/16 p0, 0x50

    return p0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 23
    const-string v0, "ToastAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "short"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    .line 26
    const-string v0, "background"

    const v1, -0x777778

    invoke-static {p1, v0, v1}, Lcom/termux/api/apis/ToastAPI;->getColorExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v5

    .line 27
    const-string v0, "text_color"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/termux/api/apis/ToastAPI;->getColorExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    .line 28
    invoke-static {p1}, Lcom/termux/api/apis/ToastAPI;->getGravityExtra(Landroid/content/Intent;)I

    move-result v7

    .line 30
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v0, Lcom/termux/api/apis/ToastAPI$1;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/termux/api/apis/ToastAPI$1;-><init>(Landroid/os/Handler;Landroid/content/Context;IIII)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
