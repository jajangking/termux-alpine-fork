.class Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;
    .locals 2

    .line 198
    new-instance v0, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    invoke-direct {v0}, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;-><init>()V

    .line 199
    invoke-static {}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->getRecordingInfoJSONString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->message:Ljava/lang/String;

    .line 200
    sget-boolean v1, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-object v0
.end method
