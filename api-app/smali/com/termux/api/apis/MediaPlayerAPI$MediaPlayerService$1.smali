.class Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$1;
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

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 1

    .line 187
    new-instance p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;-><init>()V

    .line 189
    sget-boolean p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    if-eqz p3, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Playing"

    goto :goto_0

    :cond_0
    const-string p3, "Paused"

    .line 191
    :goto_0
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->trackName:Ljava/lang/String;

    invoke-static {p1}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->getPlaybackPositionString(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Status: %s\nTrack: %s\nCurrent Position: %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    goto :goto_1

    .line 193
    :cond_1
    const-string p1, "No track currently!"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    :goto_1
    return-object p2
.end method
