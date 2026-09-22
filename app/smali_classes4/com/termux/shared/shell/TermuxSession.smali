.class public Lcom/termux/shared/shell/TermuxSession;
.super Ljava/lang/Object;
.source "TermuxSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxSession"


# instance fields
.field private final mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

.field private final mSetStdoutOnExit:Z

.field private final mTerminalSession:Lcom/termux/terminal/TerminalSession;

.field private final mTermuxSessionClient:Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;


# direct methods
.method private constructor <init>(Lcom/termux/terminal/TerminalSession;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Z)V
    .locals 0
    .param p1, "terminalSession"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p3, "termuxSessionClient"    # Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;
    .param p4, "setStdoutOnExit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "terminalSession",
            "executionCommand",
            "termuxSessionClient",
            "setStdoutOnExit"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    .line 35
    iput-object p2, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    .line 36
    iput-object p3, p0, Lcom/termux/shared/shell/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;

    .line 37
    iput-boolean p4, p0, Lcom/termux/shared/shell/TermuxSession;->mSetStdoutOnExit:Z

    .line 38
    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/terminal/TerminalSessionClient;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Ljava/lang/String;Z)Lcom/termux/shared/shell/TermuxSession;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p2, "terminalSessionClient"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p3, "termuxSessionClient"    # Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;
    .param p4, "shellEnvironmentClient"    # Lcom/termux/shared/shell/ShellEnvironmentClient;
    .param p5, "sessionName"    # Ljava/lang/String;
    .param p6, "setStdoutOnExit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "executionCommand",
            "terminalSessionClient",
            "termuxSessionClient",
            "shellEnvironmentClient",
            "sessionName",
            "setStdoutOnExit"
        }
    .end annotation

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    :cond_0
    invoke-interface/range {p4 .. p4}, Lcom/termux/shared/shell/ShellEnvironmentClient;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 71
    :cond_1
    iget-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    const-string v4, "/"

    iput-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 74
    :cond_2
    iget-boolean v4, v1, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    iget-object v5, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-interface {v2, v0, v4, v5}, Lcom/termux/shared/shell/ShellEnvironmentClient;->buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "environment":[Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Lcom/termux/shared/shell/ShellEnvironmentClient;->getDefaultBinPath()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "defaultBinPath":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    const-string v5, "/system/bin"

    .line 80
    :cond_3
    const/4 v6, 0x0

    .line 81
    .local v6, "isLoginShell":Z
    iget-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v8, 0x0

    if-nez v7, :cond_7

    .line 82
    iget-boolean v7, v1, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    if-nez v7, :cond_5

    .line 83
    const/4 v7, 0x3

    const-string v9, "login"

    const-string v10, "bash"

    const-string v11, "zsh"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    move v10, v8

    :goto_0
    if-ge v10, v7, :cond_5

    aget-object v11, v9, v10

    .line 84
    .local v11, "shellBinary":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v12, "shellFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->canExecute()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 86
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 87
    goto :goto_1

    .line 83
    .end local v11    # "shellBinary":Ljava/lang/String;
    .end local v12    # "shellFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 92
    :cond_5
    :goto_1
    iget-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 101
    const-string v7, "/system/bin/sh"

    iput-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    goto :goto_2

    .line 103
    :cond_6
    const/4 v6, 0x1

    move v13, v6

    goto :goto_3

    .line 108
    :cond_7
    :goto_2
    move v13, v6

    .end local v6    # "isLoginShell":Z
    .local v13, "isLoginShell":Z
    :goto_3
    iget-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Lcom/termux/shared/shell/ShellEnvironmentClient;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, "processArgs":[Ljava/lang/String;
    aget-object v6, v14, v8

    iput-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v13, :cond_8

    const-string v7, "-"

    goto :goto_4

    :cond_8
    const-string v7, ""

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v7}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 113
    .local v15, "processName":Ljava/lang/String;
    array-length v6, v14

    new-array v12, v6, [Ljava/lang/String;

    .line 114
    .local v12, "arguments":[Ljava/lang/String;
    aput-object v15, v12, v8

    .line 115
    array-length v6, v14

    const/4 v7, 0x1

    if-le v6, v7, :cond_9

    array-length v6, v14

    sub-int/2addr v6, v7

    invoke-static {v14, v7, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_9
    iput-object v12, v1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 119
    iget-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v6, :cond_a

    .line 120
    iput-object v15, v1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 122
    :cond_a
    sget-object v6, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v1, v6}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 123
    sget-object v6, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v6}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v6

    sget v9, Lcom/termux/shared/R$string;->error_failed_to_execute_termux_session_command:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 124
    const/4 v6, 0x0

    invoke-static {v6, v1}, Lcom/termux/shared/shell/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 125
    return-object v6

    .line 128
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TermuxSession"

    invoke-static {v7, v6}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" TermuxSession"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v16, Lcom/termux/terminal/TerminalSession;

    iget-object v7, v1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v8, v1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    iget-object v9, v1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    iget-object v11, v1, Lcom/termux/shared/models/ExecutionCommand;->terminalTranscriptRows:Ljava/lang/Integer;

    move-object/from16 v6, v16

    move-object v10, v4

    move-object/from16 v17, v12

    .end local v12    # "arguments":[Ljava/lang/String;
    .local v17, "arguments":[Ljava/lang/String;
    move-object/from16 v12, p2

    invoke-direct/range {v6 .. v12}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V

    .line 133
    .local v6, "terminalSession":Lcom/termux/terminal/TerminalSession;
    if-eqz v3, :cond_c

    .line 134
    iput-object v3, v6, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 137
    :cond_c
    new-instance v7, Lcom/termux/shared/shell/TermuxSession;

    move-object/from16 v8, p3

    move/from16 v9, p6

    invoke-direct {v7, v6, v1, v8, v9}, Lcom/termux/shared/shell/TermuxSession;-><init>(Lcom/termux/terminal/TerminalSession;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Z)V

    return-object v7
.end method

.method private static processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 4
    .param p0, "termuxSession"    # Lcom/termux/shared/shell/TermuxSession;
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "termuxSession",
            "executionCommand"
        }
    .end annotation

    .line 226
    if-eqz p0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    .line 229
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v0

    const-string v1, "\" TermuxSession result"

    const-string v2, "TermuxSession"

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring duplicate call to process \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;

    if-eqz v0, :cond_3

    .line 239
    invoke-interface {v0, p0}, Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;->onTermuxSessionExited(Lcom/termux/shared/shell/TermuxSession;)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    .line 246
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    .line 155
    .local v0, "exitCode":I
    const-string v1, "The \""

    const-string v2, "TermuxSession"

    if-nez v0, :cond_1

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" TermuxSession exited normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" TermuxSession exited with code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring setting \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" TermuxSession state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    .line 168
    iget-boolean v1, p0, Lcom/termux/shared/shell/TermuxSession;->mSetStdoutOnExit:Z

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v1, v1, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v2, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v1, v2}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    return-void

    .line 174
    :cond_4
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/termux/shared/shell/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 175
    return-void
.end method

.method public getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    return-object v0
.end method

.method public getTerminalSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public killIfExecuting(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processResult"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "processResult"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const-string v1, "TermuxSession"

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sending SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TermuxSession since it has already finished executing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TermuxSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v1, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v1

    sget v2, Lcom/termux/shared/R$string;->error_sending_sigkill_to_process:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    if-eqz p2, :cond_2

    .line 195
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    .line 198
    iget-boolean v0, p0, Lcom/termux/shared/shell/TermuxSession;->mSetStdoutOnExit:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v0, v0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/shell/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 207
    return-void
.end method
