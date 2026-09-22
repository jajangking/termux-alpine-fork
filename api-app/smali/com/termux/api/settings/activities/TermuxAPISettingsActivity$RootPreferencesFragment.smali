.class public Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/settings/activities/TermuxAPISettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootPreferencesFragment"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$g_eu0OWYPeclkZxN7cbfXBfETfY(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->lambda$configureAboutPreference$0(Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zXe4O5kHCPFJrTH0qZYbONnVBH4(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->lambda$configureDonatePreference$1(Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mconfigureAboutPreference(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->configureAboutPreference(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigureDonatePreference(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->configureDonatePreference(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigureTermuxAPIPreference(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->configureTermuxAPIPreference(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private configureAboutPreference(Landroid/content/Context;)V
    .locals 2

    .line 79
    const-string v0, "link__termux_about"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private configureDonatePreference(Landroid/content/Context;)V
    .locals 3

    .line 110
    const-string v0, "link__termux_donate"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 112
    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    const-string v2, "738F0A30A04D3C8A1BE304AF18D0779BCF3EA88FB60808F657A3521861C2EBF9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 119
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 126
    :cond_2
    :goto_1
    new-instance v1, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    return-void
.end method

.method private configureTermuxAPIPreference(Landroid/content/Context;)V
    .locals 2

    .line 70
    const-string v0, "sets__termux_api_app"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 72
    invoke-static {p1, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 74
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$configureAboutPreference$0(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 0

    .line 82
    new-instance p2, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;

    invoke-direct {p2, p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;-><init>(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    .line 102
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$configureDonatePreference$1(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 0

    .line 127
    const-string p1, "https://termux.dev/donate"

    invoke-static {p0, p1}, Lcom/termux/shared/interact/ShareUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    sget v0, Lcom/termux/api/R$xml;->sets__termux:I

    invoke-virtual {p0, v0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 59
    new-instance p2, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;-><init>(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    .line 66
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
