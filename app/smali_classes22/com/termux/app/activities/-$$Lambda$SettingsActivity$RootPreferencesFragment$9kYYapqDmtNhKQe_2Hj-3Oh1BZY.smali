.class public final synthetic Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$9kYYapqDmtNhKQe_2Hj-3Oh1BZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$9kYYapqDmtNhKQe_2Hj-3Oh1BZY;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/termux/app/activities/-$$Lambda$SettingsActivity$RootPreferencesFragment$9kYYapqDmtNhKQe_2Hj-3Oh1BZY;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->lambda$configureDonatePreference$1(Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
