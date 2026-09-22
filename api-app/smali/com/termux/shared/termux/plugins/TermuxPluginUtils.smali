.class public abstract Lcom/termux/shared/termux/plugins/TermuxPluginUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 10

    .line 431
    const-string v2, "termux_plugin_command_errors_notification_channel"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;->getTermuxOrPluginAppNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;ZLjava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 334
    const-string v2, "TermuxPluginUtils"

    if-nez v1, :cond_1

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring call to sendPluginCommandErrorNotification() since failed to get \"com.termux\" package context from \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" context"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_1
    invoke-static {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x1

    .line 343
    invoke-virtual {v3, v4}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->arePluginErrorNotificationsEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p5, :cond_3

    return-void

    .line 346
    :cond_3
    invoke-static {p1, v2}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p6, :cond_4

    .line 349
    invoke-static {p0, p3, v4}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 353
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 354
    :cond_5
    const-string p2, "Termux Plugin Execution Command Error"

    .line 356
    :cond_6
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Sending \""

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, "\" notification."

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    const-string p4, "\n\n"

    if-eqz p7, :cond_8

    .line 361
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p9, :cond_7

    goto :goto_0

    :cond_7
    move-object p9, v0

    :goto_0
    invoke-static {p0, p7, p9}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p8, :cond_9

    .line 365
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v4}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_9
    sget-object p6, Lcom/termux/shared/termux/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/shared/termux/models/UserAction;

    invoke-virtual {p6}, Lcom/termux/shared/termux/models/UserAction;->getName()Ljava/lang/String;

    move-result-object p6

    .line 369
    new-instance p7, Lcom/termux/shared/models/ReportInfo;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-direct {p7, p6, p1, p8}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/termux/shared/models/ReportInfo;->setReportString(Ljava/lang/String;)V

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/termux/shared/models/ReportInfo;->setReportStringSuffix(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p7, v4}, Lcom/termux/shared/models/ReportInfo;->setAddReportInfoHeaderToMarkdown(Z)V

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Termux-"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".log"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 375
    invoke-static {p4, v4, v4}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p7, p6, p1}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFileLabelAndPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v1, p7}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object p1

    .line 378
    iget-object p4, p1, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez p4, :cond_a

    return-void

    .line 381
    :cond_a
    invoke-static {v1}, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result p8

    .line 383
    iget-object p4, p1, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    const/high16 p5, 0x8000000

    invoke-static {v1, p8, p4, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 386
    iget-object p1, p1, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    if-eqz p1, :cond_b

    .line 387
    invoke-static {v1, p8, p1, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_1
    move-object p7, p1

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    goto :goto_1

    .line 390
    :goto_2
    invoke-static {v1}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V

    .line 393
    invoke-static {v1, p3}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    const/4 p9, 0x3

    move-object p1, v1

    move-object p3, p4

    move-object p5, p6

    move-object p6, p7

    move p7, p9

    .line 397
    invoke-static/range {p0 .. p7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    .line 403
    :cond_c
    invoke-static {v1}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 405
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p8, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_d
    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 12

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v11}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;ZLjava/lang/String;)V

    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 252
    invoke-static {p3, p4}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 250
    invoke-static/range {v1 .. v8}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V
    .locals 3

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 445
    :cond_0
    const-string v0, "Termux Plugin Commands Errors"

    const/4 v1, 0x4

    const-string v2, "termux_plugin_command_errors_notification_channel"

    invoke-static {p0, v2, v0, v1}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method
