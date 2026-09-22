.class Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->writeResult(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;

.field final synthetic val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->this$1:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;

    iput-object p2, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter p1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 163
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 164
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 152
    const-string p1, "TextToSpeechService"

    const-string v0, "UtteranceProgressListener.onError() called"

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter p1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 155
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;->val$ttsDoneUtterancesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
