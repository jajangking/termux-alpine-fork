.class public abstract Lcom/termux/shared/android/PermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z
    .locals 0

    .line 452
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static checkIfBatteryOptimizationsDisabled(Landroid/content/Context;)Z
    .locals 1

    .line 529
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 53
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 65
    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 67
    sget p1, Lcom/termux/shared/R$string;->error_attempted_to_check_for_permissions_not_requested:I

    const-string v1, ", "

    .line 69
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 67
    const-string p1, "PermissionUtils"

    invoke-static {p1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 74
    :cond_0
    array-length v0, p1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 75
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/16 v1, 0x1000

    .line 188
    invoke-static {p0, v1}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 194
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 198
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 199
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static requestDisableBatteryOptimizations(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 3

    .line 554
    const-string v0, "PermissionUtils"

    const-string v1, "Requesting to disable battery optimizations"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 564
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    if-ltz p1, :cond_1

    .line 568
    invoke-static {p0, p1, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 570
    :cond_1
    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static requestDisplayOverOtherAppsPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 3

    .line 474
    const-string v0, "PermissionUtils"

    const-string v1, "Requesting display over apps permission"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 485
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    if-ltz p1, :cond_1

    .line 488
    invoke-static {p0, p1, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 490
    :cond_1
    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static requestPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 99
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/termux/shared/android/PermissionUtils;->requestPermissions(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static requestPermissions(Landroid/content/Context;[Ljava/lang/String;I)Z
    .locals 7

    .line 123
    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "PermissionUtils"

    if-lez v1, :cond_0

    .line 125
    sget p1, Lcom/termux/shared/R$string;->error_attempted_to_ask_for_permissions_not_requested:I

    const-string p2, ", "

    .line 127
    invoke-static {p2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p0, v3, p1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 131
    :cond_0
    array-length v0, p1

    move v1, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_4

    aget-object v5, p1, v1

    .line 132
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting Permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    instance-of v0, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 139
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 140
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 141
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2

    .line 143
    :cond_2
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

    const-string v1, "context"

    const-string v5, "requestPermissions"

    const-string v6, "Activity or AppCompatActivity"

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 143
    invoke-static {p0, v3, v0}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 148
    :goto_1
    sget v1, Lcom/termux/shared/R$string;->error_failed_to_request_permissions:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {v3, p1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return v4
.end method
