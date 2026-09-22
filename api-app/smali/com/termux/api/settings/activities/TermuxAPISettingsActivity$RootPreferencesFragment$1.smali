.class Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->this$0:Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

    iput-object p2, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->this$0:Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

    iget-object v1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->-$$Nest$mconfigureTermuxAPIPreference(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->this$0:Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

    iget-object v1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->-$$Nest$mconfigureAboutPreference(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->this$0:Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

    iget-object v1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->-$$Nest$mconfigureDonatePreference(Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V

    return-void
.end method
