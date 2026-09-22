.class public abstract Lcom/termux/api/apis/KeystoreAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$1cXFN1D2oYI3gS_XCyUx_otevio(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->lambda$generateKey$1(Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ehHAV5R-TeFP8RyQpYgjGv-oLuU(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->lambda$deleteKey$0(Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetKeyStore()Ljava/security/KeyStore;
    .locals 1

    .line 0
    invoke-static {}, Lcom/termux/api/apis/KeystoreAPI;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smprintPrivateKey(Landroid/util/JsonWriter;Ljava/security/KeyStore$PrivateKeyEntry;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/KeystoreAPI;->printPrivateKey(Landroid/util/JsonWriter;Ljava/security/KeyStore$PrivateKeyEntry;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadStream(Ljava/io/InputStream;)[B
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/KeystoreAPI;->readStream(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static deleteKey(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
    .locals 1

    .line 158
    new-instance v0, Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static generateKey(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static getKeyStore()Ljava/security/KeyStore;
    .locals 2

    .line 310
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-object v0
.end method

.method private static synthetic lambda$deleteKey$0(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 159
    const-string p1, "alias"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {}, Lcom/termux/api/apis/KeystoreAPI;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$generateKey$1(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 7

    .line 199
    const-string p1, "alias"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    const-string v0, "algorithm"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "purposes"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 202
    const-string v3, "digests"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 203
    const-string v4, "size"

    const/16 v5, 0x800

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 204
    const-string v5, "curve"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    const-string v6, "validity"

    invoke-virtual {p0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 207
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v2, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 210
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 211
    const-string p1, "RSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    new-instance p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {p1, v4, v1}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 215
    const-string p1, "PKCS1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 218
    :cond_0
    const-string p1, "EC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    new-instance p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {p1, v5}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_1
    if-lez p0, :cond_2

    const/4 p1, 0x1

    .line 223
    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 224
    invoke-virtual {v2, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 227
    :cond_2
    const-string p0, "AndroidKeyStore"

    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    .line 228
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 229
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    return-void
.end method

.method private static listKeys(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/termux/api/apis/KeystoreAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/KeystoreAPI$1;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
    .locals 3

    .line 49
    const-string v0, "KeystoreAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "generate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "sign"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "verify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 56
    :pswitch_0
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->generateKey(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->signData(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V

    goto :goto_1

    .line 53
    :pswitch_2
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->listKeys(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V

    goto :goto_1

    .line 65
    :pswitch_3
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->verifyData(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V

    goto :goto_1

    .line 59
    :pswitch_4
    invoke-static {p0, p1}, Lcom/termux/api/apis/KeystoreAPI;->deleteKey(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_4
        -0x30df7787 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x35ddbd -> :sswitch_1
        0x6be81575 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static printPrivateKey(Landroid/util/JsonWriter;Ljava/security/KeyStore$PrivateKeyEntry;Z)V
    .locals 5

    .line 111
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    const-class v3, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/KeyInfo;

    .line 115
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    .line 117
    const-string v2, "algorithm"

    invoke-virtual {p0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 118
    const-string v1, "size"

    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/security/keystore/KeyInfo;->getKeySize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/16 v1, 0x10

    if-eqz p2, :cond_0

    .line 120
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    .line 121
    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 123
    const-string v3, "modulus"

    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 124
    const-string v3, "exponent"

    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_0
    if-eqz p2, :cond_1

    .line 126
    instance-of p2, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz p2, :cond_1

    .line 127
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 129
    const-string p2, "x"

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p2

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 130
    const-string p2, "y"

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p2

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 133
    :cond_1
    const-string p1, "inside_secure_hardware"

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {v0}, Landroid/security/keystore/KeyInfo;->isInsideSecureHardware()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 135
    const-string p1, "user_authentication"

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 137
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 138
    const-string p1, "required"

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {v0}, Landroid/security/keystore/KeyInfo;->isUserAuthenticationRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 140
    const-string p1, "enforced_by_secure_hardware"

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 141
    invoke-virtual {v0}, Landroid/security/keystore/KeyInfo;->isUserAuthenticationRequirementEnforcedBySecureHardware()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 143
    invoke-virtual {v0}, Landroid/security/keystore/KeyInfo;->getUserAuthenticationValidityDurationSeconds()I

    move-result p1

    if-ltz p1, :cond_2

    .line 145
    const-string p2, "validity_duration_seconds"

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private static readStream(Ljava/io/InputStream;)[B
    .locals 4

    .line 320
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 321
    new-array v1, v1, [B

    .line 323
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 324
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static signData(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
    .locals 1

    .line 248
    new-instance v0, Lcom/termux/api/apis/KeystoreAPI$2;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/KeystoreAPI$2;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static verifyData(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V
    .locals 1

    .line 284
    new-instance v0, Lcom/termux/api/apis/KeystoreAPI$3;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/KeystoreAPI$3;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
