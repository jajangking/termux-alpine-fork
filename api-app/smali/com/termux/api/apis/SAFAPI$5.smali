.class Lcom/termux/api/apis/SAFAPI$5;
.super Lcom/termux/api/util/ResultReturner$WithInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SAFAPI;->writeDocumentFile(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;Landroidx/documentfile/provider/DocumentFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$f:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/SAFAPI$5;->val$f:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/termux/api/apis/SAFAPI$5;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$5;->val$f:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "rwt"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithInput;->in:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/termux/api/apis/SAFAPI;->-$$Nest$smwriteInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 328
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method
