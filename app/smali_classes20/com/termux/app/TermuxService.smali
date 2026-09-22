.class public final Lcom/termux/app/TermuxService;
.super Landroid/app/Service;
.source "TermuxService.java"

# interfaces
.implements Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;
.implements Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxService$LocalBinder;
    }
.end annotation


# static fields
.field private static EXECUTION_ID:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field final mPendingPluginExecutionCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/models/ExecutionCommand;",
            ">;"
        }
    .end annotation
.end field

.field public mTerminalTranscriptRows:Ljava/lang/Integer;

.field final mTermuxSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxSession;",
            ">;"
        }
    .end annotation
.end field

.field final mTermuxTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxTask;",
            ">;"
        }
    .end annotation
.end field

.field mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field final mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWantsToStop:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/16 v0, 0x3e8

    sput v0, Lcom/termux/app/TermuxService;->EXECUTION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Lcom/termux/app/TermuxService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxService$LocalBinder;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    invoke-direct {v0}, Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return-void
.end method

.method private actionAcquireWakeLock()V
    .locals 7

    .line 288
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "TermuxService"

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "Ignoring acquiring WakeLocks since they are already held"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void

    .line 293
    :cond_0
    const-string v0, "Acquiring WakeLocks"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 296
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Termux"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":service-wakelock"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 297
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 300
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 301
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 302
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 304
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v4, "whitelist":Landroid/content/Intent;
    const-string v5, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 309
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/termux/app/TermuxService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v5

    .line 314
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "Failed to call ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-static {v1, v6, v5}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v4    # "whitelist":Landroid/content/Intent;
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 320
    const-string v4, "WakeLocks acquired successfully"

    invoke-static {v1, v4}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private actionReleaseWakeLock(Z)V
    .locals 3
    .param p1, "updateNotification"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateNotification"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "TermuxService"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 327
    const-string v0, "Ignoring releasing WakeLocks since none are already held"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    .line 331
    :cond_0
    const-string v0, "Releasing WakeLocks"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 335
    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 340
    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 343
    :cond_2
    if-eqz p1, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 346
    :cond_3
    const-string v0, "WakeLocks released successfully"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private actionServiceExecute(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 352
    if-nez p1, :cond_0

    .line 353
    const-string v0, "TermuxService"

    const-string v1, "Ignoring null intent to actionServiceExecute"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void

    .line 357
    :cond_0
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand;

    invoke-static {}, Lcom/termux/app/TermuxService;->getNextExecutionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;)V

    .line 359
    .local v0, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    .line 360
    const-string v1, "com.termux.execute.background"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    .line 362
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 364
    const-string v1, "com.termux.execute.arguments"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getStringArrayExtraIfSet(Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 365
    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "com.termux.execute.stdin"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    .line 367
    :cond_1
    const-string v1, "com.termux.execute.background_custom_log_level"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getIntegerExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 370
    :cond_2
    const-string v1, "com.termux.execute.cwd"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 371
    const-string v1, "com.termux.app.failsafe_session"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    .line 372
    const-string v1, "com.termux.execute.session_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    .line 373
    const-string v1, "com.termux.execute.command_label"

    const-string v4, "Execution Intent Command"

    invoke-static {p1, v1, v4}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 374
    const-string v1, "com.termux.execute.command_description"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    .line 375
    const-string v1, "com.termux.execute.command_help"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    .line 376
    const-string v1, "com.termux.execute.plugin_api_help"

    invoke-static {p1, v1, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    .line 378
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v4, "pendingIntent"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    iput-object v4, v1, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    .line 379
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v4, "com.termux.execute.result_directory"

    invoke-static {p1, v4, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 380
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 381
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v4, "com.termux.execute.result_single_file"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/termux/shared/models/ResultConfig;->resultSingleFile:Z

    .line 382
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v2, "com.termux.execute.result_file_basename"

    invoke-static {p1, v2, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 383
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v2, "com.termux.execute.result_file_output_format"

    invoke-static {p1, v2, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/models/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    .line 384
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v2, "com.termux.execute.result_file_error_format"

    invoke-static {p1, v2, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/models/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    .line 385
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    const-string v2, "com.termux.execute.result_files_suffix"

    invoke-static {p1, v2, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/models/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_4

    .line 392
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->executeTermuxTaskCommand(Lcom/termux/shared/models/ExecutionCommand;)V

    goto :goto_0

    .line 394
    :cond_4
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->executeTermuxSessionCommand(Lcom/termux/shared/models/ExecutionCommand;)V

    .line 396
    :goto_0
    return-void
.end method

.method private actionStopService()V
    .locals 1

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    .line 214
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->killAllTermuxExecutionCommands()V

    .line 215
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    .line 216
    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 20

    .line 707
    move-object/from16 v9, p0

    const-class v10, Lcom/termux/app/TermuxService;

    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/TermuxService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 710
    .local v11, "res":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/termux/app/TermuxActivity;->newInstance(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    .line 711
    .local v12, "notificationIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-static {v9, v13, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 715
    .local v14, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v15

    .line 716
    .local v15, "sessionCount":I
    iget-object v0, v9, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 717
    .local v8, "taskCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    const-string v2, "s"

    const/4 v7, 0x1

    if-ne v15, v7, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "notificationText":Ljava/lang/String;
    if-lez v8, :cond_2

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v8, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    :cond_2
    iget-object v1, v9, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v13

    :goto_2
    move/from16 v16, v1

    .line 723
    .local v16, "wakeLockHeld":Z
    if-eqz v16, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (wake lock held)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object/from16 v17, v0

    .line 729
    .end local v0    # "notificationText":Ljava/lang/String;
    .local v17, "notificationText":Ljava/lang/String;
    if-eqz v16, :cond_5

    move v2, v7

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    move v2, v0

    .line 733
    .local v2, "priority":I
    :goto_3
    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v1, "termux_notification_channel"

    const-string v3, "Termux"

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    move-object v6, v14

    move-object/from16 v7, v18

    move/from16 v18, v8

    .end local v8    # "taskCount":I
    .local v18, "taskCount":I
    move/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 737
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 740
    :cond_6
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 743
    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 746
    const v1, -0x9f8275

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 749
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 753
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.termux.service_stop"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 754
    .local v1, "exitIntent":Landroid/content/Intent;
    const v3, 0x108001d

    const v4, 0x7f1000b5

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v13, v1, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 758
    if-eqz v16, :cond_7

    const-string v3, "com.termux.service_wake_unlock"

    goto :goto_4

    :cond_7
    const-string v3, "com.termux.service_wake_lock"

    .line 759
    .local v3, "newWakeAction":Ljava/lang/String;
    :goto_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 760
    .local v4, "toggleWakeLockIntent":Landroid/content/Intent;
    if-eqz v16, :cond_8

    const v5, 0x7f1000b7

    goto :goto_5

    :cond_8
    const v5, 0x7f1000b6

    :goto_5
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, "actionTitle":Ljava/lang/String;
    if-eqz v16, :cond_9

    const v6, 0x108001f

    goto :goto_6

    :cond_9
    const v6, 0x108002f

    .line 762
    .local v6, "actionIcon":I
    :goto_6
    invoke-static {v9, v13, v4, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v6, v5, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 765
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    return-object v7
.end method

.method private executeTermuxSessionCommand(Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 4
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executionCommand"
        }
    .end annotation

    .line 481
    if-nez p1, :cond_0

    return-void

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing foreground \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" TermuxSession command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    .line 488
    .local v0, "sessionName":Ljava/lang/String;
    iget-object v1, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/termux/app/TermuxService;->createTermuxSession(Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v1

    .line 493
    .local v1, "newTermuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-nez v1, :cond_2

    return-void

    .line 495
    :cond_2
    iget-object v2, p1, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    .line 497
    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v3

    .line 495
    invoke-direct {p0, v2, v3}, Lcom/termux/app/TermuxService;->handleSessionAction(ILcom/termux/terminal/TerminalSession;)V

    .line 498
    return-void
.end method

.method private executeTermuxTaskCommand(Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 2
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executionCommand"
        }
    .end annotation

    .line 404
    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing background \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" TermuxTask command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->createTermuxTask(Lcom/termux/shared/models/ExecutionCommand;)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v0

    .line 409
    .local v0, "newTermuxTask":Lcom/termux/shared/shell/TermuxTask;
    return-void
.end method

.method public static declared-synchronized getNextExecutionId()I
    .locals 3

    const-class v0, Lcom/termux/app/TermuxService;

    monitor-enter v0

    .line 842
    :try_start_0
    sget v1, Lcom/termux/app/TermuxService;->EXECUTION_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/termux/app/TermuxService;->EXECUTION_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleSessionAction(ILcom/termux/terminal/TerminalSession;)V
    .locals 3
    .param p1, "sessionAction"    # I
    .param p2, "newTerminalSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionAction",
            "newTerminalSession"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing sessionAction \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" for session \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sessionAction: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\". Force using default sessionAction."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/termux/app/TermuxService;->handleSessionAction(ILcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 629
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 630
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 624
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 625
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {v0, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 619
    :pswitch_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 620
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->startTermuxActivity()V

    .line 622
    goto :goto_0

    .line 613
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 614
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_1

    .line 615
    invoke-virtual {v0, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->startTermuxActivity()V

    .line 617
    nop

    .line 637
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized killAllTermuxExecutionCommands()V
    .locals 7

    monitor-enter p0

    .line 256
    :try_start_0
    const-string v0, "TermuxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing TermuxSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TermuxTasks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PendingPluginExecutionCommands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v0, "termuxSessions":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/TermuxSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v2}, Lcom/termux/shared/shell/TermuxSession;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v2

    .line 261
    .local v2, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    iget-boolean v4, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 262
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    .local v3, "processResult":Z
    :cond_1
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v4, p0, v3}, Lcom/termux/shared/shell/TermuxSession;->killIfExecuting(Landroid/content/Context;Z)V

    .line 259
    .end local v2    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    .end local v3    # "processResult":Z
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    .local v1, "termuxTasks":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/TermuxTask;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 267
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/shell/TermuxTask;

    invoke-virtual {v4}, Lcom/termux/shared/shell/TermuxTask;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v4

    .line 268
    .local v4, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 269
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/shared/shell/TermuxTask;

    invoke-virtual {v5, p0, v3}, Lcom/termux/shared/shell/TermuxTask;->killIfExecuting(Landroid/content/Context;Z)V

    .line 266
    .end local v4    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 272
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    .local v2, "pendingPluginExecutionCommands":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/models/ExecutionCommand;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 274
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/models/ExecutionCommand;

    .line 275
    .restart local v4    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    sget-object v5, Lcom/termux/shared/models/errors/Errno;->ERRNO_CANCELLED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v5

    const v6, 0x7f100051

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 277
    const-string v5, "TermuxService"

    invoke-static {p0, v5, v4}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v4    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 281
    .end local v3    # "i":I
    :cond_6
    monitor-exit p0

    return-void

    .line 255
    .end local v0    # "termuxSessions":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/TermuxSession;>;"
    .end local v1    # "termuxTasks":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/TermuxTask;>;"
    .end local v2    # "pendingPluginExecutionCommands":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/models/ExecutionCommand;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestStopService()V
    .locals 2

    .line 206
    const-string v0, "TermuxService"

    const-string v1, "Requesting to stop service"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 208
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    .line 209
    return-void
.end method

.method private runStartForeground()V
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->setupNotificationChannel()V

    .line 196
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x539

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/TermuxService;->startForeground(ILandroid/app/Notification;)V

    .line 197
    return-void
.end method

.method private runStopForeground()V
    .locals 1

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    .line 202
    return-void
.end method

.method private setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 790
    if-nez p1, :cond_0

    return-void

    .line 792
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    .line 793
    .local v0, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v0, :cond_1

    return-void

    .line 794
    :cond_1
    iget-object v1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method private setupNotificationChannel()V
    .locals 3

    .line 769
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 771
    :cond_0
    const/4 v0, 0x2

    const-string v1, "termux_notification_channel"

    const-string v2, "Termux App"

    invoke-static {p0, v1, v2, v0}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 773
    return-void
.end method

.method private startTermuxActivity()V
    .locals 3

    .line 644
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PermissionUtils;->validateDisplayOverOtherAppsPermissionForPostAndroid10(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->startTermuxActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 647
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    .line 648
    .local v1, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v1, :cond_1

    return-void

    .line 649
    :cond_1
    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->arePluginErrorNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    const v2, 0x7f10004d

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 652
    .end local v1    # "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 3

    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    goto :goto_0

    .line 781
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x539

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :goto_0
    monitor-exit p0

    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createTermuxSession(Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxSession;
    .locals 9
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p2, "sessionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executionCommand",
            "sessionName"
        }
    .end annotation

    monitor-enter p0

    .line 512
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 514
    :cond_0
    :try_start_0
    const-string v1, "TermuxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" TermuxSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-boolean v1, p1, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_1

    .line 517
    const-string v1, "TermuxService"

    const-string v2, "Ignoring a background execution command passed to createTermuxSession()"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-object v0

    .line 521
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 522
    const-string v1, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTerminalTranscriptRows()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/termux/shared/models/ExecutionCommand;->terminalTranscriptRows:Ljava/lang/Integer;

    .line 528
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxTerminalSessionClient()Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    move-result-object v4

    new-instance v6, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;

    invoke-direct {v6}, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;-><init>()V

    iget-boolean v8, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    move-object v2, p0

    move-object v3, p1

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v2 .. v8}, Lcom/termux/shared/shell/TermuxSession;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/terminal/TerminalSessionClient;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Ljava/lang/String;Z)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v1

    .line 529
    .local v1, "newTermuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-nez v1, :cond_4

    .line 530
    const-string v2, "TermuxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute new TermuxSession command for:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-boolean v2, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v2, :cond_3

    .line 533
    const-string v2, "TermuxService"

    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    goto :goto_0

    .line 535
    :cond_3
    const-string v2, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :goto_0
    monitor-exit p0

    return-object v0

    .line 539
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    iget-boolean v0, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_5

    .line 544
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_6

    .line 549
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 551
    :cond_6
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 552
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->updateTermuxActivityStyling(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 554
    monitor-exit p0

    return-object v1

    .line 511
    .end local v1    # "newTermuxSession":Lcom/termux/shared/shell/TermuxSession;
    .end local p1    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    .end local p2    # "sessionName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createTermuxSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/termux/shared/shell/TermuxSession;
    .locals 9
    .param p1, "executablePath"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .param p3, "stdin"    # Ljava/lang/String;
    .param p4, "workingDirectory"    # Ljava/lang/String;
    .param p5, "isFailSafe"    # Z
    .param p6, "sessionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executablePath",
            "arguments",
            "stdin",
            "workingDirectory",
            "isFailSafe",
            "sessionName"
        }
    .end annotation

    .line 506
    new-instance v8, Lcom/termux/shared/models/ExecutionCommand;

    invoke-static {}, Lcom/termux/app/TermuxService;->getNextExecutionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v8, p6}, Lcom/termux/app/TermuxService;->createTermuxSession(Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createTermuxTask(Lcom/termux/shared/models/ExecutionCommand;)Lcom/termux/shared/shell/TermuxTask;
    .locals 6
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executionCommand"
        }
    .end annotation

    monitor-enter p0

    .line 420
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 422
    :cond_0
    :try_start_0
    const-string v1, "TermuxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" TermuxTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-boolean v1, p1, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-nez v1, :cond_1

    .line 425
    const-string v1, "TermuxService"

    const-string v2, "Ignoring a foreground execution command passed to createTermuxTask()"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-object v0

    .line 429
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 430
    const-string v1, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_2
    new-instance v1, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;

    invoke-direct {v1}, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, p0, v1, v2}, Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v1

    .line 433
    .local v1, "newTermuxTask":Lcom/termux/shared/shell/TermuxTask;
    if-nez v1, :cond_4

    .line 434
    const-string v3, "TermuxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute new TermuxTask command for:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-boolean v3, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v3, :cond_3

    .line 437
    const-string v3, "TermuxService"

    invoke-static {p0, v3, p1, v2}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    goto :goto_0

    .line 439
    :cond_3
    const-string v2, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :goto_0
    monitor-exit p0

    return-object v0

    .line 443
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-boolean v0, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_5

    .line 448
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_5
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    monitor-exit p0

    return-object v1

    .line 419
    .end local v1    # "newTermuxTask":Lcom/termux/shared/shell/TermuxTask;
    .end local p1    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createTermuxTask(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxTask;
    .locals 9
    .param p1, "executablePath"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .param p3, "stdin"    # Ljava/lang/String;
    .param p4, "workingDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executablePath",
            "arguments",
            "stdin",
            "workingDirectory"
        }
    .end annotation

    .line 414
    new-instance v8, Lcom/termux/shared/models/ExecutionCommand;

    invoke-static {}, Lcom/termux/app/TermuxService;->getNextExecutionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v8}, Lcom/termux/app/TermuxService;->createTermuxTask(Lcom/termux/shared/models/ExecutionCommand;)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 2
    .param p1, "terminalSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalSession"
        }
    .end annotation

    monitor-enter p0

    .line 822
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 823
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 824
    monitor-exit p0

    return v0

    .line 822
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 821
    .end local p1    # "terminalSession":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLastTermuxSession()Lcom/termux/shared/shell/TermuxSession;
    .locals 2

    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 818
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTerminalSessionForHandle(Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;
    .locals 4
    .param p1, "sessionHandle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionHandle"
        }
    .end annotation

    monitor-enter p0

    .line 831
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 832
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v2}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    .line 833
    .local v2, "terminalSession":Lcom/termux/terminal/TerminalSession;
    iget-object v3, v2, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 834
    monitor-exit p0

    return-object v2

    .line 831
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 836
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "terminalSession":Lcom/termux/terminal/TerminalSession;
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 830
    .end local p1    # "sessionHandle":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTerminalTranscriptRows()Ljava/lang/Integer;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalTranscriptRows:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->setTerminalTranscriptRows()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalTranscriptRows:Ljava/lang/Integer;

    return-object v0
.end method

.method public declared-synchronized getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    monitor-enter p0

    .line 811
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 810
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 814
    .restart local p1    # "index":I
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getTermuxSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 806
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTermuxSessionsSize()I
    .locals 1

    monitor-enter p0

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 802
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTermuxTerminalSessionClient()Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
    .locals 1

    monitor-enter p0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 671
    monitor-exit p0

    return-object v0

    .line 673
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 669
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTermuxSessionsEmpty()Z
    .locals 1

    monitor-enter p0

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 798
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$onTermuxTaskExited$0$TermuxService(Lcom/termux/shared/shell/TermuxTask;)V
    .locals 3
    .param p1, "termuxTask"    # Lcom/termux/shared/shell/TermuxTask;

    .line 459
    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxTask;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v0

    .line 462
    .local v0, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The onTermuxTaskExited() callback called for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" TermuxTask command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_0

    .line 466
    invoke-static {p0, v2, v0}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 471
    .end local v0    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 472
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 177
    const-string v0, "TermuxService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 120
    const-string v0, "TermuxService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStartForeground()V

    .line 122
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 165
    const-string v0, "TermuxService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/termux/shared/shell/TermuxShellUtils;->clearTermuxTMPDIR(Z)V

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->actionReleaseWakeLock(Z)V

    .line 170
    iget-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->killAllTermuxExecutionCommands()V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 173
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
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

    .line 127
    const-string v0, "TermuxService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStartForeground()V

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 135
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v4, "com.termux.service_wake_lock"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.termux.service_execute"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "com.termux.service_wake_unlock"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "com.termux.service_stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :pswitch_0
    const-string v3, "ACTION_SERVICE_EXECUTE intent received"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->actionServiceExecute(Landroid/content/Intent;)V

    .line 151
    goto :goto_1

    .line 145
    :pswitch_1
    const-string v3, "ACTION_WAKE_UNLOCK intent received"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v5}, Lcom/termux/app/TermuxService;->actionReleaseWakeLock(Z)V

    .line 147
    goto :goto_1

    .line 141
    :pswitch_2
    const-string v3, "ACTION_WAKE_LOCK intent received"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->actionAcquireWakeLock()V

    .line 143
    goto :goto_1

    .line 137
    :pswitch_3
    const-string v3, "ACTION_STOP_SERVICE intent received"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->actionStopService()V

    .line 160
    :cond_1
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x66decd22 -> :sswitch_3
        -0x67ff01d -> :sswitch_2
        0x98f19 -> :sswitch_1
        0x7b0c918a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTermuxSessionExited(Lcom/termux/shared/shell/TermuxSession;)V
    .locals 3
    .param p1, "termuxSession"    # Lcom/termux/shared/shell/TermuxSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "termuxSession"
        }
    .end annotation

    .line 570
    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v0

    .line 573
    .local v0, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The onTermuxSessionExited() callback called for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" TermuxSession command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_0

    .line 577
    invoke-static {p0, v2, v0}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 583
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 587
    .end local v0    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 588
    return-void
.end method

.method public onTermuxTaskExited(Lcom/termux/shared/shell/TermuxTask;)V
    .locals 2
    .param p1, "termuxTask"    # Lcom/termux/shared/shell/TermuxTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "termuxTask"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;-><init>(Lcom/termux/app/TermuxService;Lcom/termux/shared/shell/TermuxTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 183
    const-string v0, "TermuxService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->unsetTermuxTerminalSessionClient()V

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeTermuxSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 2
    .param p1, "sessionToRemove"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionToRemove"
        }
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v0

    .line 561
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    monitor-exit p0

    return v0

    .line 558
    .end local v0    # "index":I
    .end local p1    # "sessionToRemove":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTerminalTranscriptRows()V
    .locals 1

    .line 600
    invoke-static {p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getTerminalTranscriptRows(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalTranscriptRows:Ljava/lang/Integer;

    .line 601
    return-void
.end method

.method public declared-synchronized setTermuxTerminalSessionClient(Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V
    .locals 3
    .param p1, "termuxTerminalSessionClient"    # Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "termuxTerminalSessionClient"
        }
    .end annotation

    monitor-enter p0

    .line 685
    :try_start_0
    iput-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    .line 687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    monitor-exit p0

    return-void

    .line 684
    .end local p1    # "termuxTerminalSessionClient":Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsetTermuxTerminalSessionClient()V
    .locals 3

    monitor-enter p0

    .line 696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wantsToStop()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return v0
.end method
