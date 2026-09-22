.class public Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iget-object v1, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 54
    :cond_0
    const-string v2, "SHELL_CMD__RUNNER_NAME"

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "SHELL_CMD__PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->id:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SHELL_CMD__SHELL_ID"

    invoke-static {v0, v1, p1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p1, "SHELL_CMD__SHELL_NAME"

    iget-object p2, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
