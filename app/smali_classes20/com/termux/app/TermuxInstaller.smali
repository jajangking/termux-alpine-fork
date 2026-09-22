.class final Lcom/termux/app/TermuxInstaller;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxInstaller"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .line 61
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->ensureDirectoryExists(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method private static ensureDirectoryExists(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static native getZip()[B
.end method

.method static synthetic lambda$showBootstrapErrorDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 274
    return-void
.end method

.method static synthetic lambda$showBootstrapErrorDialog$1(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 276
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 277
    const-string v0, "termux prefix directory"

    const-string v1, "/data/data/com.termux.alpine/files/usr"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    .line 278
    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method static synthetic lambda$showBootstrapErrorDialog$2(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;

    .line 270
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10003a

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$z_sygUroikFTb9EjG0vCu-rkOFQ;

    invoke-direct {v2, p0}, Lcom/termux/app/-$$Lambda$TermuxInstaller$z_sygUroikFTb9EjG0vCu-rkOFQ;-><init>(Landroid/app/Activity;)V

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10003e

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$SYMV-V0v_rBTtIncT_nbSrNSjb0;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$SYMV-V0v_rBTtIncT_nbSrNSjb0;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 283
    :goto_0
    return-void
.end method

.method public static loadZipBytes()[B
    .locals 1

    .line 359
    const-string v0, "termux-bootstrap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->getZip()[B

    move-result-object v0

    return-object v0
.end method

.method private static sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "message"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Bootstrap Error\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxDebugMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v1, "TermuxInstaller"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v2}, Lcom/termux/app/utils/CrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 291
    return-void
.end method

.method static setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "whenDone"
        }
    .end annotation

    .line 72
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/termux/shared/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 73
    .local v1, "filesDirectoryAccessibleError":Lcom/termux/shared/models/errors/Error;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 77
    .local v3, "isFilesDirectoryAccessible":Z
    :goto_0
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->isCurrentUserThePrimaryUser(Landroid/content/Context;)Z

    move-result v4

    const v5, 0x7f10003d

    const-string v6, "/data/data/com.termux.alpine/files/usr"

    const-string v7, "TermuxInstaller"

    if-nez v4, :cond_1

    .line 78
    const v4, 0x7f10003c

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "bootstrapErrorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFilesDirectoryAccessible: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    nop

    .line 83
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {p0, v2, v0}, Lcom/termux/shared/interact/MessageDialogUtils;->exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 88
    .end local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\nTERMUX_FILES_DIR: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/data/data/com.termux.alpine/files"

    invoke-static {v6, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 92
    nop

    .line 93
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {p0, v2, v0, v4}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    return-void

    .line 99
    .end local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    :cond_2
    invoke-static {v6, v0}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    sget-object v5, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 102
    .local v5, "PREFIX_FILE_LIST":[Ljava/io/File;
    if-eqz v5, :cond_4

    array-length v6, v5

    if-eqz v6, :cond_4

    array-length v6, v5

    if-ne v6, v0, :cond_3

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/data/data/com.termux.alpine/files/usr/tmp"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 106
    return-void

    .line 103
    :cond_4
    :goto_1
    const-string v6, "The termux prefix directory \"/data/data/com.termux.alpine/files/usr\" exists but is empty or only contains the tmp directory."

    invoke-static {v7, v6}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 108
    .end local v5    # "PREFIX_FILE_LIST":[Ljava/io/File;
    :cond_5
    invoke-static {v6, v2}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    const-string v5, "The termux prefix directory \"/data/data/com.termux.alpine/files/usr\" does not exist but another file exists at its destination."

    invoke-static {v7, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 108
    :cond_6
    :goto_2
    nop

    .line 112
    :goto_3
    const v5, 0x7f10003f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 113
    .local v0, "progress":Landroid/app/ProgressDialog;
    new-instance v2, Lcom/termux/app/TermuxInstaller$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/termux/app/TermuxInstaller$1;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    .line 259
    invoke-virtual {v2}, Lcom/termux/app/TermuxInstaller$1;->start()V

    .line 260
    return-void
.end method

.method public static writeAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "makeExec"    # Z

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :goto_1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :goto_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz p3, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/File;->setExecutable(Z)Z

    :cond_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "TermuxInstaller"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static bakeTermuxFixes(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    const-string v1, "termux-fix/login"

    const-string v2, "/data/data/com.termux.alpine/files/usr/bin/login"

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/termux/app/TermuxInstaller;->writeAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "termux-fix/shell"

    const-string v2, "/data/data/com.termux.alpine/files/home/.termux/shell"

    invoke-static {p0, v1, v2, v3}, Lcom/termux/app/TermuxInstaller;->writeAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "termux-fix/proot.tar.gz"

    const-string v2, "/data/data/com.termux.alpine/files/fix/proot.tar.gz"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/termux/app/TermuxInstaller;->writeAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "termux-fix/rootfs-mini.tar.gz"

    const-string v2, "/data/data/com.termux.alpine/files/fix/rootfs-mini.tar.gz"

    invoke-static {p0, v1, v2, v3}, Lcom/termux/app/TermuxInstaller;->writeAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static rewriteBootstrapPathsInDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :try_end_ret

    array-length v1, v0

    const/4 v2, 0x0

    :cond_loop
    if-ge v2, v1, :try_end_ret

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_file

    invoke-static {v3, p1, p2}, Lcom/termux/app/TermuxInstaller;->rewriteBootstrapPathsInDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :cond_next

    :cond_file
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_next

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v7, v4, v6

    if-lez v7, :cond_next

    const-wide v6, 0x400000

    cmp-long v7, v4, v6

    if-gez v7, :cond_next

    long-to-int v6, v4

    new-array v7, v6, [B

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    if-ne v9, v6, :cond_next

    const/4 v9, 0x0

    :cond_scan
    if-ge v9, v6, :cond_text

    aget-byte v8, v7, v9

    if-nez v8, :cond_scan_next

    goto :cond_next

    :cond_scan_next
    add-int/lit8 v9, v9, 0x1

    goto :cond_scan

    :cond_text
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_next

    invoke-virtual {v8, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "update-alternatives --install "

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :goto_skip_alt

    const-string v5, "mkdir -p \"${TERMUX_PREFIX}/etc/alternatives\" \"${TERMUX_PREFIX}/var/lib/dpkg/alternatives\" && update-alternatives --altdir \"${TERMUX_PREFIX}/etc/alternatives\" --admindir \"${TERMUX_PREFIX}/var/lib/dpkg\" --install "

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :goto_skip_alt

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :cond_loop

    :try_end_ret
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_ret

    :catch_0
    move-exception v0

    const-string v1, "TermuxInstaller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ret
    return-void
.end method

.method public static patchBootstrapSecondStageScript(Ljava/lang/String;)V
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/termux/bootstrap/termux-bootstrap-second-stage.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :goto_ret

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :goto_ret

    const-wide v4, 0x10000

    cmp-long v6, v2, v4

    if-gez v6, :goto_ret

    long-to-int v5, v2

    new-array v6, v5, [B

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    if-ne v4, v5, :goto_ret

    const-string v2, "UTF-8"

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "dpkg --version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :goto_ret

    const-string v3, "sed -n '/^Package: dpkg$/,/^Version: /{/^Version: /s/^Version: //p}' \"${TERMUX_PREFIX}/var/lib/dpkg/status\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :goto_ret
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_ret2

    :catch_0
    move-exception v0

    const-string v1, "TermuxInstaller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ret2
    return-void
.end method

.method public static rewriteBootstrapPaths(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    const-string v0, "/data/data/"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files/usr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ret

    const-string v2, "/data/data/com.termux"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/termux/app/TermuxInstaller;->rewriteBootstrapPathsInDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/app/TermuxInstaller;->patchBootstrapSecondStageScript(Ljava/lang/String;)V

    :cond_ret
    return-void
.end method

.method static setupStorageSymlinks(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 294
    const-string v0, "termux-storage"

    .line 296
    .local v0, "LOG_TAG":Ljava/lang/String;
    const-string v1, "termux-storage"

    const-string v2, "Setting up storage symlinks."

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v1}, Lcom/termux/app/TermuxInstaller$2;->start()V

    .line 351
    return-void
.end method

.method public static showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "whenDone",
            "message"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bootstrap Error:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxInstaller"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p0, p2}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/termux/app/-$$Lambda$TermuxInstaller$soi1m0BtAWIcG-Um7z34cpthUvA;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$soi1m0BtAWIcG-Um7z34cpthUvA;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method
