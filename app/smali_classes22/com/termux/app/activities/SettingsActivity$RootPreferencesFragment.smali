.class public Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/activities/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootPreferencesFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private configureAboutPreference(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 106
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 107
    .local v0, "aboutPreference":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;-><init>(Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method private configureDonatePreference(Landroid/content/Context;)V
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

    .line 140
    const-string v0, "donate"

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 141
    .local v0, "donatePreference":Landroidx/preference/Preference;
    if-eqz v0, :cond_3

    .line 142
    invoke-static {p1}, Lcom/termux/shared/packages/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "signingCertificateSHA256Digest":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 147
    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "apkRelease":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "738F0A30A04D3C8A1BE304AF18D0779BCF3EA88FB60808F657A3521861C2EBF9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 150
    return-void

    .line 156
    .end local v2    # "apkRelease":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v2, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$9kYYapqDmtNhKQe_2Hj-3Oh1BZY;

    invoke-direct {v2, p1}, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$9kYYapqDmtNhKQe_2Hj-3Oh1BZY;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    .end local v1    # "signingCertificateSHA256Digest":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private configureTermuxAPIPreference(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 70
    const-string v0, "termux_api"

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 71
    .local v0, "termuxAPIPreference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 72
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object v2

    .line 74
    .local v2, "preferences":Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 76
    .end local v2    # "preferences":Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;
    :cond_1
    return-void
.end method

.method private configureTermuxFloatPreference(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 79
    const-string v0, "termux_float"

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 80
    .local v0, "termuxFloatPreference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 81
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;

    move-result-object v2

    .line 83
    .local v2, "preferences":Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 85
    .end local v2    # "preferences":Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;
    :cond_1
    return-void
.end method

.method private configureTermuxTaskerPreference(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 88
    const-string v0, "termux_tasker"

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 89
    .local v0, "termuxTaskerPreference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 90
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;

    move-result-object v2

    .line 92
    .local v2, "preferences":Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 94
    .end local v2    # "preferences":Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;
    :cond_1
    return-void
.end method

.method private configureTermuxWidgetPreference(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 97
    const-string v0, "termux_widget"

    invoke-virtual {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 98
    .local v0, "termuxWidgetPreference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 99
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    move-result-object v2

    .line 101
    .local v2, "preferences":Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 103
    .end local v2    # "preferences":Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
    :cond_1
    return-void
.end method

.method static synthetic lambda$configureDonatePreference$1(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 157
    const-string v0, "https://termux.dev/donate"

    invoke-static {p0, v0}, Lcom/termux/shared/interact/ShareUtils;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public synthetic lambda$configureAboutPreference$0$SettingsActivity$RootPreferencesFragment(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 109
    new-instance v0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;-><init>(Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->start()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
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

    .line 56
    invoke-virtual {p0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    const/high16 v1, 0x7f130000

    invoke-virtual {p0, v1, p2}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 61
    invoke-direct {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureTermuxAPIPreference(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureTermuxFloatPreference(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureTermuxTaskerPreference(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureTermuxWidgetPreference(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureAboutPreference(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureDonatePreference(Landroid/content/Context;)V

    .line 67
    return-void
.end method
