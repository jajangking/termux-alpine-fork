.class Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetCallbackObserver"
.end annotation


# instance fields
.field private final mViewModelRef:Ljava/lang/ref/WeakReference;


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 767
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;->mViewModelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;->mViewModelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->resetClientCallback()V

    :cond_0
    return-void
.end method
