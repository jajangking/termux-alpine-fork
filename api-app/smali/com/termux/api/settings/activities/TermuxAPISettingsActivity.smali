.class public Lcom/termux/api/settings/activities/TermuxAPISettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V

    .line 33
    sget v0, Lcom/termux/api/R$layout;->activity_termux_api_settings:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/termux/api/R$id;->settings:I

    new-instance v2, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

    invoke-direct {v2}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;-><init>()V

    .line 37
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 41
    :cond_0
    sget p1, Lcom/termux/shared/R$id;->toolbar:I

    invoke-static {p0, p1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 42
    invoke-static {p0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setShowBackButtonInActionBar(Landroidx/appcompat/app/AppCompatActivity;Z)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
