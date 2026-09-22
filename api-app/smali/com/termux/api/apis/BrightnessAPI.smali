.class public abstract Lcom/termux/api/apis/BrightnessAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 17
    const-string v0, "BrightnessAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 20
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    const-string v1, "screen_brightness_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 25
    :cond_0
    const-string v0, "brightness"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xff

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 32
    :goto_0
    const-string v0, "screen_brightness"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method
