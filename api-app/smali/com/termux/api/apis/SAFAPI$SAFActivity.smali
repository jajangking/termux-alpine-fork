.class public Lcom/termux/api/apis/SAFAPI$SAFActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SAFAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAFActivity"
.end annotation


# instance fields
.field private resultReturned:Z


# direct methods
.method public static synthetic $r8$lambda$DrS62ypBhqojsbl9_QjhQz2sqh0(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/SAFAPI$SAFActivity;->lambda$onDestroy$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W0T4m25gpRzw5syw-fRi2y2dc20(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/SAFAPI$SAFActivity;->lambda$onActivityResult$1(Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/termux/api/apis/SAFAPI$SAFActivity;->resultReturned:Z

    return-void
.end method

.method private static synthetic lambda$onActivityResult$1(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onDestroy$0(Ljava/io/PrintWriter;)V
    .locals 1

    .line 55
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAFActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/termux/api/apis/SAFAPI$SAFActivity;->resultReturned:Z

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance p2, Lcom/termux/api/apis/SAFAPI$SAFActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lcom/termux/api/apis/SAFAPI$SAFActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, p1, p2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    const-string v0, "SAFActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 50
    const-string v0, "SAFActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 54
    iget-boolean v0, p0, Lcom/termux/api/apis/SAFAPI$SAFActivity;->resultReturned:Z

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/termux/api/apis/SAFAPI$SAFActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/termux/api/apis/SAFAPI$SAFActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/termux/api/apis/SAFAPI$SAFActivity;->resultReturned:Z

    :cond_0
    return-void
.end method
