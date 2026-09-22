.class public Lcom/termux/app/activities/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity;->setContentView(I)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/termux/app/activities/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08015b

    new-instance v2, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;

    invoke-direct {v2}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;-><init>()V

    .line 37
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/activities/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_1

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 45
    :cond_1
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/termux/app/activities/SettingsActivity;->onBackPressed()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
