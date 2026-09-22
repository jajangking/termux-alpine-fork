.class Lcom/termux/api/apis/SAFAPI$3;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SAFAPI;->statURI(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$docUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/SAFAPI$3;->val$docUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$3;->val$docUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/termux/api/apis/SAFAPI;->-$$Nest$smstatDocument(Landroid/util/JsonWriter;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
