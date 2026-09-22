.class Lcom/termux/api/apis/VibrateAPI$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/VibrateAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/termux/api/apis/VibrateAPI$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/VibrateAPI$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/termux/api/apis/VibrateAPI$1;->val$context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 26
    iget-object v1, p0, Lcom/termux/api/apis/VibrateAPI$1;->val$intent:Landroid/content/Intent;

    const-string v2, "duration_ms"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/termux/api/apis/VibrateAPI$1;->val$intent:Landroid/content/Intent;

    const-string v3, "force"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 29
    iget-object v3, p0, Lcom/termux/api/apis/VibrateAPI$1;->val$context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 30
    const-string v4, "VibrateAPI"

    if-nez v3, :cond_0

    .line 31
    const-string v0, "Audio service null"

    invoke-static {v4, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_3

    .line 38
    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    int-to-long v1, v1

    const/4 v3, -0x1

    .line 39
    invoke-static {v1, v2, v3}, Lcom/termux/api/apis/VibrateAPI$1$$ExternalSyntheticApiModelOutline0;->m(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 41
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Lcom/termux/api/apis/VibrateAPI$1$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    int-to-long v1, v1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    :goto_0
    const-string v1, "Failed to run vibrator"

    invoke-static {v4, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
