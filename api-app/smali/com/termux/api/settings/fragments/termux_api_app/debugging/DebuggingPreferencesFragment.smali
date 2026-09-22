.class public Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private configureLoggingPreferences(Landroid/content/Context;)V
    .locals 4

    .line 36
    const-string v0, "logging"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    const-string v1, "log_level"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 41
    invoke-static {p1, v2}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-virtual {v3, v2}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->getLogLevel(Z)I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesFragment;->setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;I)Landroidx/preference/ListPreference;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public static setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;I)Landroidx/preference/ListPreference;
    .locals 2

    if-nez p0, :cond_0

    .line 51
    new-instance p0, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevelsArray()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-static {p1, v0, v1}, Lcom/termux/shared/logger/Logger;->getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 56
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-object p0
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
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 28
    invoke-static {p1}, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->getInstance(Landroid/content/Context;)Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 30
    sget v0, Lcom/termux/api/R$xml;->prefs__termux_api_app___prefs__app___prefs__debugging:I

    invoke-virtual {p0, v0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesFragment;->configureLoggingPreferences(Landroid/content/Context;)V

    return-void
.end method
