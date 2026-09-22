.class public Lcom/termux/app/fragments/settings/TermuxPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "TermuxPreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "savedInstanceState",
            "rootKey"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/termux/app/fragments/settings/TermuxPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/fragments/settings/TermuxPreferencesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    .line 23
    .local v1, "preferenceManager":Landroidx/preference/PreferenceManager;
    invoke-static {v0}, Lcom/termux/app/fragments/settings/TermuxPreferencesDataStore;->getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/TermuxPreferencesDataStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 25
    const v2, 0x7f13000c

    invoke-virtual {p0, v2, p2}, Lcom/termux/app/fragments/settings/TermuxPreferencesFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 26
    return-void
.end method
