.class public Lcom/termux/shared/termux/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "markdownString"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "markdownString",
            "label",
            "value"
        }
    .end annotation

    .line 199
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/termux/shared/termux/AndroidUtils;->getPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    return-void
.end method

.method public static appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "markdownString"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "markdownString",
            "label",
            "value"
        }
    .end annotation

    .line 193
    if-nez p2, :cond_0

    return-void

    .line 194
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

    .line 195
    :cond_3
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/termux/shared/termux/AndroidUtils;->getPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    return-void
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 41
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_NAME"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PACKAGE_NAME"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getVersionNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VERSION_NAME"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getVersionCodeForPackage(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "VERSION_CODE"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getTargetSDKForPackage(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TARGET_SDK"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->isAppForPackageADebuggableBuild(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IS_DEBUGGABLE_BUILD"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->isAppInstalledOnExternalStorage(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IS_INSTALLED_ON_EXTERNAL_STORAGE"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_1
    invoke-static {}, Lcom/termux/shared/android/SELinuxUtils;->getContext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SE_PROCESS_CONTEXT"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/termux/shared/android/SELinuxUtils;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SE_FILE_CONTEXT"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {v1}, Lcom/termux/shared/packages/PackageUtils;->getApplicationInfoSeInfoUserForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "seInfoUser":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/termux/shared/packages/PackageUtils;->getApplicationInfoSeInfoForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    invoke-static {v2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v4, "SE_INFO"

    invoke-static {v0, v4, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "filesDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user/0/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    const-string v4, "FILES_DIR"

    invoke-static {v0, v4, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_3
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getSerialNumberForCurrentUser(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    .line 67
    .local v4, "userId":Ljava/lang/Long;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 68
    :cond_4
    const-string v5, "USER_ID"

    invoke-static {v0, v5, v4}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_5
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getProfileOwnerPackageNameForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PROFILE_OWNER"

    invoke-static {v0, v6, v5}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getCurrentMilliSecondLocalTimeStamp()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH.mm.ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 226
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 219
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTimeStamp()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 212
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/termux/shared/termux/AndroidUtils;->getSystemProperties()Ljava/util/Properties;

    move-result-object v0

    .line 86
    .local v0, "systemProperties":Ljava/util/Properties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "markdownString":Ljava/lang/StringBuilder;
    const-string v2, "## Device Info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, "\n\n### Software\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, "os.version"

    invoke-static {v2}, Lcom/termux/shared/termux/AndroidUtils;->getSystemPropertyWithAndroidAPI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OS_VERSION"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SDK_INT"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "RELEASE"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "CODENAME"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :goto_0
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "ID"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v3, "DISPLAY"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "INCREMENTAL"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v2, "ro.build.version.security_patch"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECURITY_PATCH"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v2, "ro.debuggable"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_DEBUGGABLE"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v2, "ro.boot.qemu"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_EMULATOR"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v2, "ro.treble.enabled"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_TREBLE_ENABLED"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "TYPE"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "TAGS"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v2, "\n\n### Hardware\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "MANUFACTURER"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "BRAND"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "PRODUCT"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "BOARD"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "HARDWARE"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "DEVICE"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v2, ", "

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUPPORTED_ABIS"

    invoke-static {v1, v4, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUPPORTED_32_BIT_ABIS"

    invoke-static {v1, v4, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUPPORTED_64_BIT_ABIS"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_1

    .line 124
    :try_start_0
    const-string v2, "PAGE_SIZE"

    sget v3, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v3}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdownIfSet(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v2

    .line 130
    :cond_1
    :goto_1
    const-string v2, "\n##\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPropertyMarkdown(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "value"
        }
    .end annotation

    .line 203
    const-string v0, "-"

    invoke-static {p0, p1, v0}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperties()Ljava/util/Properties;
    .locals 11

    .line 138
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 147
    .local v0, "systemProperties":Ljava/util/Properties;
    const-string v1, "^\\[([^]]+)]: \\[(.+)]$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 150
    .local v1, "propertiesPattern":Ljava/util/regex/Pattern;
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const-string v3, "/system/bin/getprop"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v2

    .line 152
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 155
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 156
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 160
    invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 161
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 162
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "key":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "value":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 165
    invoke-virtual {v0, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 170
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_1

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Failed to get run \"/system/bin/getprop\" to get system properties."

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method public static getSystemPropertyWithAndroidAPI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get system property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x0

    return-object v1
.end method
