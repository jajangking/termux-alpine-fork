.class public abstract Lcom/termux/api/apis/NotificationListAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/NotificationListAPI$NotificationService;
    }
.end annotation


# direct methods
.method static listNotifications(Landroid/content/Context;Landroid/util/JsonWriter;)V
    .locals 16

    move-object/from16 v0, p1

    .line 36
    invoke-static {}, Lcom/termux/api/apis/NotificationListAPI$NotificationService;->get()Lcom/termux/api/apis/NotificationListAPI$NotificationService;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 40
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    .line 41
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 49
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-wide v9, v9, Landroid/app/Notification;->when:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v10, ""

    if-eqz v8, :cond_0

    .line 53
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v10

    .line 55
    :goto_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.bigText"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 56
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.text"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v10

    .line 60
    :goto_2
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.textLines"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 61
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 63
    :goto_3
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 64
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_4
    move-object v12, v10

    .line 66
    :goto_4
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 67
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_5
    move-object v13, v10

    .line 69
    :goto_5
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 70
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_6
    move-object v14, v10

    .line 72
    :goto_6
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 73
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 75
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v5

    const-string v15, "id"

    .line 76
    invoke-virtual {v5, v15}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    move v15, v4

    int-to-long v3, v6

    invoke-virtual {v5, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "tag"

    .line 77
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "key"

    .line 78
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "group"

    .line 79
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "packageName"

    .line 80
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "title"

    .line 81
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "content"

    .line 82
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "when"

    .line 83
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-eqz v11, :cond_9

    .line 85
    const-string v3, "lines"

    invoke-virtual {v0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 86
    array-length v3, v11

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_8

    aget-object v5, v11, v4

    .line 87
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 89
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 91
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_0

    .line 93
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 24
    const-string v0, "NotificationListAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/termux/api/apis/NotificationListAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/NotificationListAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
