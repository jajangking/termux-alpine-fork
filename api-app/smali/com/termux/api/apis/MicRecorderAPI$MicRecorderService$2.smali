.class Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$2;
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

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;
    .locals 16

    move-object/from16 v1, p2

    .line 209
    new-instance v2, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    invoke-direct {v2}, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;-><init>()V

    .line 211
    const-string v0, "limit"

    const v3, 0xdbba0

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x3e8

    if-lez v0, :cond_0

    if-ge v0, v3, :cond_0

    move v0, v3

    .line 216
    :cond_0
    const-string v4, "encoder"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    .line 217
    :goto_0
    new-instance v5, Landroid/util/ArrayMap;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v8, 0x3

    .line 218
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "aac"

    invoke-virtual {v5, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    .line 219
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "amr_nb"

    invoke-virtual {v5, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x2

    .line 220
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "amr_wb"

    invoke-virtual {v5, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x7

    const/16 v13, 0x1d

    if-lt v11, v13, :cond_2

    .line 222
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "opus"

    invoke-virtual {v5, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 226
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 228
    :cond_3
    const-string v5, "format"

    const/4 v14, 0x0

    invoke-virtual {v1, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/16 v15, 0xb

    if-nez v5, :cond_5

    .line 230
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 231
    invoke-virtual {v5, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    invoke-virtual {v5, v9, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    invoke-virtual {v5, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    if-lt v11, v13, :cond_4

    .line 238
    invoke-virtual {v5, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 242
    :cond_5
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 243
    const-string v8, ".m4a"

    invoke-virtual {v7, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    const-string v8, ".3gp"

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-lt v11, v13, :cond_6

    .line 246
    const-string v8, ".ogg"

    invoke-virtual {v7, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    :cond_6
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 249
    const-string v8, "file"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->getDefaultRecordingFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_8

    move-object v6, v7

    :cond_8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    :goto_1
    const-string v7, "source"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 253
    const-string v8, "bitrate"

    invoke-virtual {v1, v8, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 254
    const-string v10, "srate"

    invoke-virtual {v1, v10, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 255
    const-string v11, "channels"

    invoke-virtual {v1, v11, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 257
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->file:Ljava/io/File;

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MediaRecording file is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->file:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MicRecorderService"

    invoke-static {v13, v12}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v12, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 262
    sget-object v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "File: %s already exists! Please specify a different filename"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->error:Ljava/lang/String;

    goto/16 :goto_5

    .line 264
    :cond_9
    sget-boolean v12, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    if-eqz v12, :cond_a

    .line 265
    const-string v0, "Recording already in progress!"

    iput-object v0, v2, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->error:Ljava/lang/String;

    goto/16 :goto_5

    .line 268
    :cond_a
    :try_start_0
    sget-object v12, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 269
    sget-object v7, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 270
    sget-object v5, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 271
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 272
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    if-lez v8, :cond_b

    .line 274
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_b
    :goto_2
    if-lez v10, :cond_c

    .line 276
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v10}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_c
    if-lez v11, :cond_d

    .line 278
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v11}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 279
    :cond_d
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    .line 280
    sget-object v4, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 281
    sput-boolean v9, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    .line 282
    const-string v4, "Recording started: %s \nMax Duration: %s"

    sget-object v5, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->file:Ljava/io/File;

    .line 283
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    if-gtz v0, :cond_e

    .line 285
    const-string v0, "unlimited"

    goto :goto_3

    .line 286
    :cond_e
    div-int/2addr v0, v3

    invoke-static {v0}, Lcom/termux/api/apis/MediaPlayerAPI;->getTimeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 282
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 290
    :goto_4
    const-string v3, "MediaRecorder error"

    invoke-static {v13, v3, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recording error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;->error:Ljava/lang/String;

    .line 295
    :goto_5
    sget-boolean v0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->isRecording:Z

    if-nez v0, :cond_f

    .line 296
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_f
    return-object v2
.end method
