.class public abstract Lcom/termux/api/apis/MediaScannerAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$Wo5EUQkErIiRREj6BZdY9sNNcgQ(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;ZZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/termux/api/apis/MediaScannerAPI;->lambda$onReceive$0(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;ZZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWNjlDHvVrJxpQ8nFSPuTnQQVJQ(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/MediaScannerAPI;->lambda$scanFiles$1(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;ZZLjava/io/PrintWriter;)V
    .locals 1

    .line 32
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p5, p0, p1, p2, v0}, Lcom/termux/api/apis/MediaScannerAPI;->scanFiles(Ljava/io/PrintWriter;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz p4, :cond_0

    .line 33
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p5, p0, p1, p2, p3}, Lcom/termux/api/apis/MediaScannerAPI;->scanFilesRecursively(Ljava/io/PrintWriter;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 34
    :cond_0
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Finished scanning %d file(s)"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$scanFiles$1(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaScannerAPI"

    invoke-static {p1, p0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 21
    const-string v0, "MediaScannerAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "paths"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 24
    const-string v0, "recursive"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v4

    .line 26
    const-string v0, "verbose"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 27
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 28
    aget-object v0, v3, v1

    const-string v2, "\\,"

    const-string v7, ","

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;ZZ)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static scanFiles(Ljava/io/PrintWriter;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x0

    .line 39
    invoke-static {p1, p2, v1, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 45
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    array-length p1, p2

    move v0, p4

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 46
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    aget-object p0, p3, p4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    array-length p1, p2

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    return-void
.end method

.method private static scanFilesRecursively(Ljava/io/PrintWriter;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 9

    .line 53
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p2, v2

    .line 54
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 55
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v5, :cond_4

    .line 56
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 60
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 62
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Failed to open \'%s\'"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "MediaScannerAPI"

    invoke-static {v7, v5, v6}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_2

    .line 65
    array-length v6, v5

    if-lez v6, :cond_2

    .line 66
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    move v7, v1

    .line 67
    :goto_3
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 68
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 69
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    aget-object v8, v5, v7

    invoke-virtual {v4, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 71
    :cond_1
    invoke-static {p0, p1, v6, p3, p4}, Lcom/termux/api/apis/MediaScannerAPI;->scanFiles(Ljava/io/PrintWriter;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 74
    :cond_2
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 75
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    move-object v5, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
