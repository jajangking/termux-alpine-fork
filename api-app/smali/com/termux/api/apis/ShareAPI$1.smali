.class Lcom/termux/api/apis/ShareAPI$1;
.super Lcom/termux/api/util/ResultReturner$WithStringInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/ShareAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentTypeExtra:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalIntentAction:Ljava/lang/String;

.field final synthetic val$titleExtra:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/termux/api/apis/ShareAPI$1;->val$finalIntentAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/api/apis/ShareAPI$1;->val$titleExtra:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/api/apis/ShareAPI$1;->val$contentTypeExtra:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/api/apis/ShareAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithStringInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "Error: Nothing to share"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/termux/api/apis/ShareAPI$1;->val$finalIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/termux/api/apis/ShareAPI$1;->val$titleExtra:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/termux/api/apis/ShareAPI$1;->val$contentTypeExtra:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "text/plain"

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/termux/api/apis/ShareAPI$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/termux/api/R$string;->share_file_chooser_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
