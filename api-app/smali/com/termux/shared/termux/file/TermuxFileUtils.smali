.class public abstract Lcom/termux/shared/termux/file/TermuxFileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 112
    const-string p0, ""

    :cond_0
    if-eqz p2, :cond_1

    .line 115
    invoke-static {p0}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_1
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "^\\$PREFIX$"

    const-string v1, "/data/data/com.termux/files/usr"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    const-string v0, "^\\$PREFIX/"

    const-string v1, "/data/data/com.termux/files/usr/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    const-string v0, "^~/$"

    const-string v1, "/data/data/com.termux/files/home"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string v0, "^~/"

    const-string v1, "/data/data/com.termux/files/home/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getMatchedAllowedTermuxWorkingDirectoryParentPathForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 128
    const-string v0, "/data/data/com.termux/files"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    const-string v1, "/data/data/com.termux/files/home/storage/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string p0, "/data/data/com.termux/files/home/storage"

    return-object p0

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_2
    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 135
    const-string p0, "/sdcard"

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/errors/Error;
    .locals 1

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    :cond_0
    const/4 p0, 0x1

    .line 261
    const-string p1, "/data/data/com.termux/files"

    invoke-static {p1, p0}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "termux files directory"

    if-nez p0, :cond_1

    .line 262
    sget-object p0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 264
    :cond_1
    const-string p0, "rwx"

    if-eqz p2, :cond_2

    .line 265
    invoke-static {v0, p1, p0}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    .line 268
    invoke-static {v0, p1, p0, p2}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lcom/termux/shared/errors/Error;
    .locals 9

    .line 171
    invoke-static {p1}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getMatchedAllowedTermuxWorkingDirectoryParentPathForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rwx"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 170
    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method
