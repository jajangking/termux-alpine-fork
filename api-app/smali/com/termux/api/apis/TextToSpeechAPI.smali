.class public abstract Lcom/termux/api/apis/TextToSpeechAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smgetLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TextToSpeechAPI;->getLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private static getLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 212
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    const-string v0, "TextToSpeechAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
