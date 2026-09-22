.class public abstract Lcom/termux/api/apis/CallLogAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static bridge synthetic -$$Nest$smgetCallLogs(Landroid/content/Context;Landroid/util/JsonWriter;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/termux/api/apis/CallLogAPI;->getCallLogs(Landroid/content/Context;Landroid/util/JsonWriter;II)V

    return-void
.end method

.method private static getCallLogs(Landroid/content/Context;Landroid/util/JsonWriter;II)V
    .locals 18

    move-object/from16 v0, p1

    .line 41
    const-string v1, "type"

    const-string v2, "duration"

    const-string v3, "date"

    const-string v4, "name"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 43
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "limit"

    .line 44
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "offset"

    .line 45
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 46
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const-string v10, "date DESC"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 43
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 47
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToLast()Z

    .line 49
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 50
    const-string v7, "number"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 51
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 52
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 53
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 54
    const-string v11, "subscription_id"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 56
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 59
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_0

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 62
    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v15

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v16}, Lcom/termux/api/apis/CallLogAPI;->getCallerNameString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 63
    const-string v4, "phone_number"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 64
    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Lcom/termux/api/apis/CallLogAPI;->getCallTypeString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 65
    invoke-virtual {v0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15, v12}, Lcom/termux/api/apis/CallLogAPI;->getDateString(Ljava/lang/Long;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 66
    invoke-virtual {v0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Lcom/termux/api/apis/CallLogAPI;->getTimeString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 67
    const-string v4, "sim_id"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 69
    invoke-interface {v5}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v17

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    if-eqz v5, :cond_1

    .line 43
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method

.method private static getCallTypeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 84
    const-string p0, "UNKNOWN_TYPE"

    return-object p0

    .line 78
    :pswitch_0
    const-string p0, "BLOCKED"

    return-object p0

    .line 82
    :pswitch_1
    const-string p0, "REJECTED"

    return-object p0

    .line 83
    :pswitch_2
    const-string p0, "VOICEMAIL"

    return-object p0

    .line 80
    :pswitch_3
    const-string p0, "MISSED"

    return-object p0

    .line 81
    :pswitch_4
    const-string p0, "OUTGOING"

    return-object p0

    .line 79
    :pswitch_5
    const-string p0, "INCOMING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCallerNameString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 89
    const-string p0, "UNKNOWN_CALLER"

    :cond_0
    return-object p0
.end method

.method private static getDateString(Ljava/lang/Long;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeString(I)Ljava/lang/String;
    .locals 5

    .line 97
    div-int/lit16 v0, p0, 0xe10

    .line 98
    rem-int/lit16 v1, p0, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 99
    rem-int/lit8 p0, p0, 0x3c

    .line 104
    const-string v2, ""

    if-lez v0, :cond_0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "%02d:"

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%02d:%02d"

    invoke-static {v2, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 27
    const-string v0, "CallLogAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 30
    const-string v1, "limit"

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 32
    new-instance v2, Lcom/termux/api/apis/CallLogAPI$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/termux/api/apis/CallLogAPI$1;-><init>(Landroid/content/Context;II)V

    invoke-static {p0, p1, v2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
