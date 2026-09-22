.class Lcom/termux/api/apis/KeystoreAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/KeystoreAPI;->listKeys(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/termux/api/apis/KeystoreAPI$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 5

    .line 82
    invoke-static {}, Lcom/termux/api/apis/KeystoreAPI;->-$$Nest$smgetKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/termux/api/apis/KeystoreAPI$1;->val$intent:Landroid/content/Intent;

    const-string v3, "detailed"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 87
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    const-string v4, "alias"

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 94
    instance-of v4, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v4, :cond_0

    .line 95
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-static {p1, v3, v2}, Lcom/termux/api/apis/KeystoreAPI;->-$$Nest$smprintPrivateKey(Landroid/util/JsonWriter;Ljava/security/KeyStore$PrivateKeyEntry;Z)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method
