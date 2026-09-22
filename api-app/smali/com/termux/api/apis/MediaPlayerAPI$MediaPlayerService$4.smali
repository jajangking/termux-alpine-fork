.class Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 1

    .line 265
    new-instance p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;-><init>()V

    .line 266
    sget-boolean p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    if-eqz p3, :cond_1

    .line 267
    sget-object p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->trackName:Ljava/lang/String;

    invoke-static {p1}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->getPlaybackPositionString(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Track: %s\nCurrent Position: %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 269
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already playing track!\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resumed playback\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_1
    const-string p1, "No previous track to resume!\nPlease supply a new media file"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    :goto_0
    return-object p2
.end method
