.class public abstract Lcom/termux/shared/android/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static appendLiteralPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 240
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/termux/shared/android/AndroidUtils;->getLiteralPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 232
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/termux/shared/android/AndroidUtils;->getPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 227
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "REL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 228
    :cond_3
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/termux/shared/android/AndroidUtils;->getPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const-string v2, "FILES_DIR"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getUserIdForPackage(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 57
    :cond_2
    const-string v2, "USER_ID"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_3
    const-string v1, "PROFILE_OWNER"

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getProfileOwnerPackageNameForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 73
    invoke-static {p0, p1}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    invoke-static {p0, p1}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v2, "APP_NAME"

    invoke-static {p0, p1}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v2, "PACKAGE_NAME"

    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getPackageNameForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v2, "VERSION_NAME"

    invoke-static {v0}, Lcom/termux/shared/android/PackageUtils;->getVersionNameForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v2, "VERSION_CODE"

    invoke-static {v0}, Lcom/termux/shared/android/PackageUtils;->getVersionCodeForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getUidForPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "UID"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getTargetSDKForPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "TARGET_SDK"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->isAppForPackageADebuggableBuild(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "IS_DEBUGGABLE_BUILD"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->isAppInstalledOnExternalStorage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "APK_PATH"

    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getBaseAPKPathForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "IS_INSTALLED_ON_EXTERNAL_STORAGE"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_2
    const-string v0, "SE_PROCESS_CONTEXT"

    invoke-static {}, Lcom/termux/shared/android/SELinuxUtils;->getContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/android/SELinuxUtils;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SE_FILE_CONTEXT"

    invoke-static {v1, v0, p0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoSeInfoUserForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoSeInfoForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, ""

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    const-string p1, "SE_INFO"

    invoke-static {v1, p1, p0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 260
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    .line 117
    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getSystemProperties()Ljava/util/Properties;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v1, "## Device Info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "\n\n### Software\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "os.version"

    invoke-static {v1}, Lcom/termux/shared/android/AndroidUtils;->getSystemPropertyWithAndroidAPI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OS_VERSION"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SDK_INT"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string v2, "RELEASE"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_0
    const-string v3, "CODENAME"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :goto_0
    const-string v2, "ID"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v2, "DISPLAY"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v2, "INCREMENTAL"

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v2, "ro.build.version.security_patch"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECURITY_PATCH"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v2, "ro.debuggable"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_DEBUGGABLE"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v2, "ro.boot.qemu"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_EMULATOR"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v2, "ro.treble.enabled"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "IS_TREBLE_ENABLED"

    invoke-static {v0, v2, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string p1, "TYPE"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string p1, "TAGS"

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0x1e

    if-le v1, p1, :cond_2

    .line 143
    invoke-static {p0}, Lcom/termux/shared/android/PhantomProcessUtils;->getActivityManagerMaxPhantomProcesses(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 144
    const-string v1, "MAX_PHANTOM_PROCESSES"

    if-eqz p1, :cond_1

    .line 145
    invoke-static {v0, v1, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- (*"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/termux/shared/R$string;->msg_requires_dump_and_package_usage_stats_permissions:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/termux/shared/android/AndroidUtils;->appendLiteralPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :goto_1
    invoke-static {p0}, Lcom/termux/shared/android/PhantomProcessUtils;->getFeatureFlagMonitorPhantomProcsValueString(Landroid/content/Context;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MONITOR_PHANTOM_PROCS"

    invoke-static {v0, v1, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string p1, "DEVICE_CONFIG_SYNC_DISABLED"

    invoke-static {p0}, Lcom/termux/shared/android/PhantomProcessUtils;->getSettingsGlobalDeviceConfigSyncDisabled(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_2
    const-string p0, "\n\n### Hardware\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string p0, "MANUFACTURER"

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string p0, "BRAND"

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string p0, "MODEL"

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string p0, "PRODUCT"

    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string p0, "BOARD"

    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string p0, "HARDWARE"

    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string p0, "DEVICE"

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string p0, ", "

    invoke-static {p0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object p0

    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SUPPORTED_ABIS"

    invoke-static {v0, p1, p0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string p0, "\n##\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLiteralPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 244
    const-string v0, "-"

    invoke-static {p0, p1, v0}, Lcom/termux/shared/markdown/MarkdownUtils;->getLiteralSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 236
    const-string v0, "-"

    invoke-static {p0, p1, v0}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties()Ljava/util/Properties;
    .locals 8

    .line 171
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 180
    const-string v1, "^\\[([^]]+)]: \\[(.+)]$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 183
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const-string v3, "/system/bin/getprop"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 189
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 196
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 198
    invoke-virtual {v0, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 203
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 206
    :goto_1
    const-string v2, "Failed to get run \"/system/bin/getprop\" to get system properties."

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static getSystemPropertyWithAndroidAPI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 218
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get system property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
