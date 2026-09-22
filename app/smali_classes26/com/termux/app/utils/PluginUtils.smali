.class public Lcom/termux/app/utils/PluginUtils;
.super Ljava/lang/Object;
.source "PluginUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PluginUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfAllowExternalAppsPolicyIsViolated(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "apiName"
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "errmsg":Ljava/lang/String;
    invoke-static {}, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->getTermuxPropertiesFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "allow-external-apps"

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/termux/shared/settings/properties/SharedProperties;->isPropertyValueTrue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const v1, 0x7f10004a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 329
    const-string v4, "/data/data/com.termux.alpine/files/home/.termux/termux.properties"

    invoke-static {v4}, Lcom/termux/shared/file/TermuxFileUtils;->getUnExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 328
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    return-object v0
.end method

.method public static getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
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

    .line 284
    const-string v1, "termux_plugin_command_errors_notification_channel"

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

    .line 288
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 291
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 294
    const v2, 0x7f07006a

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 297
    const v2, -0x9f8275

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 300
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 302
    return-object v0
.end method

.method public static processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p3, "forceNotification"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0
        }
        names = {
            "context",
            "logTag",
            "executionCommand",
            "forceNotification"
        }
    .end annotation

    .line 128
    if-eqz p0, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 130
    :cond_0
    const-string v0, "PluginUtils"

    invoke-static {p1, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 132
    iget-object v0, p2, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    .line 134
    .local v0, "resultData":Lcom/termux/shared/models/ResultData;
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ignoring call to processPluginExecutionCommandError() since the execution command is not in ExecutionState.FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 139
    :cond_1
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v7

    .line 140
    .local v7, "isPluginExecutionCommandWithPendingResult":Z
    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v8

    .line 143
    .local v8, "isExecutionCommandLoggingEnabled":Z
    xor-int/lit8 v1, v7, 0x1

    const/4 v9, 0x1

    invoke-static {p2, v9, v1, v8}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v7, :cond_5

    .line 149
    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 150
    invoke-static {p2}, Lcom/termux/app/utils/PluginUtils;->setPluginResultPendingIntentVariables(Lcom/termux/shared/models/ExecutionCommand;)V

    .line 151
    :cond_2
    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 152
    invoke-static {p2}, Lcom/termux/app/utils/PluginUtils;->setPluginResultDirectoryVariables(Lcom/termux/shared/models/ExecutionCommand;)V

    .line 155
    :cond_3
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v5, p2, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    move-object v1, p0

    move-object v2, p1

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/shell/ResultSender;->sendCommandResultData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/ResultConfig;Lcom/termux/shared/models/ResultData;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 157
    .local v1, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {v0, v1}, Lcom/termux/shared/models/ResultData;->setStateFailed(Lcom/termux/shared/models/errors/Error;)Z

    .line 160
    invoke-static {p2, v9, v9, v8}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 p3, 0x1

    .line 165
    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 168
    .end local v1    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_5
    invoke-static {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v1, :cond_6

    return-void

    .line 172
    :cond_6
    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->arePluginErrorNotificationsEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez p3, :cond_7

    .line 173
    return-void

    .line 176
    :cond_7
    invoke-static {v0}, Lcom/termux/shared/models/ResultData;->getErrorsListMinimalString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v9}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    invoke-static {v0}, Lcom/termux/shared/models/ResultData;->getErrorsListMinimalString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/termux/app/utils/PluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)V

    .line 179
    return-void

    .line 128
    .end local v0    # "resultData":Lcom/termux/shared/models/ResultData;
    .end local v1    # "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    .end local v7    # "isPluginExecutionCommandWithPendingResult":Z
    .end local v8    # "isExecutionCommandLoggingEnabled":Z
    :cond_8
    :goto_0
    return-void
.end method

.method public static processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "logTag",
            "executionCommand"
        }
    .end annotation

    .line 56
    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    const-string v0, "PluginUtils"

    invoke-static {p1, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    iget-object v7, p2, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    .line 62
    .local v7, "resultData":Lcom/termux/shared/models/ResultData;
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ignoring call to processPluginExecutionCommandResult() since the execution command state is not higher than the ExecutionState.EXECUTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v8

    .line 68
    .local v8, "isPluginExecutionCommandWithPendingResult":Z
    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v9

    .line 72
    .local v9, "isExecutionCommandLoggingEnabled":Z
    xor-int/lit8 v1, v8, 0x1

    const/4 v10, 0x1

    invoke-static {p2, v10, v1, v9}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-eqz v8, :cond_4

    .line 78
    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 79
    invoke-static {p2}, Lcom/termux/app/utils/PluginUtils;->setPluginResultPendingIntentVariables(Lcom/termux/shared/models/ExecutionCommand;)V

    .line 80
    :cond_2
    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 81
    invoke-static {p2}, Lcom/termux/app/utils/PluginUtils;->setPluginResultDirectoryVariables(Lcom/termux/shared/models/ExecutionCommand;)V

    .line 84
    :cond_3
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v5, p2, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    move-object v1, p0

    move-object v2, p1

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/shell/ResultSender;->sendCommandResultData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/ResultConfig;Lcom/termux/shared/models/ResultData;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v7, v0}, Lcom/termux/shared/models/ResultData;->setStateFailed(Lcom/termux/shared/models/errors/Error;)Z

    .line 89
    invoke-static {p2, v10, v10, v9}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v7}, Lcom/termux/shared/models/ResultData;->getErrorsListMinimalString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v10}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    invoke-static {v7}, Lcom/termux/shared/models/ResultData;->getErrorsListMinimalString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/termux/app/utils/PluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)V

    .line 98
    :cond_4
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 99
    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p2, v1}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    .line 100
    :cond_5
    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "logTag",
            "executionCommand",
            "notificationTextString"
        }
    .end annotation

    .line 222
    move-object/from16 v7, p0

    const-string v18, "Termux Plugin Execution Command Error"

    .line 224
    .local v18, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 226
    .local v6, "reportString":Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionCommandMarkdownString(Lcom/termux/shared/models/ExecutionCommand;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v0, "\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v7, v2}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sget-object v0, Lcom/termux/app/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

    invoke-virtual {v0}, Lcom/termux/app/models/UserAction;->getName()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "userActionName":Ljava/lang/String;
    new-instance v0, Lcom/termux/shared/models/ReportInfo;

    .line 233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Termux-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3, v2, v2}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v0

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v11, v18

    move-object/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v7, v0}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object v8

    .line 237
    .local v8, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    iget-object v0, v8, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/notification/TermuxNotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result v9

    .line 242
    .local v9, "nextNotificationId":I
    iget-object v0, v8, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {v7, v9, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 244
    .local v10, "contentIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x0

    .line 245
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v2, v8, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, v8, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    invoke-static {v7, v9, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 245
    :cond_1
    move-object v11, v0

    .line 249
    .end local v0    # "deleteIntent":Landroid/app/PendingIntent;
    .local v11, "deleteIntent":Landroid/app/PendingIntent;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/termux/app/utils/PluginUtils;->setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V

    .line 252
    move-object/from16 v12, p3

    invoke-static {v7, v12}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 256
    .local v13, "notificationTextCharSequence":Ljava/lang/CharSequence;
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v13

    move-object v3, v13

    move-object v4, v10

    move-object v15, v5

    .end local v5    # "userActionName":Ljava/lang/String;
    .local v15, "userActionName":Ljava/lang/String;
    move-object v5, v11

    move-object/from16 v16, v6

    .end local v6    # "reportString":Ljava/lang/StringBuilder;
    .local v16, "reportString":Ljava/lang/StringBuilder;
    move v6, v14

    invoke-static/range {v0 .. v6}, Lcom/termux/app/utils/PluginUtils;->getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 258
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_2

    return-void

    .line 261
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 262
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 264
    :cond_3
    return-void
.end method

.method public static setPluginResultDirectoryVariables(Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 4
    .param p0, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executionCommand"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    .line 201
    .local v0, "resultConfig":Lcom/termux/shared/models/ResultConfig;
    iget-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/termux/shared/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 202
    iget-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/file/TermuxFileUtils;->getMatchedAllowedTermuxWorkingDirectoryParentPathForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryAllowedParentPath:Ljava/lang/String;

    .line 205
    iget-boolean v1, v0, Lcom/termux/shared/models/ResultConfig;->resultSingleFile:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v2}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/termux/shared/termux/AndroidUtils;->getCurrentMilliSecondLocalTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 207
    :cond_0
    return-void
.end method

.method public static setPluginResultPendingIntentVariables(Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 2
    .param p0, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executionCommand"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    .line 186
    .local v0, "resultConfig":Lcom/termux/shared/models/ResultConfig;
    const-string v1, "result"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultBundleKey:Ljava/lang/String;

    .line 187
    const-string v1, "stdout"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    .line 188
    const-string v1, "stdout_original_length"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    .line 189
    const-string v1, "stderr"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultStderrKey:Ljava/lang/String;

    .line 190
    const-string v1, "stderr_original_length"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    .line 191
    const-string v1, "exitCode"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    .line 192
    const-string v1, "err"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    .line 193
    const-string v1, "errmsg"

    iput-object v1, v0, Lcom/termux/shared/models/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public static setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V
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

    .line 312
    const-string v0, "termux_plugin_command_errors_notification_channel"

    const-string v1, "Termux Plugin Commands Errors"

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 314
    return-void
.end method
