.class Lcom/termux/api/apis/NfcAPI$NfcActivity$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/NfcAPI$NfcActivity;->errorNfc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/NfcAPI$NfcActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iput-object p2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 54
    iget-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;->val$error:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;->val$error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 56
    :cond_0
    const-string v1, "nfcPresent"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    if-eqz v0, :cond_2

    .line 58
    const-string v1, "nfcActive"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
