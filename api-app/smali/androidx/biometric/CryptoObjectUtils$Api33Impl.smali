.class abstract Landroidx/biometric/CryptoObjectUtils$Api33Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/CryptoObjectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33Impl"
.end annotation


# direct methods
.method static create(Landroid/security/identity/PresentationSession;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    .line 320
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Landroid/security/identity/PresentationSession;)V

    return-object v0
.end method

.method static getPresentationSession(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroid/security/identity/PresentationSession;
    .locals 0

    .line 334
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getPresentationSession()Landroid/security/identity/PresentationSession;

    move-result-object p0

    return-object p0
.end method
