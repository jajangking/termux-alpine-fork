.class Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->createSpeechRecognizer(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;

.field final synthetic val$listener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;

    iput-object p2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->val$listener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

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
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 888
    const-string p1, "ERROR_UNKNOWN"

    goto :goto_0

    .line 877
    :cond_0
    const-string p1, "ERROR_INSUFFICIENT_PERMISSIONS"

    goto :goto_0

    .line 886
    :cond_1
    const-string p1, "ERROR_SPEECH_TIMEOUT"

    goto :goto_0

    .line 874
    :cond_2
    const-string p1, "ERROR_CLIENT"

    goto :goto_0

    .line 871
    :cond_3
    const-string p1, "ERROR_AUDIO"

    goto :goto_0

    .line 880
    :cond_4
    const-string p1, "ERROR_NETWORK"

    goto :goto_0

    .line 883
    :cond_5
    const-string p1, "ERROR_NETWORK_TIMEOUT"

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;

    iget-object v0, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    iput-object p1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    .line 892
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->val$listener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    invoke-interface {p1, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2

    .line 853
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 855
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;

    iget-object v0, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->text:Ljava/lang/String;

    .line 858
    :cond_0
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->val$listener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;

    iget-object v0, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-interface {p1, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method
