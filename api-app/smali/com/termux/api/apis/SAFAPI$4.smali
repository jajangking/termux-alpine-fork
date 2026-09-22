.class Lcom/termux/api/apis/SAFAPI$4;
.super Lcom/termux/api/util/ResultReturner$BinaryOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SAFAPI;->returnDocumentFile(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;Landroidx/documentfile/provider/DocumentFile;)V
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

    .line 313
    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/SAFAPI$4;->val$f:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$BinaryOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/OutputStream;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$4;->val$f:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 317
    :try_start_0
    invoke-static {v0, p1}, Lcom/termux/api/apis/SAFAPI;->-$$Nest$smwriteInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 316
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method
