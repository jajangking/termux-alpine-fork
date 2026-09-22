.class Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .line 110
    const-string v0, "SpeechToTextService"

    const-string v1, "RecognitionListener#onEndOfSpeech()"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    iget-object v0, v0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->queueu:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(I)V
    .locals 2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    const-string p1, "ERROR_INSUFFICIENT_PERMISSIONS"

    goto :goto_0

    .line 97
    :cond_1
    const-string p1, "ERROR_RECOGNIZER_BUSY"

    goto :goto_0

    .line 94
    :cond_2
    const-string p1, "ERROR_SPEECH_TIMEOUT"

    goto :goto_0

    .line 91
    :cond_3
    const-string p1, "ERROR_CLIENT"

    .line 104
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionListener#onError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechToTextService"

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    iget-object p1, p1, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->queueu:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionListener#onPartialResults("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechToTextService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    iget-object v0, v0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->queueu:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionListener#onResults("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechToTextService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    iget-object v0, v0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->queueu:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method
