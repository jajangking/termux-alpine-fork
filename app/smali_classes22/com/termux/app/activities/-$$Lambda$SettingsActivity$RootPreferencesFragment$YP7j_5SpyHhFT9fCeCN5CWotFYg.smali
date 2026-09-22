.class public final synthetic Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;->f$0:Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;

    iput-object p2, p0, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;->f$0:Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;

    iget-object v1, p0, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$YP7j_5SpyHhFT9fCeCN5CWotFYg;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->lambda$configureAboutPreference$0$SettingsActivity$RootPreferencesFragment(Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
