.class public final synthetic Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->$r8$lambda$zXe4O5kHCPFJrTH0qZYbONnVBH4(Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
