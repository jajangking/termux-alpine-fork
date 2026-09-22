.class public Lcom/termux/shared/shell/TermuxShellUtils;
.super Ljava/lang/Object;
.source "TermuxShellUtils.java"


# static fields
.field public static TERMUX_API_VERSION_NAME:Ljava/lang/String;

.field public static TERMUX_APK_RELEASE:Ljava/lang/String;

.field public static TERMUX_APP_PID:Ljava/lang/String;

.field public static TERMUX_IS_DEBUGGABLE_BUILD:Ljava/lang/String;

.field public static TERMUX_VERSION_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "environment",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 129
    .local p0, "environment":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method

.method public static buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "isFailSafe"    # Z
    .param p2, "workingDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPackageContext",
            "isFailSafe",
            "workingDirectory"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/termux/shared/shell/TermuxShellUtils;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object p2

    .line 48
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "environment":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/termux/shared/shell/TermuxShellUtils;->loadTermuxEnvVariables(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_VERSION_NAME:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TERMUX_VERSION="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    sget-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_IS_DEBUGGABLE_BUILD:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TERMUX_IS_DEBUGGABLE_BUILD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_IS_DEBUGGABLE_BUILD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    sget-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APP_PID:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TERMUX_APP_PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APP_PID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_4
    sget-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APK_RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TERMUX_APK_RELEASE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APK_RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_5
    sget-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_API_VERSION_NAME:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TERMUX_API_VERSION="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_API_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_6
    const-string v1, "TERM=xterm-256color"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "COLORTERM=truecolor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.termux.alpine"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 72
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_7

    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_7

    .line 73
    const/4 v2, 0x0

    .line 76
    :cond_7
    if-eqz v2, :cond_9

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TERMUX_APP__DATA_DIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TERMUX_APP__LEGACY_DATA_DIR=/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TERMUX_APP__SE_FILE_CONTEXT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/termux/shared/android/SELinuxUtils;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v2}, Lcom/termux/shared/packages/PackageUtils;->getApplicationInfoSeInfoUserForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "seInfoUser":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TERMUX_APP__SE_INFO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/termux/shared/packages/PackageUtils;->getApplicationInfoSeInfoForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    invoke-static {v3}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, ""

    goto :goto_0

    :cond_8
    move-object v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "seInfoUser":Ljava/lang/String;
    :cond_9
    goto :goto_1

    .line 87
    :catch_0
    move-exception v2

    .line 91
    :goto_1
    const-string v2, "TERMUX__ROOTFS_DIR=/data/data/com.termux.alpine/files"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v2, "HOME=/data/data/com.termux.alpine/files/home"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v2, "TERMUX__HOME=/data/data/com.termux.alpine/files/home"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v2, "PREFIX=/data/data/com.termux.alpine/files/usr"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v2, "TERMUX__PREFIX=/data/data/com.termux.alpine/files/usr"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TERMUX__SE_PROCESS_CONTEXT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/termux/shared/android/SELinuxUtils;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOOTCLASSPATH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BOOTCLASSPATH"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_ROOT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ANDROID_ROOT"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_DATA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ANDROID_DATA"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTERNAL_STORAGE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v2, "ANDROID_ART_ROOT"

    invoke-static {v0, v2}, Lcom/termux/shared/shell/TermuxShellUtils;->addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V

    .line 108
    const-string v2, "DEX2OATBOOTCLASSPATH"

    invoke-static {v0, v2}, Lcom/termux/shared/shell/TermuxShellUtils;->addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V

    .line 109
    const-string v2, "ANDROID_I18N_ROOT"

    invoke-static {v0, v2}, Lcom/termux/shared/shell/TermuxShellUtils;->addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V

    .line 110
    const-string v2, "ANDROID_RUNTIME_ROOT"

    invoke-static {v0, v2}, Lcom/termux/shared/shell/TermuxShellUtils;->addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V

    .line 111
    const-string v2, "ANDROID_TZDATA_ROOT"

    invoke-static {v0, v2}, Lcom/termux/shared/shell/TermuxShellUtils;->addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID__BUILD_VERSION_SDK="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    if-eqz p1, :cond_a

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PATH= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PATH"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_a
    const-string v2, "LANG=en_US.UTF-8"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v2, "PATH=/data/data/com.termux.alpine/files/usr/bin"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PWD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v2, "TMPDIR=/data/data/com.termux.alpine/files/usr/tmp"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v2, "LD_LIBRARY_PATH=/data/data/com.termux.alpine/files/usr/lib"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_2
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static clearTermuxTMPDIR(Z)V
    .locals 2
    .param p0, "onlyIfExists"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyIfExists"
        }
    .end annotation

    .line 190
    const-string v0, "/data/data/com.termux.alpine/files/usr/tmp"

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$TMPDIR"

    invoke-static {v1, v0}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 195
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;)V

    .line 198
    :cond_1
    return-void
.end method

.method public static getDefaultBinPath()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "/data/data/com.termux.alpine/files/usr/bin"

    return-object v0
.end method

.method public static getDefaultWorkingDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "/data/data/com.termux.alpine/files/home"

    return-object v0
.end method

.method public static loadTermuxEnvVariables(Landroid/content/Context;)V
    .locals 7
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPackageContext"
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APK_RELEASE:Ljava/lang/String;

    .line 202
    .local v0, "termuxAPKReleaseOld":Ljava/lang/String;
    const/4 v1, 0x0

    sput-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APK_RELEASE:Ljava/lang/String;

    sput-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APP_PID:Ljava/lang/String;

    sput-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_IS_DEBUGGABLE_BUILD:Ljava/lang/String;

    sput-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_VERSION_NAME:Ljava/lang/String;

    .line 205
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAppInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 207
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 208
    .local v2, "termuxPackageContext":Landroid/content/Context;
    if-eqz v2, :cond_3

    .line 209
    invoke-static {v2}, Lcom/termux/shared/packages/PackageUtils;->getVersionNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_VERSION_NAME:Ljava/lang/String;

    .line 210
    invoke-static {v2}, Lcom/termux/shared/packages/PackageUtils;->isAppForPackageADebuggableBuild(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    sput-object v3, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_IS_DEBUGGABLE_BUILD:Ljava/lang/String;

    .line 212
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxAppPID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APP_PID:Ljava/lang/String;

    .line 215
    if-nez v0, :cond_2

    .line 216
    invoke-static {v2}, Lcom/termux/shared/packages/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "signingCertificateSHA256Digest":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 218
    invoke-static {v3}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[^a-zA-Z]"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APK_RELEASE:Ljava/lang/String;

    .line 219
    .end local v3    # "signingCertificateSHA256Digest":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 220
    :cond_2
    sput-object v0, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_APK_RELEASE:Ljava/lang/String;

    .line 226
    .end local v2    # "termuxPackageContext":Landroid/content/Context;
    :cond_3
    :goto_1
    sput-object v1, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_API_VERSION_NAME:Ljava/lang/String;

    .line 229
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAPIAppInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 231
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxAPIPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 232
    .local v1, "termuxAPIPackageContext":Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 233
    invoke-static {v1}, Lcom/termux/shared/packages/PackageUtils;->getVersionNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/termux/shared/shell/TermuxShellUtils;->TERMUX_API_VERSION_NAME:Ljava/lang/String;

    .line 235
    .end local v1    # "termuxAPIPackageContext":Landroid/content/Context;
    :cond_4
    return-void
.end method

.method public static setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "fileToExecute"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileToExecute",
            "arguments"
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "interpreter":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v3, "in":Ljava/io/FileInputStream;
    const/16 v4, 0x100

    :try_start_1
    new-array v4, v4, [B

    .line 146
    .local v4, "buffer":[B
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 147
    .local v5, "bytesRead":I
    const/4 v6, 0x4

    if-le v5, v6, :cond_7

    .line 148
    aget-byte v6, v4, v1

    const/16 v7, 0x7f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    aget-byte v6, v4, v8

    const/16 v7, 0x45

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_0

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    const/16 v7, 0x46

    if-ne v6, v7, :cond_0

    goto :goto_3

    .line 150
    :cond_0
    aget-byte v6, v4, v1

    const/16 v7, 0x23

    if-ne v6, v7, :cond_6

    aget-byte v6, v4, v8

    const/16 v7, 0x21

    if-ne v6, v7, :cond_6

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 154
    aget-byte v9, v4, v7

    int-to-char v9, v9

    .line 155
    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v9, v10, :cond_2

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 156
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 153
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    .restart local v9    # "c":C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "executable":Ljava/lang/String;
    const-string v11, "/usr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "/bin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 162
    :cond_4
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, "parts":[Ljava/lang/String;
    array-length v12, v11

    sub-int/2addr v12, v8

    aget-object v8, v11, v12

    .line 164
    .local v8, "binary":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/com.termux.alpine/files/usr/bin/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 172
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    .end local v8    # "binary":Ljava/lang/String;
    .end local v9    # "c":C
    .end local v10    # "executable":Ljava/lang/String;
    .end local v11    # "parts":[Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 174
    :cond_6
    const-string v6, "/data/data/com.termux.alpine/files/usr/bin/sh"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 177
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    :cond_7
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 144
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "interpreter":Ljava/lang/String;
    .end local p0    # "fileToExecute":Ljava/lang/String;
    .end local p1    # "arguments":[Ljava/lang/String;
    :goto_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "interpreter":Ljava/lang/String;
    .restart local p0    # "fileToExecute":Ljava/lang/String;
    .restart local p1    # "arguments":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 182
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_8
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    if-eqz p1, :cond_9

    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 186
    :cond_9
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
