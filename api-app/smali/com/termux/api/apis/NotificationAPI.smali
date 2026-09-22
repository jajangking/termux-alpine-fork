.class public abstract Lcom/termux/api/apis/NotificationAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$7ktiI7Y093_E5gbWLoe41EXJsZs(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/NotificationAPI;->lambda$onReceiveChannel$4(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ScCZSsikwgf2TXABKXcV3mr-HIM(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/NotificationAPI;->lambda$onReceiveChannel$5(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m2RGx4KXmUIIkWnPj-j1xbOh8OM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/NotificationAPI;->lambda$onReceiveChannel$1(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngIMzC5MQQt_c61BwHhx_IyCFWI(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/NotificationAPI;->lambda$onReceiveChannel$3(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tkzoNcfM58ApLJHuDQZOO5FNqjE(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/NotificationAPI;->lambda$onReceiveChannel$2(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vedR2vqGAuGoHMNhBZpm7pHRwlI(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/NotificationAPI;->lambda$onReceiveChannel$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpriorityFromIntent(Landroid/content/Intent;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/NotificationAPI;->priorityFromIntent(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static buildNotification(Landroid/content/Context;Landroid/content/Intent;)Landroidx/core/util/Pair;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 141
    const-string v3, "Failed to find \""

    const-string v4, "priority"

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 142
    const-string v4, "default"

    .line 144
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v4, v1

    goto :goto_1

    :sswitch_0
    const-string v5, "high"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "min"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_1

    :sswitch_2
    const-string v5, "max"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "low"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_1
    packed-switch v4, :pswitch_data_0

    move v0, v2

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_2

    :pswitch_2
    move v0, v1

    .line 161
    :goto_2
    :pswitch_3
    const-string v1, "title"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v4, "led-color"

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, -0x1000000

    .line 167
    const-string v6, "NotificationAPI"

    if-eqz v4, :cond_5

    const/16 v11, 0x10

    .line 169
    :try_start_0
    invoke-static {v4, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v4, v5

    goto :goto_3

    .line 171
    :catch_0
    const-string v4, "Invalid LED color format! Ignoring!"

    invoke-static {v6, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v4, v2

    .line 175
    :goto_3
    const-string v11, "led-on"

    const/16 v12, 0x320

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 176
    const-string v13, "led-off"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 178
    const-string v13, "vibrate"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v13

    .line 179
    const-string v14, "sound"

    invoke-virtual {v8, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 180
    const-string v15, "ongoing"

    invoke-virtual {v8, v15, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 181
    const-string v9, "alert-once"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 183
    const-string v2, "action"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/termux/api/apis/NotificationAPI;->getNotificationId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    .line 187
    const-string v5, "group"

    invoke-virtual {v8, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v10

    .line 189
    const-string v10, "channel"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 191
    const-string v10, "termux-notification"

    :cond_6
    move-object/from16 v17, v2

    .line 194
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, v7, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    sget v10, Lcom/termux/api/R$drawable;->ic_event_note_black_24dp:I

    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/high16 v10, -0x1000000

    .line 197
    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 198
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 199
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 200
    invoke-virtual {v2, v15}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 201
    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 203
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 206
    const-string v0, "icon"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 212
    const-string v0, "ic_%1s_black_24dp"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 216
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v15, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v0, :cond_7

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\" icon"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" icon: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v10, 0x0

    :cond_7
    if-eqz v10, :cond_8

    .line 226
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 231
    :cond_8
    const-string v0, "image-path"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 233
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v6, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 239
    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    .line 238
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 243
    :cond_9
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v3, "media"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    const-string v0, "media-previous"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v3, "media-pause"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    const-string v6, "media-play"

    invoke-virtual {v8, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string v9, "media-next"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    const v10, 0x1080024

    if-nez v1, :cond_a

    .line 252
    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 255
    :cond_a
    invoke-static {v7, v0}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 256
    invoke-static {v7, v3}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 257
    invoke-static {v7, v6}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 258
    invoke-static {v7, v9}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 260
    new-instance v9, Landroidx/core/app/NotificationCompat$Action;

    const v15, 0x1080025

    const-string v10, "previous"

    invoke-direct {v9, v15, v10, v0}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 261
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    const v9, 0x1080023

    const-string v10, "pause"

    invoke-direct {v0, v9, v10, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 262
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    const-string v1, "play"

    const v9, 0x1080024

    invoke-direct {v0, v9, v1, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 263
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    const v1, 0x1080022

    const-string v3, "next"

    invoke-direct {v0, v1, v3, v6}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 265
    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x3

    filled-new-array {v3, v1, v6}, [I

    move-result-object v9

    .line 266
    invoke-virtual {v0, v9}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b
    if-eqz v5, :cond_c

    .line 270
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_c
    if-eqz v4, :cond_d

    .line 273
    invoke-virtual {v2, v4, v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    if-nez v13, :cond_d

    const/4 v1, 0x1

    .line 277
    new-array v13, v1, [J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    aput-wide v3, v13, v5

    goto :goto_5

    :cond_d
    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_5
    if-eqz v13, :cond_e

    .line 283
    array-length v0, v13

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 284
    array-length v3, v13

    invoke-static {v13, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    :cond_e
    if-eqz v14, :cond_f

    .line 288
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 290
    :cond_f
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v17, :cond_10

    move-object/from16 v1, v17

    .line 293
    invoke-static {v7, v1}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 294
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_10
    const/4 v0, 0x1

    const/4 v9, 0x3

    :goto_6
    if-gt v0, v9, :cond_13

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button_text_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button_action_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_12

    if-eqz v5, :cond_12

    .line 302
    const-string v1, "$REPLY"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v1, p0

    move-object v10, v2

    move-object/from16 v2, p1

    move v3, v0

    move-object/from16 v6, v16

    .line 303
    invoke-static/range {v1 .. v6}, Lcom/termux/api/apis/NotificationAPI;->createReplyAction(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    .line 306
    invoke-virtual {v10, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_7
    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    move-object v10, v2

    .line 308
    invoke-static {v7, v5}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 309
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    const v3, 0x108002b

    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_7

    :cond_12
    move-object v10, v2

    goto :goto_7

    :goto_8
    add-int/2addr v0, v1

    move-object v2, v10

    goto :goto_6

    :cond_13
    move-object v10, v2

    .line 314
    const-string v0, "on_delete_action"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 316
    invoke-static {v7, v0}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 317
    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 320
    :cond_14
    new-instance v0, Landroidx/core/util/Pair;

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1a354 -> :sswitch_3
        0x1a564 -> :sswitch_2
        0x1a652 -> :sswitch_1
        0x30dda2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 433
    invoke-static {p1}, Lcom/termux/api/apis/NotificationAPI;->createExecuteIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 437
    invoke-static {p0}, Lcom/termux/api/util/PluginUtils;->getLastPendingIntentRequestCode(Landroid/content/Context;)I

    move-result v0

    .line 438
    invoke-static {}, Lcom/termux/api/util/PendingIntentUtils;->getPendingIntentImmutableFlag()I

    move-result v1

    .line 436
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static createExecuteIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 418
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>()V

    .line 419
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.termux.file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/data/data/com.termux/files/usr/bin/sh"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    .line 420
    const-string v1, "-c"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 421
    sget-object p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    .line 424
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.termux.service_execute"

    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    const-string v1, "com.termux.alpine"

    const-string v2, "com.termux.app.TermuxService"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v1, "com.termux.execute.arguments"

    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, "com.termux.execute.runner"

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v0, "com.termux.execute.background"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method static createReplyAction(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;
    .locals 2

    .line 344
    new-instance v0, Landroidx/core/app/RemoteInput$Builder;

    const-string v1, "TERMUX_TEXT_REPLY"

    invoke-direct {v0, v1}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p3}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v0

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {p1, p3, p4, p5}, Lcom/termux/api/apis/NotificationAPI;->getMessageReplyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p4, 0x8000000

    .line 350
    invoke-static {p0, p2, p1, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 356
    new-instance p1, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget p2, Lcom/termux/api/R$drawable;->ic_event_note_black_24dp:I

    invoke-direct {p1, p2, p3, p0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 359
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    return-object p0
.end method

.method private static getMessageReplyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 366
    const-string p1, "com.termux.api"

    const-string v0, "com.termux.api.TermuxApiReceiver"

    .line 367
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "api_method"

    const-string v0, "NotificationReply"

    .line 368
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "id"

    .line 369
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "action"

    .line 370
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    .line 375
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 377
    const-string v0, "TERMUX_TEXT_REPLY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNotificationId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 324
    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 325
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$onReceiveChannel$0(Ljava/io/PrintWriter;)V
    .locals 1

    .line 93
    const-string v0, "Channel id not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReceiveChannel$1(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleted channel with id \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReceiveChannel$2(Ljava/io/PrintWriter;)V
    .locals 1

    .line 104
    const-string v0, "Cannot create a channel without a name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReceiveChannel$3(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created channel with id \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" and name \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReceiveChannel$4(Ljava/io/PrintWriter;)V
    .locals 1

    .line 112
    const-string v0, "Could not create/delete channel."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReceiveChannel$5(Ljava/io/PrintWriter;)V
    .locals 1

    .line 115
    const-string v0, "Notification channels are only available on Android 8.0 and higher, use the options for termux-notification instead."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static onReceiveChannel(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 84
    const-string v0, ""

    const-string v1, "NotificationAPI"

    const-string v2, "onReceiveChannel"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    .line 88
    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 89
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    const-string v3, "delete"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-static {p1, v1}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 99
    new-instance p1, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda5;

    invoke-direct {p1, v1}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_2
    new-instance v0, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    .line 107
    :cond_3
    invoke-static {}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline3;->m()V

    invoke-static {p2}, Lcom/termux/api/apis/NotificationAPI;->priorityFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 108
    invoke-static {p1, v0}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 109
    new-instance p1, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda7;

    invoke-direct {p1, v1, v2}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_2

    .line 93
    :cond_4
    :goto_0
    new-instance p1, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 111
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    new-instance p1, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_2

    .line 115
    :cond_5
    new-instance p1, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    :goto_2
    return-void
.end method

.method public static onReceiveRemoveNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 330
    const-string v0, "NotificationAPI"

    const-string v1, "onReceiveRemoveNotification"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    .line 333
    const-string p0, "id"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 335
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 p2, 0x0

    .line 336
    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static onReceiveReplyToNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 388
    const-string p0, "onReceiveReplyToNotification"

    const-string v0, "NotificationAPI"

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {p2}, Lcom/termux/api/apis/NotificationAPI;->getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 392
    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 395
    const-string v2, "$REPLY"

    invoke-static {p0}, Lcom/termux/api/apis/NotificationAPI;->shellEscape(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_0
    :try_start_0
    invoke-static {p1, v1}, Lcom/termux/api/apis/NotificationAPI;->createAction(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanceledException when performing action: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    const-string p0, "id"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 404
    const-string v0, "ongoing"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 406
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 409
    invoke-static {p1, p2}, Lcom/termux/api/apis/NotificationAPI;->buildNotification(Landroid/content/Context;Landroid/content/Intent;)Landroidx/core/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 410
    invoke-virtual {v2, p0, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {v2, p0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public static onReceiveShowNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 52
    const-string v0, "NotificationAPI"

    const-string v1, "onReceiveShowNotification"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1, p2}, Lcom/termux/api/apis/NotificationAPI;->buildNotification(Landroid/content/Context;Landroid/content/Intent;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 55
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 56
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 57
    new-instance v2, Lcom/termux/api/apis/NotificationAPI$1;

    invoke-direct {v2, p1, v1, p2, v0}, Lcom/termux/api/apis/NotificationAPI$1;-><init>(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {p0, p2, v2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static priorityFromIntent(Landroid/content/Intent;)I
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 120
    const-string v3, "priority"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 121
    const-string p0, "default"

    :cond_0
    const/4 v3, -0x1

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "high"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "min"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "max"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "low"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v2

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_2
    move v0, v1

    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a354 -> :sswitch_3
        0x1a564 -> :sswitch_2
        0x1a652 -> :sswitch_1
        0x30dda2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static shellEscape(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
