.class public Lcom/termux/shared/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotificationUtils"

.field public static final NOTIFICATION_MODE_ALL:I = 0x8

.field public static final NOTIFICATION_MODE_LIGHTS:I = 0x4

.field public static final NOTIFICATION_MODE_NONE:I = 0x0

.field public static final NOTIFICATION_MODE_SILENT:I = 0x1

.field public static final NOTIFICATION_MODE_SOUND:I = 0x2

.field public static final NOTIFICATION_MODE_SOUND_AND_LIGHTS:I = 0x6

.field public static final NOTIFICATION_MODE_SOUND_AND_VIBRATE:I = 0x5

.field public static final NOTIFICATION_MODE_VIBRATE:I = 0x3

.field public static final NOTIFICATION_MODE_VIBRATE_AND_LIGHTS:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "notificationText"    # Ljava/lang/CharSequence;
    .param p5, "notificationBigText"    # Ljava/lang/CharSequence;
    .param p6, "contentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p8, "notificationMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "channelId",
            "priority",
            "title",
            "notificationText",
            "notificationBigText",
            "contentIntent",
            "deleteIntent",
            "notificationMode"
        }
    .end annotation

    .line 68
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 71
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 72
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 73
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 74
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 76
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 81
    :cond_1
    invoke-static {v0, p8}, Lcom/termux/shared/notification/NotificationUtils;->setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "notificationMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "builder",
            "notificationMode"
        }
    .end annotation

    .line 109
    const-string v0, "NotificationUtils"

    packed-switch p1, :pswitch_data_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid notificationMode: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" passed to setNotificationDefaults()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 135
    goto :goto_0

    .line 131
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 132
    goto :goto_0

    .line 128
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 129
    goto :goto_0

    .line 125
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 126
    goto :goto_0

    .line 122
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 123
    goto :goto_0

    .line 119
    :pswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 120
    goto :goto_0

    .line 116
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 117
    goto :goto_0

    .line 114
    :pswitch_7
    goto :goto_0

    .line 111
    :pswitch_8
    const-string v1, "The NOTIFICATION_MODE_NONE passed to setNotificationDefaults(), force setting builder to null."

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 141
    :goto_0
    return-object p0

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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "channelId",
            "channelName",
            "importance"
        }
    .end annotation

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 101
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-static {p0}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 102
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 104
    :cond_1
    return-void
.end method
