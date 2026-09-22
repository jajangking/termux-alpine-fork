.class public abstract Lcom/termux/api/apis/StorageGetAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/StorageGetAPI$StorageActivity;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$lrWbJaKYeQLovvY8wCM4XXTYZBw(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/StorageGetAPI;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 4

    .line 35
    const-string v0, "file"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-static {p0, v0, v1}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/termux/shared/file/FileUtils;->getFileDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", fileParentDirPath=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageGetAPI"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "file parent directory"

    const-string v3, "rw-"

    invoke-static {v2, v0, v3, v1}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ERROR: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/termux/api/apis/StorageGetAPI$StorageActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string v0, "com.termux.api.storage.file"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 55
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 37
    :cond_2
    :goto_0
    const-string p0, "ERROR: File path not passed"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 32
    const-string v0, "StorageGetAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
