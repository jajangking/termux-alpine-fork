.class Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;
.super Lcom/termux/api/util/ResultReturner$WithInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$speechEngine:Ljava/lang/String;

.field final synthetic val$speechLanguage:Ljava/lang/String;

.field final synthetic val$speechPitch:F

.field final synthetic val$speechRegion:Ljava/lang/String;

.field final synthetic val$speechVariant:Ljava/lang/String;

.field final synthetic val$streamToUse:I


# direct methods
.method constructor <init>(Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLandroid/content/Intent;I)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iput-object p2, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechEngine:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechLanguage:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechRegion:Ljava/lang/String;

    iput-object p5, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechVariant:Ljava/lang/String;

    iput p6, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechPitch:F

    iput-object p7, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$intent:Landroid/content/Intent;

    iput p8, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$streamToUse:I

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 7

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v0, v0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTtsLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string p1, "TextToSpeechService"

    const-string v0, "Timeout waiting for TTS initialization"

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_8

    .line 124
    :cond_0
    :try_start_1
    const-string v0, "LIST_AVAILABLE"

    iget-object v1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :try_start_2
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v1, v1, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 129
    iget-object v2, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v2, v2, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getEngines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 130
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 131
    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, v3, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 132
    const-string v4, "label"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, v3, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 133
    const-string v4, "default"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 134
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    .line 138
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 125
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 142
    :cond_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v0, v0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1$1;-><init>(Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 168
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechLanguage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 169
    iget-object v1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v1, v1, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechRegion:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechVariant:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/termux/api/apis/TextToSpeechAPI;->-$$Nest$smgetLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    const-string v1, "TextToSpeechService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts.setLanguage(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\') returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v0, v0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$speechPitch:F

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 176
    iget-object v0, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v0, v0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$intent:Landroid/content/Intent;

    const-string v2, "rate"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 178
    const-string v0, "utterance_id"

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    const-string v2, "streamType"

    iget v3, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->val$streamToUse:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v2, "utteranceId"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/termux/api/util/ResultReturner$WithInput;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v3, 0x0

    .line 187
    :cond_4
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 190
    iget-object v5, p0, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService$1;->this$0:Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;

    iget-object v5, v5, Lcom/termux/api/apis/TextToSpeechAPI$TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6, v1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_6

    .line 193
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 195
    monitor-enter p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 196
    :goto_4
    :try_start_8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 199
    :cond_6
    monitor-exit p1

    goto :goto_9

    :goto_5
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 185
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1

    .line 120
    :catch_1
    const-string p1, "TextToSpeechService"

    const-string v0, "Interrupted awaiting TTS initialization"

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return-void

    .line 201
    :goto_8
    const-string v0, "TextToSpeechService"

    const-string v1, "TTS error"

    invoke-static {v0, v1, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method
