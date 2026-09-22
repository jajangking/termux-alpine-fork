.class public Lcom/termux/app/utils/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CrashUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCrashReportsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "notificationText"    # Ljava/lang/CharSequence;
    .param p3, "notificationBigText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p6, "notificationMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "title",
            "notificationText",
            "notificationBigText",
            "contentIntent",
            "deleteIntent",
            "notificationMode"
        }
    .end annotation

    .line 182
    const-string v1, "termux_crash_reports_notification_channel"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 186
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 192
    const v2, 0x7f07006a

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 195
    const v2, -0x9f8275

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 198
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 200
    return-object v0
.end method

.method public static notifyAppCrashOnLastRun(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTagParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "logTagParam"
        }
    .end annotation

    .line 50
    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->areCrashReportNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    return-void

    .line 59
    :cond_2
    new-instance v1, Lcom/termux/app/utils/CrashUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/termux/app/utils/CrashUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 92
    invoke-virtual {v1}, Lcom/termux/app/utils/CrashUtils$1;->start()V

    .line 93
    return-void
.end method

.method public static sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "forceNotification"    # Z
    .param p4, "addAppAndDeviceInfo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "logTag",
            "message",
            "forceNotification",
            "addAppAndDeviceInfo"
        }
    .end annotation

    .line 110
    move-object/from16 v7, p0

    if-nez v7, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v8

    .line 113
    .local v8, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v8, :cond_1

    return-void

    .line 116
    :cond_1
    invoke-virtual {v8}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->areCrashReportNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 117
    return-void

    .line 119
    :cond_2
    const-string v0, "CrashUtils"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 123
    .end local p1    # "logTag":Ljava/lang/String;
    .local v6, "logTag":Ljava/lang/String;
    const-string v5, "Termux Crash Report"

    .line 125
    .local v5, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" notification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 129
    .local v3, "reportString":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    const-string v1, "\n\n"

    if-eqz p4, :cond_3

    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_3
    sget-object v2, Lcom/termux/app/models/UserAction;->CRASH_REPORT:Lcom/termux/app/models/UserAction;

    invoke-virtual {v2}, Lcom/termux/app/models/UserAction;->getName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "userActionName":Ljava/lang/String;
    new-instance v15, Lcom/termux/shared/models/ReportInfo;

    const/4 v13, 0x0

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Termux-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".log"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 140
    invoke-static {v10, v0, v0}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v9, v15

    move-object v10, v2

    move-object v11, v6

    move-object v12, v5

    move-object v0, v15

    move-object v15, v1

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v18}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v7, v0}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object v9

    .line 141
    .local v9, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    iget-object v0, v9, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez v0, :cond_4

    return-void

    .line 144
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/notification/TermuxNotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result v10

    .line 146
    .local v10, "nextNotificationId":I
    iget-object v0, v9, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {v7, v10, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 148
    .local v11, "contentIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x0

    .line 149
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v12, v9, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    if-eqz v12, :cond_5

    .line 150
    iget-object v12, v9, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    invoke-static {v7, v10, v12, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 149
    :cond_5
    move-object v12, v0

    .line 153
    .end local v0    # "deleteIntent":Landroid/app/PendingIntent;
    .local v12, "deleteIntent":Landroid/app/PendingIntent;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/termux/app/utils/CrashUtils;->setupCrashReportsNotificationChannel(Landroid/content/Context;)V

    .line 156
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v16, v2

    .end local v2    # "userActionName":Ljava/lang/String;
    .local v16, "userActionName":Ljava/lang/String;
    move-object v2, v13

    move-object v13, v3

    .end local v3    # "reportString":Ljava/lang/StringBuilder;
    .local v13, "reportString":Ljava/lang/StringBuilder;
    move-object v3, v14

    move-object v4, v11

    move-object v14, v5

    .end local v5    # "title":Ljava/lang/String;
    .local v14, "title":Ljava/lang/String;
    move-object v5, v12

    move-object/from16 v17, v6

    .end local v6    # "logTag":Ljava/lang/String;
    .local v17, "logTag":Ljava/lang/String;
    move v6, v15

    invoke-static/range {v0 .. v6}, Lcom/termux/app/utils/CrashUtils;->getCrashReportsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 158
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_6

    return-void

    .line 161
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 162
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_7

    .line 163
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 164
    :cond_7
    return-void
.end method

.method public static setupCrashReportsNotificationChannel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 210
    const-string v0, "termux_crash_reports_notification_channel"

    const-string v1, "Termux Crash Reports"

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 212
    return-void
.end method
