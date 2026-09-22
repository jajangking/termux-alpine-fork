.class Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;->authenticateWithFingerprint(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;->val$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 168
    const-string p1, "ERROR_LOCKOUT"

    invoke-static {p1}, Lcom/termux/api/apis/FingerprintAPI;->appendFingerprintError(Ljava/lang/String;)V

    .line 171
    sget-object p1, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    iget p1, p1, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->failedAttempts:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 172
    const-string p1, "ERROR_TOO_MANY_FAILED_ATTEMPTS"

    invoke-static {p1}, Lcom/termux/api/apis/FingerprintAPI;->appendFingerprintError(Ljava/lang/String;)V

    .line 175
    :cond_0
    const-string p1, "AUTH_RESULT_FAILURE"

    invoke-static {p1}, Lcom/termux/api/apis/FingerprintAPI;->setAuthResult(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;->val$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;->val$intent:Landroid/content/Intent;

    sget-object v1, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-static {p1, v0, v1}, Lcom/termux/api/apis/FingerprintAPI;->postFingerprintResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V

    .line 177
    const-string p1, "FingerprintActivity"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 188
    invoke-static {}, Lcom/termux/api/apis/FingerprintAPI;->addFailedAttempt()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 182
    const-string p1, "AUTH_RESULT_SUCCESS"

    invoke-static {p1}, Lcom/termux/api/apis/FingerprintAPI;->setAuthResult(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;->val$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;->val$intent:Landroid/content/Intent;

    sget-object v1, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-static {p1, v0, v1}, Lcom/termux/api/apis/FingerprintAPI;->postFingerprintResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V

    return-void
.end method
