.class Lcom/termux/api/apis/InfraredAPI$2;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/InfraredAPI;->onReceiveTransmit(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/termux/api/apis/InfraredAPI$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/InfraredAPI$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/termux/api/apis/InfraredAPI$2;->val$context:Landroid/content/Context;

    const-string v1, "consumer_ir"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .line 57
    iget-object v1, p0, Lcom/termux/api/apis/InfraredAPI$2;->val$intent:Landroid/content/Intent;

    const-string v2, "frequency"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    iget-object v2, p0, Lcom/termux/api/apis/InfraredAPI$2;->val$intent:Landroid/content/Intent;

    const-string v4, "pattern"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    const-string v3, "No infrared emitter available"

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 64
    const-string v3, "Missing \'frequency\' extra"

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    .line 65
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 66
    :cond_3
    :goto_0
    const-string v3, "Missing \'pattern\' extra"

    :goto_1
    if-eqz v3, :cond_4

    .line 70
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object p1

    const-string v0, "API_ERROR"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    .line 74
    :cond_4
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ConsumerIrManager;->transmit(I[I)V

    return-void
.end method
