.class public Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/FingerprintAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintActivity"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Or9BQ-KQ-ZsFnSES1AAI0sIbkUk(Landroidx/biometric/BiometricPrompt;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;->lambda$addSensorTimeout$0(Landroidx/biometric/BiometricPrompt;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method protected static addSensorTimeout(Landroid/content/Context;Landroid/content/Intent;Landroidx/biometric/BiometricPrompt;)V
    .locals 2

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 214
    new-instance v1, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0, p1}, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/biometric/BiometricPrompt;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected static authenticateWithFingerprint(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 164
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    new-instance v1, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity$1;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;)V

    invoke-direct {v0, p0, p2, v1}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 192
    new-instance p2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    .line 193
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Authenticate"

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 194
    const-string v1, "cancel"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "Cancel"

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 195
    const-string v1, "description"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 198
    :cond_2
    const-string v1, "subtitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 203
    :cond_3
    invoke-virtual {p2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    .line 205
    invoke-static {p0, p1, v0}, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;->addSensorTimeout(Landroid/content/Context;Landroid/content/Intent;Landroidx/biometric/BiometricPrompt;)V

    return-void
.end method

.method private static synthetic lambda$addSensorTimeout$0(Landroidx/biometric/BiometricPrompt;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 215
    sget-boolean v0, Lcom/termux/api/apis/FingerprintAPI;->postedResult:Z

    if-nez v0, :cond_0

    .line 216
    const-string v0, "ERROR_TIMEOUT"

    invoke-static {v0}, Lcom/termux/api/apis/FingerprintAPI;->appendFingerprintError(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt;->cancelAuthentication()V

    .line 218
    sget-object p0, Lcom/termux/api/apis/FingerprintAPI;->fingerprintResult:Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;

    invoke-static {p1, p2, p0}, Lcom/termux/api/apis/FingerprintAPI;->postFingerprintResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFingerprint()V
    .locals 2

    .line 156
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;->authenticateWithFingerprint(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    const-string v0, "FingerprintActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/termux/api/apis/FingerprintAPI$FingerprintActivity;->handleFingerprint()V

    return-void
.end method
