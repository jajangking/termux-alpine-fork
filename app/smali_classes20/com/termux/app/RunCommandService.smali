.class public Lcom/termux/app/RunCommandService;
.super Landroid/app/Service;
.source "RunCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/RunCommandService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RunCommandService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/termux/app/RunCommandService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/RunCommandService$LocalBinder;-><init>(Lcom/termux/app/RunCommandService;)V

    iput-object v0, p0, Lcom/termux/app/RunCommandService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 9

    .line 245
    const-string v1, "termux_run_command_notification_channel"

    const/4 v2, -0x1

    const-string v3, "Termux RunCommandService"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 249
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 252
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 255
    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 258
    const v1, -0x9f8275

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private runStartForeground()V
    .locals 2

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->setupNotificationChannel()V

    .line 233
    const/16 v0, 0x53a

    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/RunCommandService;->startForeground(ILandroid/app/Notification;)V

    .line 235
    :cond_0
    return-void
.end method

.method private runStopForeground()V
    .locals 2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/RunCommandService;->stopForeground(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method private setupNotificationChannel()V
    .locals 3

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 266
    :cond_0
    const/4 v0, 0x2

    const-string v1, "termux_run_command_notification_channel"

    const-string v2, "Termux RunCommandService"

    invoke-static {p0, v1, v2, v0}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 268
    return-void
.end method

.method private stopService()I
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->runStopForeground()V

    .line 227
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/termux/app/RunCommandService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 52
    const-string v0, "RunCommandService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->runStartForeground()V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "RunCommandService"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-nez v1, :cond_0

    const/4 v2, 0x2

    return v2

    .line 63
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->runStartForeground()V

    .line 65
    new-instance v3, Lcom/termux/shared/models/ExecutionCommand;

    invoke-direct {v3}, Lcom/termux/shared/models/ExecutionCommand;-><init>()V

    .line 66
    .local v3, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    const v4, 0x7f100058

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "https://github.com/termux/termux-app/wiki/RUN_COMMAND-Intent"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.termux.alpine.RUN_COMMAND"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    const v4, 0x7f100059

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "errmsg":Ljava/lang/String;
    sget-object v5, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 75
    invoke-static {v0, v2, v3, v8}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v2

    return v2

    .line 79
    .end local v4    # "errmsg":Ljava/lang/String;
    :cond_1
    const-string v4, "com.termux.alpine.RUN_COMMAND_PATH"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 80
    .local v7, "executableExtra":Ljava/lang/String;
    const-string v9, "com.termux.alpine.RUN_COMMAND_ARGUMENTS"

    invoke-static {v1, v9, v6}, Lcom/termux/shared/data/IntentUtils;->getStringArrayExtraIfSet(Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 92
    const-string v9, "com.termux.alpine.RUN_COMMAND_REPLACE_COMMA_ALTERNATIVE_CHARS_IN_ARGUMENTS"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 93
    .local v9, "replaceCommaAlternativeCharsInArguments":Z
    if-eqz v9, :cond_3

    .line 94
    const-string v10, "com.termux.alpine.RUN_COMMAND_COMMA_ALTERNATIVE_CHARS_IN_ARGUMENTS"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "commaAlternativeCharsInArguments":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 96
    const-string v10, "\u201a"

    .line 98
    :cond_2
    iget-object v11, v3, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    const-string v12, ","

    invoke-static {v11, v10, v12}, Lcom/termux/shared/data/DataUtils;->replaceSubStringsInStringArrayItems([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v10    # "commaAlternativeCharsInArguments":Ljava/lang/String;
    :cond_3
    const-string v10, "com.termux.alpine.RUN_COMMAND_STDIN"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    .line 102
    const-string v10, "com.termux.alpine.RUN_COMMAND_WORKDIR"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 103
    const-string v10, "com.termux.alpine.RUN_COMMAND_BACKGROUND"

    invoke-virtual {v1, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v3, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    .line 104
    const-string v10, "com.termux.alpine.RUN_COMMAND_BACKGROUND_CUSTOM_LOG_LEVEL"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getIntegerExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 105
    const-string v10, "com.termux.alpine.RUN_COMMAND_SESSION_ACTION"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    .line 106
    const-string v10, "com.termux.alpine.RUN_COMMAND_COMMAND_LABEL"

    const-string v11, "RUN_COMMAND Execution Intent Command"

    invoke-static {v1, v10, v11}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 107
    const-string v10, "com.termux.alpine.RUN_COMMAND_COMMAND_DESCRIPTION"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    .line 108
    const-string v10, "com.termux.alpine.RUN_COMMAND_COMMAND_HELP"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    .line 109
    iput-boolean v5, v3, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    .line 110
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_PENDING_INTENT"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    iput-object v11, v10, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    .line 111
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_RESULT_DIRECTORY"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 112
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v10, v10, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 113
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_RESULT_SINGLE_FILE"

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v10, Lcom/termux/shared/models/ResultConfig;->resultSingleFile:Z

    .line 114
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_RESULT_FILE_BASENAME"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 115
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_RESULT_FILE_OUTPUT_FORMAT"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/models/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    .line 116
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_RESULT_FILE_ERROR_FORMAT"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/models/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    .line 117
    iget-object v10, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v11, "com.termux.alpine.RUN_COMMAND_RESULT_FILES_SUFFIX"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/models/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    .line 125
    :cond_4
    invoke-static {v0, v2}, Lcom/termux/app/utils/PluginUtils;->checkIfAllowExternalAppsPolicyIsViolated(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "errmsg":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 127
    sget-object v4, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v4}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v4

    invoke-virtual {v3, v4, v10}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 128
    invoke-static {v0, v2, v3, v5}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v2

    return v2

    .line 135
    :cond_5
    iget-object v11, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v11, :cond_d

    iget-object v11, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_1

    .line 143
    :cond_6
    iget-object v4, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v4, v6, v5}, Lcom/termux/shared/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 147
    iget-object v12, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v11, "executable"

    const-string v14, "r-x"

    invoke-static/range {v11 .. v17}, Lcom/termux/shared/file/FileUtils;->validateRegularFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 150
    .local v4, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v4, :cond_7

    .line 151
    invoke-virtual {v3, v4}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Lcom/termux/shared/models/errors/Error;)Z

    .line 152
    invoke-static {v0, v2, v3, v8}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v2

    return v2

    .line 159
    :cond_7
    iget-object v11, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 161
    iget-object v11, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-static {v11, v6, v5}, Lcom/termux/shared/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 168
    iget-object v12, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v11, "working"

    invoke-static/range {v11 .. v17}, Lcom/termux/shared/file/TermuxFileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 171
    if-eqz v4, :cond_8

    .line 172
    invoke-virtual {v3, v4}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Lcom/termux/shared/models/errors/Error;)Z

    .line 173
    invoke-static {v0, v2, v3, v8}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v2

    return v2

    .line 182
    :cond_8
    invoke-static {v7}, Lcom/termux/shared/file/TermuxFileUtils;->getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .end local v7    # "executableExtra":Ljava/lang/String;
    .local v5, "executableExtra":Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v7

    sget-object v8, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v7, v8, :cond_9

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The executableExtra path \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" is a symlink so using it instead of the canonical path \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object v5, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 188
    :cond_9
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "com.termux.file"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    iget-object v8, v3, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    .line 190
    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v2, Landroid/content/Intent;

    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    const-string v8, "com.termux.service_execute"

    invoke-direct {v2, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v2, "execIntent":Landroid/content/Intent;
    const-class v7, Lcom/termux/app/TermuxService;

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    const-string v8, "com.termux.execute.arguments"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    const-string v8, "com.termux.execute.stdin"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const-string v8, "com.termux.execute.cwd"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_a
    iget-boolean v7, v3, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    const-string v8, "com.termux.execute.background"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object v7, v3, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-static {v7, v6}, Lcom/termux/shared/data/DataUtils;->getStringFromInteger(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.termux.execute.background_custom_log_level"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v7, "com.termux.execute.session_action"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    const-string v7, "com.termux.execute.command_label"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    const-string v7, "com.termux.execute.command_description"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    const-string v7, "com.termux.execute.command_help"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    const-string v7, "com.termux.execute.plugin_api_help"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    const-string v7, "pendingIntent"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_directory"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 208
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-boolean v6, v6, Lcom/termux/shared/models/ResultConfig;->resultSingleFile:Z

    const-string v7, "com.termux.execute.result_single_file"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_file_basename"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_file_output_format"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_file_error_format"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v6, v3, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/models/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_files_suffix"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :cond_b
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_c

    .line 217
    invoke-virtual {v0, v2}, Lcom/termux/app/RunCommandService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 219
    :cond_c
    invoke-virtual {v0, v2}, Lcom/termux/app/RunCommandService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 222
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v6

    return v6

    .line 136
    .end local v2    # "execIntent":Landroid/content/Intent;
    .end local v4    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v5    # "executableExtra":Ljava/lang/String;
    .restart local v7    # "executableExtra":Ljava/lang/String;
    :cond_d
    :goto_1
    const v6, 0x7f10005a

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-virtual {v0, v6, v5}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .end local v10    # "errmsg":Ljava/lang/String;
    .local v4, "errmsg":Ljava/lang/String;
    sget-object v5, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 138
    invoke-static {v0, v2, v3, v8}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v2

    return v2
.end method
