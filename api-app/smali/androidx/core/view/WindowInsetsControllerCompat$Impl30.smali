.class Landroidx/core/view/WindowInsetsControllerCompat$Impl30;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field final mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

.field final mInsetsController:Landroid/view/WindowInsetsController;

.field private final mListeners:Landroidx/collection/SimpleArrayMap;

.field final mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

.field protected mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 1

    .line 629
    invoke-static {p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    .line 630
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 1

    .line 635
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 619
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Landroidx/collection/SimpleArrayMap;

    .line 636
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 637
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 638
    iput-object p3, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    return-void
.end method


# virtual methods
.method public isAppearanceLightStatusBars()Z
    .locals 2

    .line 665
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    .line 666
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsetsController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    .line 707
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_0

    .line 708
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->setSystemUiFlag(I)V

    .line 711
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {p1, v0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    .line 715
    :cond_1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_2

    .line 716
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->unsetSystemUiFlag(I)V

    .line 719
    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 673
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_0

    .line 674
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->setSystemUiFlag(I)V

    .line 677
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {p1, v1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    .line 681
    :cond_1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_2

    .line 682
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->unsetSystemUiFlag(I)V

    .line 685
    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method protected setSystemUiFlag(I)V
    .locals 2

    .line 827
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    .line 828
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method show(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->show()V

    .line 646
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-static {v0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 2

    .line 820
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 821
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
