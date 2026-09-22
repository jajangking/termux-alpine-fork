.class public Lcom/termux/shared/file/TermuxFileUtils;
.super Ljava/lang/Object;
.source "TermuxFileUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxFileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "prefixForNonAbsolutePath"    # Ljava/lang/String;
    .param p2, "expandPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "path",
            "prefixForNonAbsolutePath",
            "expandPath"
        }
    .end annotation

    .line 109
    if-nez p0, :cond_0

    const-string p0, ""

    .line 111
    :cond_0
    if-eqz p2, :cond_1

    .line 112
    invoke-static {p0}, Lcom/termux/shared/file/TermuxFileUtils;->getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_1
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "^\\$PREFIX$"

    const-string v1, "/data/data/com.termux.alpine/files/usr"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string v0, "^\\$PREFIX/"

    const-string v1, "/data/data/com.termux.alpine/files/usr/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    const-string v0, "^~/$"

    const-string v1, "/data/data/com.termux.alpine/files/home"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    const-string v0, "^~/"

    const-string v1, "/data/data/com.termux.alpine/files/home/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    :cond_0
    return-object p0
.end method

.method public static getExpandedTermuxPaths(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "expandedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/termux/shared/file/TermuxFileUtils;->getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getMatchedAllowedTermuxWorkingDirectoryParentPathForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 125
    const-string v0, "/data/data/com.termux.alpine/files"

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const-string v1, "/data/data/com.termux.alpine/files/home/storage/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string v0, "/data/data/com.termux.alpine/files/home/storage"

    return-object v0

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_2
    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const-string v0, "/sdcard"

    return-object v0

    .line 134
    :cond_3
    return-object v0

    .line 125
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getTermuxFilesStatMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 316
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "termuxPackageContext":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 320
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "filesDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v3, "statScript":Ljava/lang/StringBuilder;
    nop

    .line 325
    const-string v4, "echo \'ls info:\'\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    const-string v5, "/system/bin/ls -lhdZ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 327
    const-string v5, " \'/data/data\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 328
    const-string v5, " \'/data/user/0\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 329
    const-string v5, " \'/data/data/com.termux\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    const-string v5, " \'/data/user/0/com.termux\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 331
    const-string v5, " \'/data/data/com.termux.alpine/files\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    const-string v5, " \'/data/user/0/com.termux/files\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    const-string v5, " \'/data/user/com.termux/files\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    const-string v5, " \'/data/data/com.termux.alpine/files/usr-staging\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    const-string v5, " \'/data/data/com.termux.alpine/files/usr\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 337
    const-string v5, " \'/data/data/com.termux.alpine/files/home\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 338
    const-string v5, " \'/data/data/com.termux.alpine/files/usr/bin/login\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 339
    const-string v5, " 2>&1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    const-string v5, "\necho; echo \'mount info:\'\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    const-string v5, "/system/bin/grep -E \'( /data )|( /data/data )|( /data/user/[0-9]+ )\' /proc/self/mountinfo 2>&1 | /system/bin/grep -v \'/data_mirror\' 2>&1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v4, Lcom/termux/shared/models/ExecutionCommand;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "\n"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string v8, "/system/bin/sh"

    const-string v11, "/"

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 345
    .local v4, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    const-string v6, "Termux Files Stat Command"

    iput-object v6, v4, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 346
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 347
    new-instance v6, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;

    invoke-direct {v6}, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;-><init>()V

    invoke-static {p0, v4, v1, v6, v5}, Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v6

    .line 348
    .local v6, "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    const-string v7, "TermuxFileUtils"

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->isSuccessful()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_0

    .line 354
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v1, "statOutput":Ljava/lang/StringBuilder;
    const-string v8, "$ "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v8, "\n\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v10, v10, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v9, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v9, v9, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v5

    .line 359
    .local v9, "stderrSet":Z
    iget-object v10, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v10, v10, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_2

    if-eqz v9, :cond_4

    .line 360
    :cond_2
    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz v9, :cond_3

    .line 362
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v10, v10, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_3
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "exit code: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v10, v10, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v7, "markdownString":Ljava/lang/StringBuilder;
    const-string v10, "## "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Termux"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Files Info\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v10, "TERMUX_REQUIRED_FILES_DIR_PATH ($PREFIX)"

    const-string v11, "/data/data/com.termux.alpine/files"

    invoke-static {v7, v10, v11}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    const-string v10, "ANDROID_ASSIGNED_FILES_DIR_PATH"

    invoke-static {v7, v10, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v5, "\n##\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 349
    .end local v1    # "statOutput":Ljava/lang/StringBuilder;
    .end local v7    # "markdownString":Ljava/lang/StringBuilder;
    .end local v9    # "stderrSet":Z
    :cond_5
    :goto_0
    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-object v1
.end method

.method public static getUnExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data/data/com.termux.alpine/files/usr"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\$PREFIX/"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data/com.termux.alpine/files/home"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "~/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    :cond_0
    return-object p0
.end method

.method public static getUnExpandedTermuxPaths(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "unExpandedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/termux/shared/file/TermuxFileUtils;->getUnExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createDirectoryIfMissing"    # Z
    .param p2, "setMissingPermissions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "createDirectoryIfMissing",
            "setMissingPermissions"
        }
    .end annotation

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 258
    :cond_0
    const-string v0, "/data/data/com.termux.alpine/files"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "termux files directory"

    if-nez v2, :cond_1

    .line 259
    sget-object v2, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v0, v5, v1

    invoke-virtual {v2, v5}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 261
    :cond_1
    const-string v1, "rwx"

    if-eqz p2, :cond_2

    .line 262
    invoke-static {v4, v0, v1}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_2
    invoke-static {v4, v0, v1, v3}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static isTermuxPrefixDirectoryAccessible(ZZ)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "createDirectoryIfMissing"    # Z
    .param p1, "setMissingPermissions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "createDirectoryIfMissing",
            "setMissingPermissions"
        }
    .end annotation

    .line 285
    const-string v0, "termux prefix directory"

    const-string v1, "/data/data/com.termux.alpine/files/usr"

    const/4 v2, 0x0

    const-string v4, "rwx"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p0

    move v5, p1

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static isTermuxPrefixStagingDirectoryAccessible(ZZ)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "createDirectoryIfMissing"    # Z
    .param p1, "setMissingPermissions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "createDirectoryIfMissing",
            "setMissingPermissions"
        }
    .end annotation

    .line 303
    const-string v0, "termux prefix staging directory"

    const-string v1, "/data/data/com.termux.alpine/files/usr-staging"

    const/4 v2, 0x0

    const-string v4, "rwx"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p0

    move v5, p1

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "createDirectoryIfMissing"    # Z
    .param p3, "setPermissions"    # Z
    .param p4, "setMissingPermissionsOnly"    # Z
    .param p5, "ignoreErrorsIfPathIsInParentDirPath"    # Z
    .param p6, "ignoreIfNotExecutable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "createDirectoryIfMissing",
            "setPermissions",
            "setMissingPermissionsOnly",
            "ignoreErrorsIfPathIsInParentDirPath",
            "ignoreIfNotExecutable"
        }
    .end annotation

    .line 167
    nop

    .line 168
    invoke-static {p1}, Lcom/termux/shared/file/TermuxFileUtils;->getMatchedAllowedTermuxWorkingDirectoryParentPathForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v4, "rwx"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method
