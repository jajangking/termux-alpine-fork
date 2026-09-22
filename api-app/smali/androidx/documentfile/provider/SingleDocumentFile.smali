.class Landroidx/documentfile/provider/SingleDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    .line 33
    iput-object p2, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method
