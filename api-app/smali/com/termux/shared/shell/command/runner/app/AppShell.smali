.class public final Lcom/termux/shared/shell/command/runner/app/AppShell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;
    }
.end annotation


# instance fields
.field private final mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

.field private final mProcess:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    .line 48
    iput-object p2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    return-void
.end method

.method static synthetic access$000(Lcom/termux/shared/shell/command/runner/app/AppShell;Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->executeInner(Landroid/content/Context;)V

    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;
    .locals 4

    .line 83
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_1
    invoke-interface {p3}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 92
    :cond_2
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "/"

    iput-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 96
    :cond_3
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 99
    iput-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 101
    :cond_4
    iget-object v2, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 102
    iput-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 105
    :cond_5
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v2, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-interface {p3, v0, v2}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p3, p0, p1}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;

    move-result-object p3

    if-eqz p4, :cond_6

    .line 111
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    :cond_6
    invoke-static {p3}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->convertEnvironmentToEnviron(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p3

    .line 113
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p4, 0x0

    .line 114
    new-array p4, p4, [Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 116
    sget-object p4, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, p4}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 117
    sget-object p2, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p2}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p2

    sget p3, Lcom/termux/shared/R$string;->error_failed_to_execute_app_shell_command:I

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 118
    invoke-static {v1, p1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    return-object v1

    .line 123
    :cond_7
    iget-object p4, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 124
    invoke-static {p4}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result p4

    const/4 v2, 0x1

    .line 123
    invoke-static {p1, v2, p4}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionInputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZ)Ljava/lang/String;

    move-result-object p4

    const-string v2, "AppShell"

    invoke-static {v2, p4}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" AppShell Environment:\n"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 126
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 125
    invoke-static {v2, p4}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p4

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0, p3, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    new-instance p4, Lcom/termux/shared/shell/command/runner/app/AppShell;

    invoke-direct {p4, p3, p1, p2}, Lcom/termux/shared/shell/command/runner/app/AppShell;-><init>(Ljava/lang/Process;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;)V

    if-eqz p5, :cond_8

    .line 141
    :try_start_1
    invoke-direct {p4, p0}, Lcom/termux/shared/shell/command/runner/app/AppShell;->executeInner(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :cond_8
    new-instance p1, Lcom/termux/shared/shell/command/runner/app/AppShell$1;

    invoke-direct {p1, p4, p0}, Lcom/termux/shared/shell/command/runner/app/AppShell$1;-><init>(Lcom/termux/shared/shell/command/runner/app/AppShell;Landroid/content/Context;)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :catch_0
    :goto_0
    return-object p4

    :catch_1
    move-exception p2

    .line 133
    sget-object p3, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p3}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p3

    sget p4, Lcom/termux/shared/R$string;->error_failed_to_execute_app_shell_command:I

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p5

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p0, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0, p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 134
    invoke-static {v1, p1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    return-object v1

    .line 84
    :cond_9
    :goto_1
    sget-object p2, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p2}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p2

    sget p3, Lcom/termux/shared/R$string;->error_executable_unset:I

    .line 85
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-virtual {p1, p2, p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 86
    invoke-static {v1, p1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    return-object v1
.end method

.method private executeInner(Landroid/content/Context;)V
    .locals 10

    .line 171
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-static {v1}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v1

    iput v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" AppShell with pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v2, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppShell"

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 178
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    new-instance v4, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v6, v6, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-stdout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v8, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v8, v8, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 180
    new-instance v5, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-stderr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v9, v8, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v9, v9, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-direct {v5, v6, v7, v9, v8}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 183
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 184
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 186
    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v6, v6, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v6}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 188
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 189
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 190
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 194
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EPIPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Stream closed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v1, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v1

    sget v2, Lcom/termux/shared/R$string;->error_exception_received_while_executing_app_shell_command:I

    iget-object v4, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v6}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 203
    iget-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object p1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 204
    invoke-static {p0, v3}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 205
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/runner/app/AppShell;->kill()V

    return-void

    .line 212
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p1

    .line 220
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :catch_1
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 225
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V

    .line 226
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 229
    const-string v0, "The \""

    if-nez p1, :cond_2

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exited normally"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exited with code: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring setting \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" AppShell state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 242
    iget-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 245
    :cond_4
    invoke-static {p0, v3}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    return-void
.end method

.method private static processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 307
    iget-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->shouldNotProcessResults()Z

    move-result p0

    const-string v0, "\" AppShell result"

    const-string v1, "AppShell"

    if-eqz p0, :cond_2

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate call to process \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result p0

    if-nez p0, :cond_3

    .line 324
    sget-object p0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, p0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 284
    :try_start_0
    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SIGKILL to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" AppShell with pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppShell"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
