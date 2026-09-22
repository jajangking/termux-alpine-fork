.class public Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DebuggingPreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
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

    .line 35
    const-string v0, "logging"

    invoke-virtual {p0, v0}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 36
    .local v0, "loggingCategory":Landroidx/preference/PreferenceCategory;
    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    const-string v1, "log_level"

    invoke-virtual {p0, v1}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    .line 39
    .local v1, "logLevelListPreference":Landroidx/preference/ListPreference;
    if-eqz v1, :cond_2

    .line 40
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    move-result-object v3

    .line 41
    .local v3, "preferences":Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
    if-nez v3, :cond_1

    return-void

    .line 43
    :cond_1
    nop

    .line 44
    invoke-virtual {v3, v2}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->getLogLevel(Z)I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesFragment;->setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;I)Landroidx/preference/ListPreference;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 47
    .end local v3    # "preferences":Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
    :cond_2
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

    .line 23
    invoke-virtual {p0}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    .line 27
    .local v1, "preferenceManager":Landroidx/preference/PreferenceManager;
    invoke-static {v0}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 29
    const v2, 0x7f130011

    invoke-virtual {p0, v2, p2}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 31
    invoke-direct {p0, v0}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesFragment;->configureLoggingPreferences(Landroid/content/Context;)V

    .line 32
    return-void
.end method
