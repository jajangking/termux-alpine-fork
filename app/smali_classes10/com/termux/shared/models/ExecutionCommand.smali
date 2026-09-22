.class public Lcom/termux/shared/models/ExecutionCommand;
.super Ljava/lang/Object;
.source "ExecutionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExecutionCommand"


# instance fields
.field public arguments:[Ljava/lang/String;

.field public backgroundCustomLogLevel:Ljava/lang/Integer;

.field public commandDescription:Ljava/lang/String;

.field public commandHelp:Ljava/lang/String;

.field public commandIntent:Landroid/content/Intent;

.field public commandLabel:Ljava/lang/String;

.field private currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public executable:Ljava/lang/String;

.field public executableUri:Landroid/net/Uri;

.field public id:Ljava/lang/Integer;

.field public inBackground:Z

.field public isFailsafe:Z

.field public isPluginExecutionCommand:Z

.field public pluginAPIHelp:Ljava/lang/String;

.field private previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public processingResultsAlreadyCalled:Z

.field public final resultConfig:Lcom/termux/shared/models/ResultConfig;

.field public final resultData:Lcom/termux/shared/models/ResultData;

.field public sessionAction:Ljava/lang/String;

.field public stdin:Ljava/lang/String;

.field public terminalTranscriptRows:Ljava/lang/Integer;

.field public workingDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 62
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 123
    new-instance v0, Lcom/termux/shared/models/ResultConfig;

    invoke-direct {v0}, Lcom/termux/shared/models/ResultConfig;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    .line 127
    new-instance v0, Lcom/termux/shared/models/ResultData;

    invoke-direct {v0}, Lcom/termux/shared/models/ResultData;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 62
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 123
    new-instance v0, Lcom/termux/shared/models/ResultConfig;

    invoke-direct {v0}, Lcom/termux/shared/models/ResultConfig;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    .line 127
    new-instance v0, Lcom/termux/shared/models/ResultData;

    invoke-direct {v0}, Lcom/termux/shared/models/ResultData;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    .line 140
    iput-object p1, p0, Lcom/termux/shared/models/ExecutionCommand;->id:Ljava/lang/Integer;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "executable"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .param p4, "stdin"    # Ljava/lang/String;
    .param p5, "workingDirectory"    # Ljava/lang/String;
    .param p6, "inBackground"    # Z
    .param p7, "isFailsafe"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "executable",
            "arguments",
            "stdin",
            "workingDirectory",
            "inBackground",
            "isFailsafe"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 62
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 123
    new-instance v0, Lcom/termux/shared/models/ResultConfig;

    invoke-direct {v0}, Lcom/termux/shared/models/ResultConfig;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    .line 127
    new-instance v0, Lcom/termux/shared/models/ResultData;

    invoke-direct {v0}, Lcom/termux/shared/models/ResultData;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    .line 144
    iput-object p1, p0, Lcom/termux/shared/models/ExecutionCommand;->id:Ljava/lang/Integer;

    .line 145
    iput-object p2, p0, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 149
    iput-boolean p6, p0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    .line 150
    iput-boolean p7, p0, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    .line 151
    return-void
.end method

.method public static getArgumentsLogString([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "argumentsArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "argumentsArray"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Arguments:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "argumentsString":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 504
    const-string v1, "\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    const/16 v4, 0x320

    const/4 v5, 0x0

    .line 507
    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v3

    .line 506
    const-string v4, "-"

    invoke-static {v2, v3, v4}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 508
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    :cond_0
    const-string v1, "```"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 512
    :cond_1
    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getArgumentsMarkdownString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "argumentsArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "argumentsArray"
        }
    .end annotation

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**Arguments:**"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "argumentsString":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_0

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v2

    const-string v5, "-"

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 546
    :cond_1
    const-string v1, " -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDetailedLogString(Lcom/termux/shared/models/ExecutionCommand;)Ljava/lang/String;
    .locals 4
    .param p0, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "executionCommand"
        }
    .end annotation

    .line 329
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v0, "logString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionInputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p0, v1, v2, v2}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandDescriptionLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandHelpLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getPluginAPIHelpLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExecutionCommandMarkdownString(Lcom/termux/shared/models/ExecutionCommand;)Ljava/lang/String;
    .locals 6
    .param p0, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "executionCommand"
        }
    .end annotation

    .line 350
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Execution Command"

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Previous State"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Current State"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const-string v4, "Executable"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-static {v3}, Lcom/termux/shared/models/ExecutionCommand;->getArgumentsMarkdownString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const-string v4, "Working Directory"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "inBackground"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isFailsafe"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    const-string v4, "Stdin"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    const-string v4, "Background Custom Log Level"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v4, "Session Action"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isPluginExecutionCommand"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    invoke-static {v4}, Lcom/termux/shared/models/ResultConfig;->getResultConfigMarkdownString(Lcom/termux/shared/models/ResultConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-static {v3}, Lcom/termux/shared/models/ResultData;->getResultDataMarkdownString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    const-string v3, "\n##\n"

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 385
    :cond_4
    if-eqz v1, :cond_5

    .line 386
    const-string v1, "\n\n### Command Description\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_5
    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 388
    const-string v1, "\n\n### Command Help\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_7
    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 393
    const-string v1, "\n\n### Plugin API Help\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExecutionInputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p1, "ignoreNull"    # Z
    .param p2, "logStdin"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "executionCommand",
            "ignoreNull",
            "logStdin"
        }
    .end annotation

    .line 260
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v2, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const-string v3, "\n"

    if-eq v1, v2, :cond_1

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getPreviousStateLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCurrentStateLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getExecutableLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getArgumentsLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getWorkingDirectoryLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getInBackgroundLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getIsFailsafeLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_5

    .line 277
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 278
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getStdinLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 281
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getBackgroundCustomLogLevelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 285
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getSessionActionLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->commandIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9

    .line 288
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIntentLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getIsPluginExecutionCommandLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_a

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    invoke-static {v2, p1}, Lcom/termux/shared/models/ResultConfig;->getResultConfigLogString(Lcom/termux/shared/models/ResultConfig;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;
    .locals 4
    .param p0, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p1, "ignoreNull"    # Z
    .param p2, "logResultData"    # Z
    .param p3, "logStdoutAndStderr"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executionCommand",
            "ignoreNull",
            "logResultData",
            "logStdoutAndStderr"
        }
    .end annotation

    .line 307
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getPreviousStateLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCurrentStateLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    if-eqz p2, :cond_1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-static {v2, p3}, Lcom/termux/shared/models/ResultData;->getResultDataLogString(Lcom/termux/shared/models/ResultData;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getArgumentsLogString()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/models/ExecutionCommand;->getArgumentsLogString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCustomLogLevelLogString()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background Custom Log Level: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandDescriptionLogString()Ljava/lang/String;
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    const-string v1, "Command Description"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandHelpLogString()Ljava/lang/String;
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    const-string v1, "Command Help"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandIdAndLabelLogString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getIdLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandIntentLogString()Ljava/lang/String;
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 476
    const-string v0, "Command Intent: -"

    return-object v0

    .line 478
    :cond_0
    invoke-static {v0}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Command Intent"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandLabelLogString()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    return-object v0

    .line 420
    :cond_0
    const-string v0, "Execution Command"

    return-object v0
.end method

.method public getCurrentStateLogString()Ljava/lang/String;
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current State: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutableLogString()Ljava/lang/String;
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executable: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdLogString()Ljava/lang/String;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getInBackgroundLogString()Ljava/lang/String;
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inBackground: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFailsafeLogString()Ljava/lang/String;
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFailsafe: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsPluginExecutionCommandLogString()Ljava/lang/String;
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPluginExecutionCommand: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginAPIHelpLogString()Ljava/lang/String;
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    const-string v1, "Plugin API Help"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousStateLogString()Ljava/lang/String;
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previous State: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActionLogString()Ljava/lang/String;
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v1, "Session Action"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStdinLogString()Ljava/lang/String;
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "Stdin: -"

    return-object v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    const-string v1, "Stdin"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkingDirectoryLogString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Working Directory: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasExecuted()Z
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getValue()I

    move-result v0

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getValue()I

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

    .line 177
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isExecuting()Z
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
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

    .line 181
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPluginExecutionCommandWithPendingResult()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultConfig:Lcom/termux/shared/models/ResultConfig;

    invoke-virtual {v0}, Lcom/termux/shared/models/ResultConfig;->isCommandWithPendingResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isStateFailed()Z
    .locals 4

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 230
    monitor-exit p0

    return v2

    .line 232
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-virtual {v0}, Lcom/termux/shared/models/ResultData;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    const-string v0, "ExecutionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has an invalid errCode value set in errors list while having ExecutionState.FAILED state.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v3, v3, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    monitor-exit p0

    return v2

    .line 236
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuccessful()Z
    .locals 2

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
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

    .line 185
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z
    .locals 3
    .param p1, "newState"    # Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    if-eq v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    iput-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->previousState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 172
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :cond_1
    iput-object p1, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 162
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "ExecutionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state transition from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ExecutionCommand;->currentState:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 160
    .end local p1    # "newState":Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    monitor-enter p0

    .line 201
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 201
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 205
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 205
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p3, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 209
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 209
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 190
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 194
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;Ljava/util/List;)Z
    .locals 3
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/shared/models/errors/Error;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 197
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p2    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "ExecutionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStateFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultData encountered an error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :cond_0
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p0, v0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 211
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "code":I
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldNotProcessResults()Z
    .locals 2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/shared/models/ExecutionCommand;->processingResultsAlreadyCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 221
    monitor-exit p0

    return v1

    .line 223
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/termux/shared/models/ExecutionCommand;->processingResultsAlreadyCalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 219
    .end local p0    # "this":Lcom/termux/shared/models/ExecutionCommand;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 245
    invoke-static {p0, v1, v1}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionInputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    invoke-static {p0, v1, v1, v1}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
