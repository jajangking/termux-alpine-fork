.class Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$5;
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

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 0

    .line 285
    new-instance p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;-><init>()V

    .line 287
    sget-boolean p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    if-eqz p3, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 289
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/4 p1, 0x0

    .line 290
    sput-boolean p1, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    .line 291
    const-string p1, "Stopped playback\nTrack cleared"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_0
    const-string p1, "No track to stop"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    :goto_0
    return-object p2
.end method
