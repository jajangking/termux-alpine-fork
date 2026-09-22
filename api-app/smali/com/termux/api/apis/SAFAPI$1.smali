.class Lcom/termux/api/apis/SAFAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SAFAPI;->getManagedDocumentTrees(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3

    .line 124
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 125
    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriPermission;

    .line 126
    iget-object v2, p0, Lcom/termux/api/apis/SAFAPI$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/api/apis/SAFAPI;->-$$Nest$smtreeUriToDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/termux/api/apis/SAFAPI;->-$$Nest$smstatDocument(Landroid/util/JsonWriter;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method
