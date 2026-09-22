.class public abstract Lcom/termux/api/SocketListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION:Ljava/util/regex/Pattern;

.field private static final EXTRA_BOOLEAN:Ljava/util/regex/Pattern;

.field private static final EXTRA_FLOAT:Ljava/util/regex/Pattern;

.field private static final EXTRA_INT:Ljava/util/regex/Pattern;

.field private static final EXTRA_INT_LIST:Ljava/util/regex/Pattern;

.field private static final EXTRA_LONG_LIST:Ljava/util/regex/Pattern;

.field private static final EXTRA_STRING:Ljava/util/regex/Pattern;

.field private static final EXTRA_UNSUPPORTED:Ljava/util/regex/Pattern;

.field private static listener:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$qvO8Cnx5JnDkvJoxqKKq302kAdQ(Landroid/app/Application;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/SocketListener;->lambda$createSocketListener$0(Landroid/app/Application;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "(-e|--es|--esa) +([^ ]+) +\"(.*?)(?<!\\\\)\""

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_STRING:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "--ez +([^ ]+) +([^ ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_BOOLEAN:Ljava/util/regex/Pattern;

    .line 26
    const-string v0, "--ei +([^ ]+) +(-?[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_INT:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "--ef +([^ ]+) +(-?[0-9]+(?:\\.[0-9]+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_FLOAT:Ljava/util/regex/Pattern;

    .line 28
    const-string v0, "--eia +([^ ]+) +(-?[0-9]+(?:,-?[0-9]+)*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_INT_LIST:Ljava/util/regex/Pattern;

    .line 29
    const-string v0, "--ela +([^ ]+) +(-?[0-9]+(?:,-?[0-9]+)*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_LONG_LIST:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "--e[^izs ] +[^ ]+ +[^ ]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->EXTRA_UNSUPPORTED:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "-a *([^ ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/api/SocketListener;->ACTION:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/termux/api/SocketListener;->listener:Ljava/lang/Thread;

    return-void
.end method

.method public static createSocketListener(Landroid/app/Application;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/termux/api/SocketListener;->listener:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/api/SocketListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/api/SocketListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/termux/api/SocketListener;->listener:Ljava/lang/Thread;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$createSocketListener$0(Landroid/app/Application;)V
    .locals 26

    .line 40
    const-string v1, "SocketListener"

    const-string v2, ""

    :try_start_0
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string v4, "com.termux.alpine.api://listen"

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 42
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 43
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :try_start_3
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    :try_start_4
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Credentials;->getUid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-eq v7, v8, :cond_0

    .line 248
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    goto/16 :goto_30

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    :goto_1
    move-object v3, v0

    goto/16 :goto_2f

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :goto_2
    move-object v3, v0

    goto/16 :goto_2d

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_3
    move-object v3, v0

    goto/16 :goto_2b

    .line 51
    :cond_0
    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    .line 52
    new-array v7, v7, [B

    .line 53
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 54
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/termux/api/TermuxApiReceiver;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 60
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 61
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 62
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 63
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 64
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-object/from16 v16, v3

    .line 68
    :try_start_9
    sget-object v3, Lcom/termux/api/SocketListener;->EXTRA_STRING:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 69
    :goto_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v17, v4

    const-string v4, ","

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-eqz v8, :cond_4

    .line 70
    :try_start_a
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v8, "-e"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v19, v7

    const/4 v7, 0x3

    if-nez v8, :cond_1

    const-string v8, "--es"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object/from16 v20, v15

    const/4 v4, 0x2

    goto :goto_8

    .line 77
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "(?<!\\\\),"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 78
    :goto_5
    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 80
    aget-object v8, v5, v7

    move-object/from16 v20, v15

    const-string v15, "\\\\,"

    invoke-virtual {v8, v15, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v20

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_6
    move-object v3, v0

    goto/16 :goto_29

    :catch_1
    move-exception v0

    :goto_7
    move-object v3, v0

    goto/16 :goto_27

    :cond_3
    move-object/from16 v20, v15

    const/4 v4, 0x2

    .line 82
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 73
    :goto_8
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\\\\\""

    const-string v8, "\""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    move-object/from16 v15, v20

    goto :goto_4

    :cond_4
    move-object/from16 v19, v7

    move-object/from16 v20, v15

    .line 86
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    sget-object v7, Lcom/termux/api/SocketListener;->EXTRA_BOOLEAN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 89
    :goto_a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v15, "\n"

    if-eqz v7, :cond_d

    const/4 v7, 0x2

    .line 90
    :try_start_b
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 91
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_5
    const/4 v7, 0x0

    .line 94
    :goto_b
    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "t"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_e

    .line 96
    :cond_6
    const-string v8, "false"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "f"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v8, :cond_7

    goto :goto_d

    :cond_7
    if-eqz v7, :cond_9

    .line 101
    :try_start_c
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_c

    :cond_8
    const/4 v7, 0x0

    :goto_c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_f

    :catch_2
    :cond_9
    const/4 v7, 0x0

    goto :goto_f

    .line 97
    :cond_a
    :goto_d
    :try_start_d
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    .line 95
    :cond_b
    :goto_e
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_f
    if-nez v7, :cond_c

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid boolean extra: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-static {v1, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_10

    .line 113
    :cond_c
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    .line 115
    :goto_10
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    sget-object v7, Lcom/termux/api/SocketListener;->EXTRA_INT:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 118
    :goto_11
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    .line 120
    :try_start_e
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_11

    .line 123
    :catch_3
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid integer extra: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v1, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 130
    :cond_e
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    sget-object v7, Lcom/termux/api/SocketListener;->EXTRA_FLOAT:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 133
    :goto_12
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    .line 135
    :try_start_10
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v13, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_12

    .line 138
    :catch_4
    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid float extra: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {v1, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 145
    :cond_f
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    sget-object v7, Lcom/termux/api/SocketListener;->EXTRA_INT_LIST:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 148
    :goto_13
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v7, :cond_11

    const/4 v7, 0x2

    .line 150
    :try_start_12
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 151
    array-length v8, v7

    new-array v8, v8, [I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move/from16 v22, v5

    move-object/from16 v23, v13

    const/4 v5, 0x0

    .line 152
    :goto_14
    :try_start_13
    array-length v13, v7

    if-ge v5, v13, :cond_10

    .line 153
    aget-object v13, v7, v5

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_10
    const/4 v5, 0x1

    .line 155
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move/from16 v5, v22

    move-object/from16 v13, v23

    goto :goto_13

    :catch_5
    move-object/from16 v23, v13

    .line 158
    :catch_6
    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid int array extra: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v1, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_15

    :cond_11
    move/from16 v22, v5

    move-object/from16 v23, v13

    .line 165
    :goto_15
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    sget-object v7, Lcom/termux/api/SocketListener;->EXTRA_LONG_LIST:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 168
    :goto_16
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v7, :cond_13

    const/4 v7, 0x2

    .line 170
    :try_start_15
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 171
    array-length v13, v8

    new-array v13, v13, [J

    move-object/from16 v22, v4

    const/4 v7, 0x0

    .line 172
    :goto_17
    array-length v4, v8

    if-ge v7, v4, :cond_12

    .line 173
    aget-object v4, v8, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    aput-wide v24, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :catch_7
    move-object/from16 v4, v20

    goto :goto_18

    :cond_12
    const/4 v4, 0x1

    .line 175
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v4, v20

    :try_start_16
    invoke-virtual {v4, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-object/from16 v20, v4

    move-object/from16 v4, v22

    goto :goto_16

    .line 178
    :catch_8
    :goto_18
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid long array extra: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v1, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_19

    :cond_13
    move-object/from16 v4, v20

    .line 185
    :goto_19
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    sget-object v7, Lcom/termux/api/SocketListener;->ACTION:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 188
    :goto_1a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    .line 189
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v13, v19

    invoke-virtual {v13, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v19, v13

    goto :goto_1a

    :cond_14
    move-object/from16 v13, v19

    const/4 v7, 0x1

    .line 191
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    sget-object v8, Lcom/termux/api/SocketListener;->EXTRA_UNSUPPORTED:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported argument type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-static {v1, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 200
    :cond_15
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    const-string v7, "\\s"

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported options: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v6, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_16
    if-eqz v5, :cond_17

    .line 212
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 248
    :try_start_18
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :goto_1b
    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :goto_1c
    move-object/from16 v3, v16

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_1d
    move-object v2, v0

    goto/16 :goto_30

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    goto/16 :goto_3

    .line 217
    :cond_17
    :try_start_1b
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v13, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1e

    .line 220
    :cond_18
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v13, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    .line 223
    :cond_19
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v13, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_20

    .line 226
    :cond_1a
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v13, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_21

    .line 229
    :cond_1b
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v13, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_22

    .line 232
    :cond_1c
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-virtual {v13, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_23

    .line 235
    :cond_1d
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v13, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_24

    .line 238
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 241
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_28

    :catchall_7
    move-exception v0

    :goto_25
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_6

    :catch_a
    move-exception v0

    :goto_26
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_25

    :catch_b
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_26

    .line 244
    :goto_27
    :try_start_1c
    const-string v4, "Error parsing arguments"

    invoke-static {v1, v4, v3}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    const-string v3, "Exception in the plugin\n"

    invoke-virtual {v6, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 248
    :goto_28
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :try_start_1e
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto/16 :goto_1b

    .line 42
    :goto_29
    :try_start_1f
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto :goto_2a

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_20
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :goto_2b
    :try_start_21
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_2c

    :catchall_a
    move-exception v0

    move-object v4, v0

    :try_start_22
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :goto_2d
    if-eqz v17, :cond_1f

    :try_start_23
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    goto :goto_2e

    :catchall_b
    move-exception v0

    move-object v4, v0

    :try_start_24
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_2e
    throw v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_9
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :catchall_c
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_1d

    .line 250
    :goto_2f
    :try_start_25
    const-string v4, "Connection error"

    invoke-static {v1, v4, v3}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    goto/16 :goto_1c

    .line 40
    :goto_30
    :try_start_26
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalServerSocket;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    goto :goto_31

    :catchall_d
    move-exception v0

    move-object v3, v0

    :try_start_27
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_c

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 255
    const-string v3, "Error listening for connections"

    invoke-static {v1, v3, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
