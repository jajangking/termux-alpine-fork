.class public abstract Lcom/termux/shared/activity/ActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-static {p0, p1, v0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    .line 43
    :goto_0
    const-string v1, "ActivityUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_2

    .line 44
    sget-object p0, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_STARTING_ACTIVITY_WITH_NULL_CONTEXT:Lcom/termux/shared/errors/Errno;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 46
    invoke-virtual {p0, v2, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-object p0

    .line 51
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 53
    sget-object v3, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_START_ACTIVITY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    .line 55
    :goto_1
    invoke-virtual {p1, p0, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public static startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZLandroidx/activity/result/ActivityResultLauncher;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZLandroidx/activity/result/ActivityResultLauncher;)Lcom/termux/shared/errors/Error;
    .locals 4

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    .line 106
    :goto_0
    const-string v1, "ActivityUtils"

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    .line 107
    :try_start_0
    invoke-virtual {p5, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    if-nez p0, :cond_3

    .line 110
    sget-object p1, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_STARTING_ACTIVITY_WITH_NULL_CONTEXT:Lcom/termux/shared/errors/Errno;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 112
    invoke-virtual {p1, v2, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-object p1

    .line 116
    :cond_3
    instance-of p5, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p5, :cond_4

    .line 117
    move-object p5, p0

    check-cast p5, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p5, p2, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 118
    :cond_4
    instance-of p5, p0, Landroid/app/Activity;

    if-eqz p5, :cond_5

    .line 119
    move-object p5, p0

    check-cast p5, Landroid/app/Activity;

    invoke-virtual {p5, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-object v2

    .line 121
    :cond_5
    sget-object p1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

    const-string p2, "context"

    const-string p5, "startActivityForResult"

    const-string v3, "Activity or AppCompatActivity"

    filled-new-array {p2, p5, v3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    if-eqz p3, :cond_7

    if-eqz p4, :cond_6

    move-object p2, p0

    goto :goto_2

    :cond_6
    move-object p2, v2

    .line 123
    :goto_2
    invoke-virtual {p1, p2, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object p1

    .line 128
    :goto_3
    sget-object p2, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_START_ACTIVITY_FOR_RESULT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    filled-new-array {v0, p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p2, p1, p5}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    if-eqz p3, :cond_9

    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v2

    .line 130
    :goto_4
    invoke-virtual {p1, p0, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return-object p1
.end method
