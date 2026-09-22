.class public Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DebuggingPreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private configureLoggingPreferences(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    const-string v0, "logging"

    invoke-virtual {p0, v0}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 37
    .local v0, "loggingCategory":Landroidx/preference/PreferenceCategory;
    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    const-string v1, "log_level"

    invoke-virtual {p0, v1}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    .line 40
    .local v1, "logLevelListPreference":Landroidx/preference/ListPreference;
    if-eqz v1, :cond_2

    .line 41
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v2

    .line 42
    .local v2, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v2, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getLogLevel()I

    move-result v3

    invoke-static {v1, p1, v3}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;I)Landroidx/preference/ListPreference;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 47
    .end local v2    # "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    :cond_2
    return-void
.end method

.method public static setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;I)Landroidx/preference/ListPreference;
    .locals 4
    .param p0, "logLevelListPreference"    # Landroidx/preference/ListPreference;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logLevelListPreference",
            "context",
            "logLevel"
        }
    .end annotation

    .line 50
    if-nez p0, :cond_0

    .line 51
    new-instance v0, Landroidx/preference/ListPreference;

    invoke-direct {v0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 53
    :cond_0
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevelsArray()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    .local v0, "logLevels":[Ljava/lang/CharSequence;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/termux/shared/logger/Logger;->getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 56
    .local v2, "logLevelLabels":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 62
    return-object p0
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

    .line 24
    invoke-virtual {p0}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    .line 28
    .local v1, "preferenceManager":Landroidx/preference/PreferenceManager;
    invoke-static {v0}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 30
    const v2, 0x7f130009

    invoke-virtual {p0, v2, p2}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->configureLoggingPreferences(Landroid/content/Context;)V

    .line 33
    return-void
.end method
