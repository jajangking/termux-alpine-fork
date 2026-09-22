.class Lcom/termux/api/apis/SAFAPI$2;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SAFAPI;->listDirectory(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$treeURI:Landroid/net/Uri;

.field final synthetic val$treeURIString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$2;->val$treeURI:Landroid/net/Uri;

    iput-object p2, p0, Lcom/termux/api/apis/SAFAPI$2;->val$treeURIString:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/api/apis/SAFAPI$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 8

    .line 204
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 205
    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$2;->val$treeURI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$2;->val$treeURIString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$2;->val$treeURIString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "document_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 212
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/termux/api/apis/SAFAPI$2;->val$treeURI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/termux/api/apis/SAFAPI$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v2, v1}, Lcom/termux/api/apis/SAFAPI;->-$$Nest$smstatDocument(Landroid/util/JsonWriter;Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 216
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    .line 209
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 217
    :catch_1
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method
