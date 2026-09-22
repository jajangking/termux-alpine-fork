.class public abstract Lcom/termux/api/apis/SpeechToTextAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;
    }
.end annotation


# direct methods
.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 183
    const-string v0, "SpeechToTextAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
