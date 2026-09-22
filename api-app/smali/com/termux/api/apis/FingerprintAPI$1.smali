.class Lcom/termux/api/apis/FingerprintAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/FingerprintAPI;->postFingerprintResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/termux/api/apis/FingerprintAPI$1;->val$result:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 96
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 97
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 99
    iget-object v0, p0, Lcom/termux/api/apis/FingerprintAPI$1;->val$result:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iget-object v0, v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 104
    const-string v0, "failed_attempts"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/api/apis/FingerprintAPI$1;->val$result:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iget v1, v1, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->failedAttempts:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 105
    const-string v0, "auth_result"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/api/apis/FingerprintAPI$1;->val$result:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iget-object v1, v1, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->authResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 106
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 108
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    .line 109
    invoke-virtual {p1}, Landroid/util/JsonWriter;->close()V

    const/4 p1, 0x1

    .line 110
    sput-boolean p1, Lcom/termux/api/apis/FingerprintAPI;->postedResult:Z

    return-void
.end method
