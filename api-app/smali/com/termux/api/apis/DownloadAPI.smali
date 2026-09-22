.class public abstract Lcom/termux/api/apis/DownloadAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$rd67x0wDSZ-x59gG8iIIF_A0sXA(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/DownloadAPI;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 3

    .line 23
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    const-string p0, "No download URI specified"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    const-string p2, "title"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    const-string v1, "description"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "path"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    const-string v2, "download"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 34
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 36
    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    :cond_1
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    :cond_2
    if-eqz p0, :cond_3

    .line 45
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 47
    :cond_3
    invoke-virtual {p1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    const-string v0, "DownloadAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/termux/api/apis/DownloadAPI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/termux/api/apis/DownloadAPI$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
