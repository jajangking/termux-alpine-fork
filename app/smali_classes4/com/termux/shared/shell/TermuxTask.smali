.class public final Lcom/termux/shared/shell/TermuxTask;
.super Ljava/lang/Object;
.source "TermuxTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxTask"


# instance fields
.field private final mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

.field private final mProcess:Ljava/lang/Process;

.field private final mTermuxTaskClient:Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;)V
    .locals 0
    .param p1, "process"    # Ljava/lang/Process;
    .param p2, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p3, "termuxTaskClient"    # Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "process",
            "executionCommand",
            "termuxTaskClient"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    .line 39
    iput-object p2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    .line 40
    iput-object p3, p0, Lcom/termux/shared/shell/TermuxTask;->mTermuxTaskClient:Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/termux/shared/shell/TermuxTask;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/shared/shell/TermuxTask;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/termux/shared/shell/TermuxTask;->executeInner(Landroid/content/Context;)V

    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .param p2, "termuxTaskClient"    # Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;
    .param p3, "shellEnvironmentClient"    # Lcom/termux/shared/shell/ShellEnvironmentClient;
    .param p4, "isSynchronous"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "executionCommand",
            "termuxTaskClient",
            "shellEnvironmentClient",
            "isSynchronous"
        }
    .end annotation

    .line 69
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    invoke-interface {p3}, Lcom/termux/shared/shell/ShellEnvironmentClient;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "/"

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 74
    :cond_2
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p3, p0, v1, v0}, Lcom/termux/shared/shell/ShellEnvironmentClient;->buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "env":[Ljava/lang/String;
    iget-object v2, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-interface {p3, v2, v3}, Lcom/termux/shared/shell/ShellEnvironmentClient;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "commandArray":[Ljava/lang/String;
    sget-object v3, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v3}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    .line 79
    sget-object v3, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v3}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v3

    sget v6, Lcom/termux/shared/R$string;->error_failed_to_execute_termux_task_command:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 80
    invoke-static {v5, p1}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 81
    return-object v5

    .line 85
    :cond_3
    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 86
    invoke-static {v3}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v3

    .line 85
    invoke-static {p1, v4, v3}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionInputLogString(Lcom/termux/shared/models/ExecutionCommand;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v6, "TermuxTask"

    invoke-static {v6, v3}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v3}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "taskName":Ljava/lang/String;
    iget-object v6, p1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 91
    iput-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 96
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    iget-object v8, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .local v1, "process":Ljava/lang/Process;
    nop

    .line 103
    new-instance v4, Lcom/termux/shared/shell/TermuxTask;

    invoke-direct {v4, v1, p1, p2}, Lcom/termux/shared/shell/TermuxTask;-><init>(Ljava/lang/Process;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;)V

    .line 105
    .local v4, "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    if-eqz p4, :cond_5

    .line 107
    :try_start_1
    invoke-direct {v4, p0}, Lcom/termux/shared/shell/TermuxTask;->executeInner(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_0
    goto :goto_1

    .line 108
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .line 112
    :cond_5
    new-instance v5, Lcom/termux/shared/shell/TermuxTask$1;

    invoke-direct {v5, v4, p0}, Lcom/termux/shared/shell/TermuxTask$1;-><init>(Lcom/termux/shared/shell/TermuxTask;Landroid/content/Context;)V

    .line 121
    invoke-virtual {v5}, Lcom/termux/shared/shell/TermuxTask$1;->start()V

    .line 124
    :goto_1
    return-object v4

    .line 97
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    :catch_2
    move-exception v6

    .line 98
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v7}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v7

    sget v8, Lcom/termux/shared/R$string;->error_failed_to_execute_termux_task_command:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1, v6}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 99
    invoke-static {v5, p1}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 100
    return-object v5
.end method

.method private executeInner(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 139
    .local v0, "pid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" TermuxTask with pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TermuxTask"

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    .line 144
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v1, "STDIN":Ljava/io/DataOutputStream;
    new-instance v5, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-stdout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v8, v8, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v8, v8, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v9, v9, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 146
    .local v5, "STDOUT":Lcom/termux/shared/shell/StreamGobbler;
    new-instance v6, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-stderr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v9, v9, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v9, v9, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v10, v10, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 149
    .local v6, "STDERR":Lcom/termux/shared/shell/StreamGobbler;
    invoke-virtual {v5}, Lcom/termux/shared/shell/StreamGobbler;->start()V

    .line 150
    invoke-virtual {v6}, Lcom/termux/shared/shell/StreamGobbler;->start()V

    .line 152
    iget-object v7, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v7, v7, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v7}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 154
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v8, v8, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 155
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 156
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 159
    :catch_0
    move-exception v7

    .line 160
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "EPIPE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Stream closed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v3, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v3}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v3

    sget v8, Lcom/termux/shared/R$string;->error_exception_received_while_executing_termux_task_command:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v11}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8, v7}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 169
    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v2, v2, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    .line 170
    invoke-static {p0, v4}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 171
    invoke-virtual {p0}, Lcom/termux/shared/shell/TermuxTask;->kill()V

    .line 172
    return-void

    .line 178
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 186
    .local v7, "exitCode":I
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    goto :goto_1

    .line 187
    :catch_1
    move-exception v8

    .line 190
    :goto_1
    invoke-virtual {v5}, Lcom/termux/shared/shell/StreamGobbler;->join()V

    .line 191
    invoke-virtual {v6}, Lcom/termux/shared/shell/StreamGobbler;->join()V

    .line 192
    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 195
    const-string v8, "The \""

    if-nez v7, :cond_3

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v9}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " exited normally"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v9}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " exited with code: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_2
    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring setting \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" TermuxTask state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v2, v2, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    .line 208
    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v3, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v2, v3}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 209
    return-void

    .line 211
    :cond_5
    invoke-static {p0, v4}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 212
    return-void
.end method

.method private static processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 4
    .param p0, "termuxTask"    # Lcom/termux/shared/shell/TermuxTask;
    .param p1, "executionCommand"    # Lcom/termux/shared/models/ExecutionCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "termuxTask",
            "executionCommand"
        }
    .end annotation

    .line 272
    if-eqz p0, :cond_0

    .line 273
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    .line 275
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v0

    const-string v1, "\" TermuxTask result"

    const-string v2, "TermuxTask"

    if-eqz v0, :cond_2

    .line 278
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

    .line 279
    return-void

    .line 282
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

    .line 284
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mTermuxTaskClient:Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;

    if-eqz v0, :cond_3

    .line 285
    invoke-interface {v0, p0}, Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;->onTermuxTaskExited(Lcom/termux/shared/shell/TermuxTask;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    .line 292
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    return-object v0
.end method

.method public getProcess()Ljava/lang/Process;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    return-object v0
.end method

.method public kill()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 250
    .local v0, "pid":I
    :try_start_0
    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SIGKILL to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" TermuxTask with pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxTask"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method public killIfExecuting(Landroid/content/Context;Z)V
    .locals 3
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

    .line 224
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const-string v1, "TermuxTask"

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sending SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TermuxTask since it has already finished executing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TermuxTask"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v1, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v1

    sget v2, Lcom/termux/shared/R$string;->error_sending_sigkill_to_process:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    if-eqz p2, :cond_1

    .line 233
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    .line 234
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->isExecuting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/termux/shared/shell/TermuxTask;->kill()V

    .line 241
    :cond_2
    return-void
.end method
