.class Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$2;
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

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 2

    .line 202
    new-instance p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;-><init>()V

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "file"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    sget-boolean p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    if-eqz p3, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 214
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/4 p3, 0x0

    .line 215
    sput-boolean p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    .line 219
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 227
    sput-boolean p1, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->trackName:Ljava/lang/String;

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Now Playing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->trackName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    return-object p2

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->error:Ljava/lang/String;

    return-object p2

    .line 208
    :catch_1
    const-string p1, "No file was specified"

    iput-object p1, p2, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->error:Ljava/lang/String;

    return-object p2
.end method
