.class public Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/MediaPlayerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaPlayerService"
.end annotation


# static fields
.field protected static hasTrack:Z

.field static infoHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

.field protected static mediaPlayer:Landroid/media/MediaPlayer;

.field static pauseHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

.field static playHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

.field static resumeHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

.field static stopHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

.field protected static trackName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$J0J2IbaJybcc0J9v4qDItXC_BNs(Ljava/lang/String;Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->lambda$getMediaCommandHandler$0(Ljava/lang/String;Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QO9FTwrpu2iTdI3v-sZwtSjL3_4(Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->lambda$postMediaCommandResult$1(Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$1;

    invoke-direct {v0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$1;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->infoHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    .line 199
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$2;

    invoke-direct {v0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$2;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->playHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    .line 234
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$3;

    invoke-direct {v0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$3;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->pauseHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    .line 262
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$4;

    invoke-direct {v0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$4;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->resumeHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    .line 282
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$5;

    invoke-direct {v0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$5;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->stopHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method protected static cleanUpMediaPlayer()V
    .locals 1

    .line 117
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 119
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 120
    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method protected static getMediaCommandHandler(Ljava/lang/String;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;
    .locals 3

    if-nez p0, :cond_0

    .line 142
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 154
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 148
    :pswitch_0
    sget-object p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->pauseHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    return-object p0

    .line 152
    :pswitch_1
    sget-object p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->stopHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    return-object p0

    .line 146
    :pswitch_2
    sget-object p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->playHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    return-object p0

    .line 144
    :pswitch_3
    sget-object p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->infoHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    return-object p0

    .line 150
    :pswitch_4
    sget-object p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->resumeHandler:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b237d3 -> :sswitch_4
        0x3164ae -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x360802 -> :sswitch_1
        0x65825f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getPlaybackPositionString(Landroid/media/MediaPlayer;)Ljava/lang/String;
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 258
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/termux/api/apis/MediaPlayerAPI;->getTimeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/termux/api/apis/MediaPlayerAPI;->getTimeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMediaCommandHandler$0(Ljava/lang/String;Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 0

    .line 155
    new-instance p1, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-direct {p1}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;-><init>()V

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown command: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->error:Ljava/lang/String;

    return-object p1
.end method

.method private static synthetic lambda$postMediaCommandResult$1(Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;Ljava/io/PrintWriter;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 170
    iget-object p0, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->error:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method protected static postMediaCommandResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method


# virtual methods
.method protected getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 3

    .line 78
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 80
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 81
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 82
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 83
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 85
    :cond_0
    sget-object v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    sput-boolean v0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->hasTrack:Z

    .line 138
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 107
    const-string v0, "MediaPlayerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 110
    invoke-static {}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->cleanUpMediaPlayer()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", extra: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayerService"

    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 92
    const-string p2, "MediaPlayerService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p0}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p3

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    invoke-static {p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->getMediaCommandHandler(Ljava/lang/String;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;

    move-result-object p2

    .line 100
    invoke-interface {p2, p3, v0, p1}, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;->handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    move-result-object p2

    .line 101
    invoke-static {v0, p1, p2}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->postMediaCommandResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;)V

    const/4 p1, 0x2

    return p1
.end method
