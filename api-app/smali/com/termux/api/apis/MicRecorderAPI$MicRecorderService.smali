.class public Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/MicRecorderAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MicRecorderService"
.end annotation


# static fields
.field protected static file:Ljava/io/File;

.field static infoHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

.field protected static isRecording:Z

.field protected static mediaRecorder:Landroid/media/MediaRecorder;

.field static quitHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

.field static recordHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;


# direct methods
.method public static synthetic $r8$lambda$WL9xx0Em2XV-UCBZdbpG290HN90(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->lambda$getRecorderCommandHandler$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oc4yyRwKqCelhEDWls1DuyLRu0w(Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->lambda$postRecordCommandResult$1(Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$1;

    invoke-direct {v0}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$1;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->infoHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    .line 206
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$2;

    invoke-direct {v0}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$2;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->recordHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    .line 301
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$3;

    invoke-direct {v0}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$3;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->quitHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method protected static cleanupMediaRecorder()V
    .locals 1

    .line 136
    sget-boolean v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    .line 140
    :cond_0
    sget-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 141
    sget-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method

.method protected static getDefaultRecordingFilename()Ljava/lang/String;
    .locals 4

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/TermuxAudioRecording_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getMediaRecorder(Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;)V
    .locals 1

    .line 121
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 122
    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 123
    sget-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method

.method protected static getRecorderCommandHandler(Ljava/lang/String;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;
    .locals 3

    if-nez p0, :cond_0

    .line 86
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
    const-string v2, "quit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "record"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 94
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 92
    :pswitch_0
    sget-object p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->quitHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    return-object p0

    .line 88
    :pswitch_1
    sget-object p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->infoHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    return-object p0

    .line 90
    :pswitch_2
    sget-object p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->recordHandler:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b993af -> :sswitch_2
        0x3164ae -> :sswitch_1
        0x35224f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getRecordingInfoJSONString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 178
    :try_start_0
    const-string v1, "isRecording"

    sget-boolean v2, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    sget-boolean v1, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "outputFile"

    sget-object v2, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x2

    .line 181
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 183
    :goto_1
    const-string v1, "MicRecorderService"

    const-string v2, "infoHandler json error"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method private static synthetic lambda$getRecorderCommandHandler$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;
    .locals 3

    .line 95
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    invoke-direct {v0}, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;-><init>()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->error:Ljava/lang/String;

    .line 97
    sget-boolean p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    if-nez p0, :cond_0

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$postRecordCommandResult$1(Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;Ljava/io/PrintWriter;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 109
    iget-object p0, p0, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->error:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 113
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method protected static postRecordCommandResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda1;-><init>(Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->getMediaRecorder(Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    const-string v0, "MicRecorderService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->cleanupMediaRecorder()V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 151
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

    const-string p2, "MicRecorderService"

    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 153
    sput-boolean p1, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    .line 154
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo: what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MicRecorderService"

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 73
    const-string p2, "MicRecorderService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 78
    invoke-static {p2}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->getRecorderCommandHandler(Ljava/lang/String;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;

    move-result-object p2

    .line 79
    invoke-interface {p2, p3, p1}, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;->handle(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    move-result-object p2

    .line 80
    invoke-static {p3, p1, p2}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->postRecordCommandResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;)V

    const/4 p1, 0x2

    return p1
.end method
