.class Lcom/termux/api/apis/InfraredAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/InfraredAPI;->onReceiveCarrierFrequency(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/termux/api/apis/InfraredAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/termux/api/apis/InfraredAPI$1;->val$context:Landroid/content/Context;

    const-string v1, "consumer_ir"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .line 27
    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->getCarrierFrequencies()[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object p1

    const-string v0, "API_ERROR"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    const-string v0, "Error communicating with the Consumer IR Service"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 33
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 35
    const-string v4, "min"

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->getMinFrequency()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 36
    const-string v4, "max"

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->getMaxFrequency()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :goto_1
    return-void
.end method
