.class public Lcom/termux/shared/shell/command/ExecutionCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/command/ExecutionCommand$Runner;,
        Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
    }
.end annotation


# instance fields
.field public arguments:[Ljava/lang/String;

.field public backgroundCustomLogLevel:Ljava/lang/Integer;

.field public commandIntent:Landroid/content/Intent;

.field public commandLabel:Ljava/lang/String;

.field private currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public executable:Ljava/lang/String;

.field public executableUri:Landroid/net/Uri;

.field public id:Ljava/lang/Integer;

.field public isFailsafe:Z

.field public isPluginExecutionCommand:Z

.field public mPid:I

.field private previousState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public processingResultsAlreadyCalled:Z

.field public final resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

.field public final resultData:Lcom/termux/shared/shell/command/result/ResultData;

.field public runner:Ljava/lang/String;

.field public sessionAction:Ljava/lang/String;

.field public setShellCommandShellEnvironment:Z

.field public shellCreateMode:Ljava/lang/String;

.field public shellName:Ljava/lang/String;

.field public stdin:Ljava/lang/String;

.field public workingDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    .line 151
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 153
    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->previousState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 228
    new-instance v0, Lcom/termux/shared/shell/command/result/ResultConfig;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/result/ResultConfig;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    .line 232
    new-instance v0, Lcom/termux/shared/shell/command/result/ResultData;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/result/ResultData;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    .line 151
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 153
    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->previousState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 228
    new-instance v0, Lcom/termux/shared/shell/command/result/ResultConfig;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/result/ResultConfig;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    .line 232
    new-instance v0, Lcom/termux/shared/shell/command/result/ResultData;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/result/ResultData;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    .line 249
    iput-object p1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->id:Ljava/lang/Integer;

    .line 250
    iput-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 252
    iput-object p4, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    .line 253
    iput-object p5, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 254
    iput-object p6, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    .line 255
    iput-boolean p7, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->isFailsafe:Z

    return-void
.end method

.method public static getArgumentsLogString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 642
    array-length p0, p1

    if-eqz p0, :cond_1

    .line 643
    const-string p0, "\n```\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    move v1, p0

    .line 644
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v1, p1, v1

    const/16 v4, 0x320

    const/4 v5, 0x1

    .line 646
    invoke-static {v1, v4, v5, p0, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "-"

    .line 645
    invoke-static {v2, v1, v4}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    .line 649
    :cond_0
    const-string p0, "```"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 651
    :cond_1
    const-string p0, " -"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExecutionInputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZ)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 365
    const-string p0, "null"

    return-object p0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    const/4 v2, -0x1

    const-string v3, "\n"

    if-eq v1, v2, :cond_1

    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getPidLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->previousState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    if-eq v1, v2, :cond_2

    .line 375
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getPreviousStateLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCurrentStateLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutableLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getArgumentsLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getWorkingDirectoryLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getRunnerLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getIsFailsafeLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 385
    iget-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {p2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 386
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getStdinLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p1, :cond_5

    .line 388
    iget-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    if-eqz p2, :cond_6

    .line 389
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getBackgroundCustomLogLevelLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p1, :cond_7

    .line 392
    iget-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->sessionAction:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 393
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getSessionActionLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p1, :cond_9

    .line 395
    iget-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 396
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getShellNameLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz p1, :cond_b

    .line 399
    iget-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 400
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getShellCreateModeLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getSetRunnerShellEnvironmentLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d

    .line 405
    iget-object p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->commandIntent:Landroid/content/Intent;

    if-eqz p2, :cond_e

    .line 406
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIntentLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getIsPluginExecutionCommandLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-boolean p2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz p2, :cond_f

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    invoke-static {p0, p1}, Lcom/termux/shared/shell/command/result/ResultConfig;->getResultConfigLogString(Lcom/termux/shared/shell/command/result/ResultConfig;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExecutionOutputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZZ)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 425
    const-string p0, "null"

    return-object p0

    .line 427
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getPreviousStateLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCurrentStateLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-static {p0, p3}, Lcom/termux/shared/shell/command/result/ResultData;->getResultDataLogString(Lcom/termux/shared/shell/command/result/ResultData;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getArgumentsLogString()Ljava/lang/String;
    .locals 2

    .line 559
    const-string v0, "Arguments"

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getArgumentsLogString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCustomLogLevelLogString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background Custom Log Level: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandIdAndLabelLogString()Ljava/lang/String;
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getIdLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandIntentLogString()Ljava/lang/String;
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->commandIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 615
    const-string v0, "Command Intent: -"

    return-object v0

    .line 617
    :cond_0
    invoke-static {v0}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "Command Intent"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandLabelLogString()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    return-object v0

    .line 547
    :cond_0
    const-string v0, "Execution Command"

    return-object v0
.end method

.method public getCurrentStateLogString()Ljava/lang/String;
    .locals 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current State: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutableLogString()Ljava/lang/String;
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executable: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdLogString()Ljava/lang/String;
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIsFailsafeLogString()Ljava/lang/String;
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFailsafe: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->isFailsafe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsPluginExecutionCommandLogString()Ljava/lang/String;
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPluginExecutionCommand: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPidLogString()Ljava/lang/String;
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousStateLogString()Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previous State: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->previousState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunnerLogString()Ljava/lang/String;
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "Runner"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActionLogString()Ljava/lang/String;
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "Session Action"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetRunnerShellEnvironmentLogString()Ljava/lang/String;
    .locals 2

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Shell Command Shell Environment: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->setShellCommandShellEnvironment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShellCreateModeLogString()Ljava/lang/String;
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "Shell Create Mode"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShellNameLogString()Ljava/lang/String;
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "Shell Name"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStdinLogString()Ljava/lang/String;
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "Stdin: -"

    return-object v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "Stdin"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkingDirectoryLogString()Ljava/lang/String;
    .locals 2

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Working Directory: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasExecuted()Z
    .locals 2

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getValue()I

    move-result v0

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isStateFailed()Z
    .locals 4

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 335
    monitor-exit p0

    return v2

    .line 337
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/result/ResultData;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    const-string v0, "ExecutionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has an invalid errCode value set in errors list while having ExecutionState.FAILED state.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v3, v3, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 341
    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized isSuccessful()Z
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z
    .locals 3

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    if-eq v0, v1, :cond_1

    .line 275
    iput-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->previousState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 277
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 267
    :cond_2
    :goto_1
    :try_start_1
    const-string v0, "ExecutionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state transition from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->currentState:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 306
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1

    monitor-enter p0

    .line 310
    :try_start_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 1

    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/shared/shell/command/result/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 318
    const-string p1, "ExecutionCommand"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStateFailed for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " resultData encountered an error."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 321
    :cond_0
    :goto_0
    sget-object p1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {p0, p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized shouldNotProcessResults()Z
    .locals 2

    monitor-enter p0

    .line 325
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->processingResultsAlreadyCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 326
    monitor-exit p0

    return v1

    .line 328
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->processingResultsAlreadyCalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 350
    invoke-static {p0, v1, v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionInputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :cond_0
    invoke-static {p0, v1, v1, v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
