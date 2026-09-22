.class public Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/TextToSpeechAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextToSpeechService"
.end annotation


# instance fields
.field mTts:Landroid/speech/tts/TextToSpeech;

.field final mTtsLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$HosiXZNGDEFC7SIFqboD4LHEaGs(Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->lambda$onHandleIntent$0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    const-class v0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTtsLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private synthetic lambda$onHandleIntent$0(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTtsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed tts initialization: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextToSpeechService"

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 48
    const-string v0, "TextToSpeechService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 55
    const-string v0, "TextToSpeechService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHandleIntent:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextToSpeechService"

    invoke-static {v6, v5}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v5, "language"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    const-string v6, "region"

    invoke-virtual {v10, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    const-string v7, "variant"

    invoke-virtual {v10, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    const-string v8, "engine"

    invoke-virtual {v10, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    const-string v11, "pitch"

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v11

    .line 75
    const-string v12, "stream"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    if-eqz v12, :cond_6

    const/4 v14, -0x1

    .line 77
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v15, "MUSIC"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    move v14, v0

    goto :goto_0

    :sswitch_1
    const-string v15, "ALARM"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    move v14, v1

    goto :goto_0

    :sswitch_2
    const-string v15, "RING"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    move v14, v13

    goto :goto_0

    :sswitch_3
    const-string v15, "VOICE_CALL"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    move v14, v2

    goto :goto_0

    :sswitch_4
    const-string v15, "NOTIFICATION"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    move v14, v3

    goto :goto_0

    :sswitch_5
    const-string v15, "SYSTEM"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    move v14, v4

    :goto_0
    packed-switch v14, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v13, v1

    goto :goto_1

    :pswitch_1
    move v13, v2

    goto :goto_1

    :pswitch_2
    move v13, v4

    goto :goto_1

    :pswitch_3
    move v13, v0

    goto :goto_1

    :pswitch_4
    move v13, v3

    .line 100
    :cond_6
    :goto_1
    :pswitch_5
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9}, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;)V

    invoke-direct {v0, v9, v1, v8}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 109
    new-instance v12, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v11

    move-object/from16 v7, p1

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;-><init>(Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLandroid/content/Intent;I)V

    invoke-static {v9, v10, v12}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d5099d1 -> :sswitch_5
        -0x52668f15 -> :sswitch_4
        -0x3ba5e295 -> :sswitch_3
        0x266230 -> :sswitch_2
        0x3b78231 -> :sswitch_1
        0x464f605 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
