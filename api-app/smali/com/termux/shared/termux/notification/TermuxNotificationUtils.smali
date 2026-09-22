.class public abstract Lcom/termux/shared/termux/notification/TermuxNotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized getNextNotificationId(Landroid/content/Context;)I
    .locals 4

    const-class v0, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 29
    monitor-exit v0

    return v1

    .line 31
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 32
    monitor-exit v0

    return v1

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getLastNotificationId()I

    move-result v2

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x539

    if-eq v2, v3, :cond_2

    const/16 v3, 0x53a

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_5

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 44
    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setLastNotificationId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getTermuxOrPluginAppNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 0

    .line 74
    invoke-static/range {p1 .. p9}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p2, 0x1

    .line 81
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 91
    sget p3, Lcom/termux/shared/R$drawable;->ic_error_notification:I

    invoke-static {p0, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    const p0, -0x9f8275

    .line 101
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 104
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p1
.end method
