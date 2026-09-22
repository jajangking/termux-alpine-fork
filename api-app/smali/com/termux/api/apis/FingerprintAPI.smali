.class public abstract Lcom/termux/api/apis/FingerprintAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;,
        Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;
    }
.end annotation


# static fields
.field protected static fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

.field protected static postedResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-direct {v0}, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;-><init>()V

    sput-object v0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/termux/api/apis/FingerprintAPI;->postedResult:Z

    return-void
.end method

.method protected static addFailedAttempt()V
    .locals 2

    .line 236
    sget-object v0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iget v1, v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->failedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->failedAttempts:I

    return-void
.end method

.method protected static appendFingerprintError(Ljava/lang/String;)V
    .locals 1

    .line 243
    sget-object v0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iget-object v0, v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->errors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 71
    const-string v0, "FingerprintAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/termux/api/apis/FingerprintAPI;->resetFingerprintResult()V

    .line 75
    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Lcom/termux/api/apis/FingerprintAPI;->validateFingerprintSensor(Landroid/content/Context;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 80
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-static {p0, p1, v0}, Lcom/termux/api/apis/FingerprintAPI;->postFingerprintResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V

    :goto_0
    return-void
.end method

.method protected static postFingerprintResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/termux/api/apis/FingerprintAPI$1;

    invoke-direct {v0, p2}, Lcom/termux/api/apis/FingerprintAPI$1;-><init>(Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method protected static resetFingerprintResult()V
    .locals 1

    .line 228
    new-instance v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-direct {v0}, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;-><init>()V

    sput-object v0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    const/4 v0, 0x0

    .line 229
    sput-boolean v0, Lcom/termux/api/apis/FingerprintAPI;->postedResult:Z

    return-void
.end method

.method protected static setAuthResult(Ljava/lang/String;)V
    .locals 1

    .line 250
    sget-object v0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iput-object p0, v0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->authResult:Ljava/lang/String;

    return-void
.end method

.method protected static validateFingerprintSensor(Landroid/content/Context;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)Z
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "No fingerprint scanner found!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    const-string v0, "ERROR_NO_HARDWARE"

    invoke-static {v0}, Lcom/termux/api/apis/FingerprintAPI;->appendFingerprintError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    const-string p1, "No fingerprints enrolled"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 129
    const-string p0, "ERROR_NO_ENROLLED_FINGERPRINTS"

    invoke-static {p0}, Lcom/termux/api/apis/FingerprintAPI;->appendFingerprintError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method
