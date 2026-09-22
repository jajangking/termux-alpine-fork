.class Lcom/termux/api/apis/KeystoreAPI$3;
.super Lcom/termux/api/util/ResultReturner$WithInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/KeystoreAPI;->verifyData(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
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

    .line 284
    iput-object p1, p0, Lcom/termux/api/apis/KeystoreAPI$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 10

    .line 287
    iget-object v0, p0, Lcom/termux/api/apis/KeystoreAPI$3;->val$intent:Landroid/content/Intent;

    const-string v1, "alias"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/termux/api/apis/KeystoreAPI$3;->val$intent:Landroid/content/Intent;

    const-string v2, "algorithm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/termux/api/util/ResultReturner$WithInput;->in:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/termux/api/apis/KeystoreAPI;->-$$Nest$smreadStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 290
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/termux/api/apis/KeystoreAPI$3;->val$intent:Landroid/content/Intent;

    const-string v5, "signature"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 293
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 294
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, v5

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 296
    :cond_0
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 297
    invoke-static {}, Lcom/termux/api/apis/KeystoreAPI;->-$$Nest$smgetKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 298
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 299
    invoke-virtual {v1, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    .line 301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method
