.class Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$2;
.super Lcom/termux/api/util/ResultReturner$WithInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->onHandleIntent(Landroid/content/Intent;)V
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

    .line 165
    iput-object p1, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$2;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$2;->this$0:Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    iget-object v0, v0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->queueu:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    const-string v1, ""

    if-ne v0, v1, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
