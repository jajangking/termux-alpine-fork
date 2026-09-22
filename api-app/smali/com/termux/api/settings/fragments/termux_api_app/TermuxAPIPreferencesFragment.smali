.class public Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 0
    invoke-super {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 23
    invoke-static {p1}, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;->getInstance(Landroid/content/Context;)Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 25
    sget p1, Lcom/termux/api/R$xml;->prefs__termux_api_app___prefs__app:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method
