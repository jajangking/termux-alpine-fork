.class public abstract Lcom/termux/shared/android/PhantomProcessUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getActivityManagerMaxPhantomProcesses(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 10

    .line 76
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/bin/dumpsys activity settings | /system/bin/grep -iE \'^[\t ]+max_phantom_processes=[0-9]+$\' | /system/bin/cut -d = -f2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 83
    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const-string v4, "/system/bin/sh"

    const/4 v5, 0x0

    const-string v7, "/"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    const-string v2, " ActivityManager max_phantom_processes Command"

    iput-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    const/4 v2, 0x0

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 86
    new-instance v5, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;

    invoke-direct {v5}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/termux/shared/shell/command/runner/app/AppShell;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object p0

    .line 87
    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v2, v2, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 88
    const-string v3, "PhantomProcessUtils"

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object p0, p0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    :try_start_0
    iget-object p0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object p0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " did not return a valid integer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getFeatureFlagMonitorPhantomProcsValueString(Landroid/content/Context;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 1

    .line 64
    const-string v0, "settings_enable_monitor_phantom_procs"

    invoke-static {p0, v0}, Lcom/termux/shared/android/FeatureFlagUtils;->getFeatureFlagValueString(Landroid/content/Context;Ljava/lang/String;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsGlobalDeviceConfigSyncDisabled(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    .line 111
    sget-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->GLOBAL:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    sget-object v1, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->INT:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/termux/shared/android/SettingsProviderUtils;->getSettingsValue(Landroid/content/Context;Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;Lcom/termux/shared/android/SettingsProviderUtils$SettingType;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
