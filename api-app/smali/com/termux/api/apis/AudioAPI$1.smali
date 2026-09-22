.class Lcom/termux/api/apis/AudioAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/AudioAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$SampleRate:Ljava/lang/String;

.field final synthetic val$bluetootha2dp:Z

.field final synthetic val$bs:I

.field final synthetic val$bs_ll:I

.field final synthetic val$bs_ps:I

.field final synthetic val$framesPerBuffer:Ljava/lang/String;

.field final synthetic val$sr:I

.field final synthetic val$sr_ll:I

.field final synthetic val$sr_ps:I

.field final synthetic val$wiredhs:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$SampleRate:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/api/apis/AudioAPI$1;->val$framesPerBuffer:Ljava/lang/String;

    iput p3, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr:I

    iput p4, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs:I

    iput p5, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr_ll:I

    iput p6, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs_ll:I

    iput p7, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr_ps:I

    iput p8, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs_ps:I

    iput-boolean p9, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bluetootha2dp:Z

    iput-boolean p10, p0, Lcom/termux/api/apis/AudioAPI$1;->val$wiredhs:Z

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 71
    const-string v0, "PROPERTY_OUTPUT_SAMPLE_RATE"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$SampleRate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 72
    const-string v0, "PROPERTY_OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$framesPerBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 73
    const-string v0, "AUDIOTRACK_SAMPLE_RATE"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 74
    const-string v0, "AUDIOTRACK_BUFFER_SIZE_IN_FRAMES"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 75
    iget v0, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr_ll:I

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs_ll:I

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs:I

    if-eq v0, v1, :cond_1

    .line 76
    :cond_0
    const-string v0, "AUDIOTRACK_SAMPLE_RATE_LOW_LATENCY"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr_ll:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 77
    const-string v0, "AUDIOTRACK_BUFFER_SIZE_IN_FRAMES_LOW_LATENCY"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs_ll:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 79
    :cond_1
    iget v0, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr_ps:I

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs_ps:I

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs:I

    if-eq v0, v1, :cond_3

    .line 80
    :cond_2
    const-string v0, "AUDIOTRACK_SAMPLE_RATE_POWER_SAVING"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$sr_ps:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 81
    const-string v0, "AUDIOTRACK_BUFFER_SIZE_IN_FRAMES_POWER_SAVING"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bs_ps:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 83
    :cond_3
    const-string v0, "BLUETOOTH_A2DP_IS_ON"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$bluetootha2dp:Z

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 84
    const-string v0, "WIREDHEADSET_IS_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/termux/api/apis/AudioAPI$1;->val$wiredhs:Z

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 85
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
