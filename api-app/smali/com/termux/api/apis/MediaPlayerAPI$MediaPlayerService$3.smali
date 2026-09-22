.class Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$3;
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

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 0

    .line 237
    new-instance p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;-><init>()V

    .line 239
    sget-boolean p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    if-eqz p3, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 242
    const-string p1, "Paused playback"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_0
    const-string p1, "Playback already paused"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_1
    const-string p1, "No track to pause"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    :goto_0
    return-object p2
.end method
