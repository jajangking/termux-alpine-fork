.class public abstract Lcom/termux/shared/android/PackageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppNameForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 0

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-static {p0, p1, v0}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationInfoSeInfoForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 3

    .line 217
    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    .line 219
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    const-string v1, "seinfo"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "seInfo"

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;

    move-result-object p0

    iget-object p0, p0, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 222
    :goto_1
    const-string v0, "PackageUtils"

    const-string v1, "Failed to get seInfo field value for ApplicationInfo class"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationInfoSeInfoUserForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 3

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 238
    :cond_0
    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    .line 240
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "seInfoUser"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;

    move-result-object p0

    iget-object p0, p0, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 243
    const-string v0, "PackageUtils"

    const-string v1, "Failed to get seInfoUser field value for ApplicationInfo class"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static getBaseAPKPathForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 0

    .line 395
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object p0
.end method

.method public static getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x4

    .line 42
    invoke-static {p0, p1, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getContextForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;
    .locals 2

    .line 56
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" package context with flags "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageUtils"

    invoke-static {p1, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Context;
    .locals 1

    .line 76
    invoke-static {p0, p1}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 79
    sget p2, Lcom/termux/shared/R$string;->error_get_package_context_failed_message:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p3}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/termux/shared/R$string;->error_get_package_context_failed_help_url_message:I

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_0
    const-string p2, "PackageUtils"

    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget p2, Lcom/termux/shared/R$string;->error_get_package_context_failed_title:I

    .line 85
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-static {p0, p2, p1}, Lcom/termux/shared/interact/MessageDialogUtils;->exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getPackageInfoForPackage(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, p1, v0}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getPackageNameForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageNameForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getProfileOwnerPackageNameForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 626
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 628
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 630
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 631
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 580
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 582
    :cond_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/data/DataUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static getTargetSDKForPackage(Landroid/content/pm/ApplicationInfo;)I
    .locals 0

    .line 373
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return p0
.end method

.method public static getUidForPackage(Landroid/content/Context;)I
    .locals 0

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getUidForPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method public static getUidForPackage(Landroid/content/pm/ApplicationInfo;)I
    .locals 0

    .line 351
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public static getUserIdForPackage(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    .line 599
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 601
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getUidForPackage(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionCodeForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 509
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getVersionNameForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 546
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isAppForPackageADebuggableBuild(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 419
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAppInstalledOnExternalStorage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 443
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isComponentDisabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 2

    .line 789
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 791
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p3, :cond_1

    .line 798
    sget p3, Lcom/termux/shared/R$string;->error_get_component_state_failed:I

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageUtils"

    invoke-static {p1, p0, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 718
    invoke-static/range {v0 .. v6}, Lcom/termux/shared/android/PackageUtils;->setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 739
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 742
    invoke-static {p0, p4, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object p4, v2

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_4

    :cond_0
    :goto_0
    const/4 p5, 0x0

    .line 746
    invoke-static {p0, p1, p2, p5}, Lcom/termux/shared/android/PackageUtils;->isComponentDisabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p5

    if-eqz p5, :cond_6

    if-eqz p3, :cond_1

    .line 751
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    .line 753
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_2

    .line 754
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object p5, v2

    :goto_1
    if-nez p5, :cond_3

    return-object v2

    :cond_3
    if-eqz p4, :cond_4

    .line 758
    invoke-static {p0, p4, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 759
    :cond_4
    new-instance p4, Landroid/content/ComponentName;

    invoke-direct {p4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_5

    move p5, v0

    goto :goto_2

    :cond_5
    const/4 p5, 0x2

    .line 760
    :goto_2
    invoke-virtual {v1, p4, p5, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_3

    .line 748
    :cond_6
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string p5, "Failed to find if component currently disabled"

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    return-object v2

    .line 766
    :goto_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_8

    .line 767
    sget p3, Lcom/termux/shared/R$string;->error_enable_component_failed:I

    goto :goto_5

    :cond_8
    sget p3, Lcom/termux/shared/R$string;->error_disable_component_failed:I

    :goto_5
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 766
    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_9

    .line 770
    invoke-static {p0, p1, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9
    return-object p1
.end method
