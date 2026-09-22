.class public abstract Lcom/termux/api/apis/SmsInboxAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DISPLAY_NAME_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/api/apis/SmsInboxAPI;->DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getAllSms(Landroid/content/Context;Landroid/util/JsonWriter;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz p5, :cond_0

    .line 293
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p6, :cond_1

    .line 294
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p5, 0x1

    .line 296
    new-array p5, p5, [Ljava/lang/String;

    aput-object p6, p5, v6

    const-string p6, "address LIKE ?"

    move-object v4, p5

    move-object v3, p6

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    move-object v3, p5

    move-object v4, p6

    .line 300
    :goto_0
    invoke-static {p7, p3, p4}, Lcom/termux/api/apis/SmsInboxAPI;->getSortOrder(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v1, p2

    .line 302
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 305
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-eqz p8, :cond_2

    .line 307
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 309
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    .line 312
    :goto_1
    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string p5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p4, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 313
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    :goto_2
    if-ge v6, p3, :cond_4

    .line 317
    invoke-static {p2, p1, p4, p0}, Lcom/termux/api/apis/SmsInboxAPI;->writeElement(Landroid/database/Cursor;Landroid/util/JsonWriter;Ljava/util/Map;Landroid/content/Context;)V

    if-eqz p8, :cond_3

    .line 320
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 322
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 325
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_4
    if-eqz p2, :cond_5

    .line 302
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw p0
.end method

.method private static getContactNameFromNumber(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 330
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 335
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/termux/api/apis/SmsInboxAPI;->DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 338
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 341
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 345
    :goto_0
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    if-eqz p1, :cond_2

    .line 336
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method

.method public static getConversations(Landroid/content/Context;Landroid/util/JsonWriter;IILjava/lang/String;Ljava/lang/String;ZZZIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    .line 137
    const-string v3, "thread_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    if-eqz v2, :cond_0

    .line 140
    const-string v4, "^(.*[ \t\n])?thread_id[ \t\n].*$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'conversation-selection\' cannot contain \'thread_id\': `"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :goto_0
    invoke-static {v6, v4, v5}, Lcom/termux/api/apis/SmsInboxAPI;->getSortOrder(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    move/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v6, p12

    .line 146
    invoke-static {v6, v4, v5}, Lcom/termux/api/apis/SmsInboxAPI;->getSortOrder(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    .line 149
    sget-object v5, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v10

    move-object/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 151
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz p8, :cond_2

    .line 153
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_b

    .line 155
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    .line 158
    :goto_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    if-eqz p7, :cond_3

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    :goto_2
    const/4 v15, 0x0

    move v9, v15

    :goto_3
    if-ge v9, v13, :cond_e

    .line 166
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    .line 168
    invoke-interface {v12}, Landroid/database/Cursor;->moveToPrevious()Z

    move/from16 v16, v9

    goto/16 :goto_9

    .line 172
    :cond_4
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz p7, :cond_5

    .line 175
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    :cond_5
    if-eqz v2, :cond_7

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 183
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 181
    :cond_7
    :goto_4
    const-string v2, ""

    .line 186
    :goto_5
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " == \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    move/from16 v16, v9

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 190
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_b

    if-eqz p6, :cond_a

    if-eqz p13, :cond_8

    .line 194
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_6

    .line 196
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    :goto_6
    move v6, v15

    :goto_7
    if-ge v6, v5, :cond_b

    .line 200
    invoke-static {v4, v1, v14, v0}, Lcom/termux/api/apis/SmsInboxAPI;->writeElement(Landroid/database/Cursor;Landroid/util/JsonWriter;Ljava/util/Map;Landroid/content/Context;)V

    if-eqz p13, :cond_9

    .line 203
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_8

    .line 205
    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 209
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    invoke-static {v4, v1, v14, v0}, Lcom/termux/api/apis/SmsInboxAPI;->writeElement(Landroid/database/Cursor;Landroid/util/JsonWriter;Ljava/util/Map;Landroid/content/Context;)V

    .line 214
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz p7, :cond_c

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :cond_c
    if-eqz p8, :cond_d

    .line 221
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_9

    .line 223
    :cond_d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_9
    add-int/lit8 v9, v16, 0x1

    goto/16 :goto_3

    :cond_e
    if-eqz p7, :cond_f

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_a

    .line 229
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-void

    :goto_b
    if-eqz v12, :cond_10

    .line 149
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_c
    throw v1
.end method

.method private static getMessageType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 364
    const-string p0, ""

    return-object p0

    .line 360
    :cond_0
    const-string p0, "failed"

    return-object p0

    .line 362
    :cond_1
    const-string p0, "outbox"

    return-object p0

    .line 358
    :cond_2
    const-string p0, "draft"

    return-object p0

    .line 356
    :cond_3
    const-string p0, "sent"

    return-object p0

    .line 354
    :cond_4
    const-string p0, "inbox"

    return-object p0
.end method

.method private static getSortOrder(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 387
    const-string p0, ""

    :cond_0
    if-ltz p2, :cond_1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " LIMIT "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-ltz p1, :cond_2

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " OFFSET "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 395
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    :cond_3
    return-object p0
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p2

    .line 44
    const-string v1, "SmsInboxAPI"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "conversation-list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 50
    const-string v1, "conversation-return-multiple-messages"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 51
    const-string v1, "conversation-return-nested-view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 52
    const-string v1, "conversation-return-no-order-reverse"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 54
    const-string v1, "conversation-offset"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 55
    const-string v1, "conversation-limit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 56
    const-string v1, "conversation-selection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    const-string v1, "conversation-sort-order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v3, "date DESC"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v9, v3

    .line 74
    :goto_1
    const-string v1, "offset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 75
    const-string v1, "limit"

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 76
    const-string v1, "type"

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 77
    const-string v5, "message-selection"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 79
    const-string v5, "from"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object/from16 v19, v5

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 85
    :goto_4
    const-string v5, "message-sort-order"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_5

    :cond_4
    move-object/from16 v16, v5

    goto :goto_6

    :cond_5
    :goto_5
    move-object/from16 v16, v3

    .line 91
    :goto_6
    const-string v3, "message-return-no-order-reverse"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v4, :cond_6

    .line 95
    invoke-static {v2}, Lcom/termux/api/apis/SmsInboxAPI;->typeToContentURI(I)Landroid/net/Uri;

    move-result-object v1

    :goto_7
    move-object/from16 v18, v1

    goto :goto_8

    :cond_6
    if-nez v19, :cond_7

    move v2, v1

    .line 97
    :cond_7
    invoke-static {v2}, Lcom/termux/api/apis/SmsInboxAPI;->typeToContentURI(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_7

    .line 101
    :goto_8
    new-instance v1, Lcom/termux/api/apis/SmsInboxAPI$1;

    move-object v3, v1

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v19}, Lcom/termux/api/apis/SmsInboxAPI$1;-><init>(ZLandroid/content/Context;IILjava/lang/String;Ljava/lang/String;ZZZIILjava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static typeToContentURI(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 380
    sget-object p0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 375
    :cond_0
    sget-object p0, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 373
    :cond_1
    sget-object p0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 371
    :cond_2
    sget-object p0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 377
    :cond_3
    sget-object p0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method private static writeElement(Landroid/database/Cursor;Landroid/util/JsonWriter;Ljava/util/Map;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 236
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v3, "thread_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 240
    const-string v4, "address"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 241
    const-string v6, "body"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 242
    const-string v8, "date"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 244
    const-string v10, "_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 246
    invoke-static {v12, v13, v5}, Lcom/termux/api/apis/SmsInboxAPI;->getContactNameFromNumber(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 247
    const-string v13, "type"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Lcom/termux/api/apis/SmsInboxAPI;->getMessageType(I)Ljava/lang/String;

    move-result-object v14

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 250
    const-string v15, "threadid"

    invoke-virtual {v1, v15}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v15

    move-object/from16 v16, v10

    move/from16 v17, v11

    int-to-long v10, v3

    invoke-virtual {v15, v10, v11}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 251
    invoke-virtual {v1, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 253
    const-string v3, "read"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_1

    .line 255
    invoke-virtual {v1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    :cond_1
    if-eqz v12, :cond_3

    .line 259
    const-string v0, "inbox"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "sender"

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {v1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v3, "You"

    invoke-virtual {v0, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 266
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 268
    const-string v0, "number"

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 270
    const-string v0, "received"

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 276
    invoke-virtual {v1, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-object/from16 v0, v16

    .line 277
    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    move/from16 v2, v17

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
