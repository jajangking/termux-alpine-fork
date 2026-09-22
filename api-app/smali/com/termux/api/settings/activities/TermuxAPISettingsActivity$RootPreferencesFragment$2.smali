.class Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;->configureAboutPreference(Landroid/content/Context;)V
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

    .line 82
    iput-object p1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;->this$0:Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment;

    iput-object p2, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    invoke-static {v1, v2}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getImportantLinksMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Lcom/termux/shared/models/ReportInfo;

    const-string v2, "com.termux.api.activities.TermuxAPIMainActivity"

    const-string v4, "About"

    invoke-direct {v1, v4, v2, v4}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/shared/models/ReportInfo;->setReportString(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    const-string v6, ""

    .line 97
    const-string v7, "Termux:API"

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".log"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v1, v4, v0}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFileLabelAndPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity$RootPreferencesFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/termux/shared/activities/ReportActivity;->startReportActivity(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)V

    return-void
.end method
