.class public abstract Lcom/termux/api/apis/VolumeAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static streamMap:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$Kqspg3YrPY5LQjFg426xQgogCus(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/VolumeAPI;->lambda$printError$0(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetStreamsInfo(Landroid/media/AudioManager;Landroid/util/JsonWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/VolumeAPI;->getStreamsInfo(Landroid/media/AudioManager;Landroid/util/JsonWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    .line 21
    const-string v2, "alarm"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "music"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "ring"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method protected static getAudioStream(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez p0, :cond_0

    .line 122
    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move p0, v6

    goto :goto_1

    :sswitch_0
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_1

    :sswitch_1
    const-string v7, "music"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string v7, "ring"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v3

    goto :goto_1

    :sswitch_4
    const-string v7, "call"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move p0, v4

    goto :goto_1

    :sswitch_5
    const-string v7, "system"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move p0, v5

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v6

    :pswitch_0
    return v0

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    :pswitch_3
    return v3

    :pswitch_4
    return v5

    :pswitch_5
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x34e38dd1 -> :sswitch_5
        0x2e7a5e -> :sswitch_4
        0x356a30 -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x636ee25 -> :sswitch_1
        0x237a88eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getStreamInfo(Landroid/media/AudioManager;Landroid/util/JsonWriter;I)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 111
    const-string v0, "stream"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    sget-object v1, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 112
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 113
    const-string v0, "max_volume"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 115
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private static getStreamsInfo(Landroid/media/AudioManager;Landroid/util/JsonWriter;)V
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    .line 98
    :goto_0
    sget-object v1, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    sget-object v1, Lcom/termux/api/apis/VolumeAPI;->streamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 100
    invoke-static {p0, p1, v1}, Lcom/termux/api/apis/VolumeAPI;->getStreamInfo(Landroid/media/AudioManager;Landroid/util/JsonWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method private static synthetic lambda$printError$0(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 58
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 59
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 60
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 32
    const-string v0, "VolumeAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "set-volume"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "stream"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/termux/api/apis/VolumeAPI;->getAudioStream(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: Unknown stream: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p1, p2, p0}, Lcom/termux/api/apis/VolumeAPI;->printError(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p2, v0, v2}, Lcom/termux/api/apis/VolumeAPI;->setStreamVolume(Landroid/content/Intent;Landroid/media/AudioManager;I)V

    .line 46
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/termux/api/apis/VolumeAPI;->printAllStreamInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/media/AudioManager;)V

    :goto_0
    return-void
.end method

.method private static printAllStreamInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/media/AudioManager;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/termux/api/apis/VolumeAPI$1;

    invoke-direct {v0, p2}, Lcom/termux/api/apis/VolumeAPI$1;-><init>(Landroid/media/AudioManager;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static printError(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/termux/api/apis/VolumeAPI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/termux/api/apis/VolumeAPI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static setStreamVolume(Landroid/content/Intent;Landroid/media/AudioManager;I)V
    .locals 2

    .line 68
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 69
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    if-lt p0, v0, :cond_1

    move p0, v0

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
