.class Lcom/termux/api/apis/KeystoreAPI$2;
.super Lcom/termux/api/util/ResultReturner$WithInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/KeystoreAPI;->signData(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
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

    .line 248
    iput-object p1, p0, Lcom/termux/api/apis/KeystoreAPI$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/termux/api/apis/KeystoreAPI$2;->val$intent:Landroid/content/Intent;

    const-string v1, "alias"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/termux/api/apis/KeystoreAPI$2;->val$intent:Landroid/content/Intent;

    const-string v2, "algorithm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/termux/api/util/ResultReturner$WithInput;->in:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/termux/api/apis/KeystoreAPI;->-$$Nest$smreadStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 255
    invoke-static {}, Lcom/termux/api/apis/KeystoreAPI;->-$$Nest$smgetKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 256
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 257
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 258
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 259
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 263
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method
