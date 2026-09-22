.class public abstract Lcom/termux/api/apis/AudioAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 20
    const-string v0, "AudioAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 23
    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v10

    .line 26
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v11

    .line 30
    new-instance p1, Landroid/media/AudioTrack$Builder;

    invoke-direct {p1}, Landroid/media/AudioTrack$Builder;-><init>()V

    const/4 v0, 0x4

    .line 31
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v4

    .line 34
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v5

    .line 35
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 38
    new-instance v6, Landroid/media/AudioTrack$Builder;

    invoke-direct {v6}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 39
    invoke-virtual {v6, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 40
    invoke-static {v6, v7}, Lcom/termux/api/apis/AudioAPI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v6

    goto :goto_0

    .line 43
    :cond_0
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v7, 0x100

    .line 44
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 45
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 46
    new-instance v7, Landroid/media/AudioTrack$Builder;

    invoke-direct {v7}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 47
    invoke-virtual {v7, v6}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v6

    .line 48
    invoke-virtual {v6, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v6

    .line 51
    :goto_0
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v7

    .line 52
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v8

    .line 53
    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    if-lt p1, v1, :cond_1

    .line 56
    new-instance p1, Landroid/media/AudioTrack$Builder;

    invoke-direct {p1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 57
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 58
    invoke-static {p1, v0}, Lcom/termux/api/apis/AudioAPI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v1

    .line 62
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    move v9, v1

    goto :goto_1

    :cond_1
    move v0, v4

    move v9, v5

    .line 68
    :goto_1
    new-instance p1, Lcom/termux/api/apis/AudioAPI$1;

    move-object v1, p1

    move v6, v7

    move v7, v8

    move v8, v0

    invoke-direct/range {v1 .. v11}, Lcom/termux/api/apis/AudioAPI$1;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
