.class public abstract Lcom/termux/api/apis/SAFAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/SAFAPI$SAFActivity;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$9-mal12hswqqENK-9MCVf0A5FKs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/termux/api/apis/SAFAPI;->lambda$createDocument$0(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZyZlpKZ8_xkY8fgYwcgdv8Yusw(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->lambda$removeDocument$1(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smstatDocument(Landroid/util/JsonWriter;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->statDocument(Landroid/util/JsonWriter;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtreeUriToDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/SAFAPI;->treeUriToDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smwriteInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/SAFAPI;->writeInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static createDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 154
    const-string v0, "treeuri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "SAFAPI"

    if-nez v0, :cond_0

    .line 156
    const-string p0, "treeuri extra null"

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    const-string v2, "filename"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 161
    const-string p0, "filename extra null"

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    const-string v1, "mimetype"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 166
    const-string v1, "application/octet-stream"

    :cond_2
    move-object v7, v1

    .line 168
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 169
    invoke-static {v5}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 171
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-object v6, v1

    .line 175
    :goto_0
    new-instance v0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static getManagedDocumentTrees(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/termux/api/apis/SAFAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/SAFAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static synthetic lambda$createDocument$0(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p3, p4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$removeDocument$1(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 248
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 250
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x2

    .line 253
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    :goto_0
    return-void
.end method

.method private static listDirectory(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 194
    const-string v0, "treeuri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    const-string p0, "SAFAPI"

    const-string p1, "treeuri extra null"

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/termux/api/apis/SAFAPI$2;

    invoke-direct {v2, v1, v0, p1}, Lcom/termux/api/apis/SAFAPI$2;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, p2, v2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static manageDocumentTree(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/SAFAPI$SAFActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-static {p1, v0}, Lcom/termux/api/util/ResultReturner;->copyIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 78
    const-string v0, "onReceive"

    const-string v1, "SAFAPI"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "safmethod"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const-string p0, "safmethod extra null"

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "createDocument"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "getManagedDocumentTrees"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "manageDocumentTree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "readDocument"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "removeDocument"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "writeDocument"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "listDirectory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_7
    const-string v2, "statURI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unrecognized safmethod: \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 109
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->statURI(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 106
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->removeDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 103
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->listDirectory(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 100
    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->readDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 97
    :pswitch_4
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->createDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 94
    :pswitch_5
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->writeDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 91
    :pswitch_6
    invoke-static {p1, p2}, Lcom/termux/api/apis/SAFAPI;->manageDocumentTree(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 88
    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->getManagedDocumentTrees(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 115
    :goto_2
    const-string p1, "Error in SAFAPI"

    invoke-static {v1, p1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71144d88 -> :sswitch_7
        -0x66c6a091 -> :sswitch_6
        -0x3ab0c1e6 -> :sswitch_5
        -0x2bac9641 -> :sswitch_4
        -0x22e3672f -> :sswitch_3
        -0x18cb4aa2 -> :sswitch_2
        0x3fb82f51 -> :sswitch_1
        0x6a5a1a37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static readDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 181
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    const-string p0, "SAFAPI"

    const-string p1, "uri extra null"

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 190
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/termux/api/apis/SAFAPI;->returnDocumentFile(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method private static removeDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 240
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    const-string p0, "SAFAPI"

    const-string p1, "uri extra null"

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_0
    new-instance v1, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p2, v1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static returnDocumentFile(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 1

    .line 312
    new-instance v0, Lcom/termux/api/apis/SAFAPI$4;

    invoke-direct {v0, p1, p3}, Lcom/termux/api/apis/SAFAPI$4;-><init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static statDocument(Landroid/util/JsonWriter;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 268
    const-string v0, "last_modified"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 269
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 274
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 275
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 277
    const-string v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 279
    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 280
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 283
    :cond_1
    :goto_0
    const-string v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 285
    const-string v2, "type"

    invoke-virtual {p0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 286
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 290
    :goto_1
    const-string v2, "uri"

    invoke-virtual {p0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 291
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_3

    .line 295
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 296
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :cond_3
    if-eqz v1, :cond_4

    .line 299
    const-string p2, "vnd.android.document/directory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 300
    const-string p2, "_size"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 302
    const-string v0, "length"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 303
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 307
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 268
    :goto_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    .line 308
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method private static statURI(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 223
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    const-string p0, "SAFAPI"

    const-string p1, "uri extra null"

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/api/apis/SAFAPI;->treeUriToDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/termux/api/apis/SAFAPI$3;

    invoke-direct {v1, p1, v0}, Lcom/termux/api/apis/SAFAPI$3;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {p0, p2, v1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static treeUriToDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 260
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :try_start_0
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static writeDocument(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 141
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    const-string p0, "SAFAPI"

    const-string p1, "uri extra null"

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/termux/api/apis/SAFAPI;->writeDocumentFile(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method private static writeDocumentFile(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 1

    .line 324
    new-instance v0, Lcom/termux/api/apis/SAFAPI$5;

    invoke-direct {v0, p1, p3}, Lcom/termux/api/apis/SAFAPI$5;-><init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static writeInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 337
    invoke-static {p0, p1}, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    goto :goto_1

    :cond_0
    const/16 v0, 0x1000

    .line 340
    new-array v0, v0, [B

    .line 342
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
