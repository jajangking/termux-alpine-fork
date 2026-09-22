.class public Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;
.super Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;
.source "SourceFile"


# instance fields
.field protected shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;-><init>()V

    .line 26
    new-instance v0, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    return-void
.end method


# virtual methods
.method public getDefaultWorkingDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "/"

    return-object v0
.end method

.method public getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;
    .locals 1

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string p2, "HOME"

    const-string v0, "/"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string p2, "LANG"

    const-string v0, "en_US.UTF-8"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string p2, "PATH"

    invoke-static {p2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p2, "TMPDIR"

    const-string v0, "/data/local/tmp"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string p2, "COLORTERM"

    const-string v0, "truecolor"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string p2, "TERM"

    const-string v0, "xterm-256color"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string p2, "ANDROID_ASSETS"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 44
    const-string p2, "ANDROID_DATA"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 45
    const-string p2, "ANDROID_ROOT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 46
    const-string p2, "ANDROID_STORAGE"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 51
    const-string p2, "EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 52
    const-string p2, "ASEC_MOUNTPOINT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 53
    const-string p2, "LOOP_MOUNTPOINT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 55
    const-string p2, "ANDROID_RUNTIME_ROOT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 56
    const-string p2, "ANDROID_ART_ROOT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 57
    const-string p2, "ANDROID_I18N_ROOT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 58
    const-string p2, "ANDROID_TZDATA_ROOT"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 60
    const-string p2, "BOOTCLASSPATH"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 61
    const-string p2, "DEX2OATBOOTCLASSPATH"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 62
    const-string p2, "SYSTEMSERVERCLASSPATH"

    invoke-static {p1, p2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;
    .locals 3

    .line 86
    iget-boolean v0, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->isFailsafe:Z

    invoke-virtual {p0, p1, v0}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 88
    iget-object v1, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_0
    const-string v2, "PWD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->createHomeDir(Ljava/util/HashMap;)V

    .line 94
    iget-boolean v1, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->setShellCommandShellEnvironment:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1, p1, p2}, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;->getEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method
