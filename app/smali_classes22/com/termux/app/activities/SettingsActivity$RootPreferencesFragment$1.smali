.class Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;
.super Ljava/lang/Thread;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;->configureAboutPreference(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->this$0:Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment;

    iput-object p2, p0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 112
    move-object/from16 v0, p0

    const-string v11, "About"

    .line 114
    .local v11, "title":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    .line 115
    .local v12, "aboutString":Ljava/lang/StringBuilder;
    iget-object v1, v0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, v0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "termuxPluginAppsInfo":Ljava/lang/String;
    const-string v1, "\n\n"

    if-eqz v13, :cond_0

    .line 119
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/termux/shared/termux/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/termux/shared/termux/TermuxUtils;->getImportantLinksMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    sget-object v1, Lcom/termux/app/models/UserAction;->ABOUT:Lcom/termux/app/models/UserAction;

    invoke-virtual {v1}, Lcom/termux/app/models/UserAction;->getName()Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "userActionName":Ljava/lang/String;
    iget-object v15, v0, Lcom/termux/app/activities/SettingsActivity$RootPreferencesFragment$1;->val$context:Landroid/content/Context;

    new-instance v10, Lcom/termux/shared/models/ReportInfo;

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Termux-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    const/4 v3, 0x1

    invoke-static {v2, v3, v3}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v3, "com.termux.app.activities.SettingsActivity"

    move-object v1, v10

    move-object v2, v14

    move-object v4, v11

    move-object v9, v14

    move-object v0, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v15, v0}, Lcom/termux/shared/activities/ReportActivity;->startReportActivity(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)V

    .line 131
    return-void
.end method
