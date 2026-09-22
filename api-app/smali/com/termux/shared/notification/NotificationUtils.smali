.class public abstract Lcom/termux/shared/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 73
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 74
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 75
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 76
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 78
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 80
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p0, p2, :cond_1

    .line 81
    invoke-static {v0, p1}, Lcom/termux/shared/notification/NotificationUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 83
    :cond_1
    invoke-static {v0, p8}, Lcom/termux/shared/notification/NotificationUtils;->setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 3

    .line 111
    const-string v0, "NotificationUtils"

    packed-switch p1, :pswitch_data_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid notificationMode: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" passed to setNotificationDefaults()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 p1, -0x1

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 133
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 130
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :goto_0
    :pswitch_7
    return-object p0

    .line 113
    :pswitch_8
    const-string p0, "The NOTIFICATION_MODE_NONE passed to setNotificationDefaults(), force setting builder to null."

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 103
    invoke-static {p0}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 105
    invoke-static {p0, p1}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method
