.class public abstract Lcom/termux/shared/file/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    }
.end annotation


# direct methods
.method public static checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 3

    if-eqz p0, :cond_1

    .line 1942
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    if-eqz p1, :cond_7

    .line 1943
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 1945
    :cond_2
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid permissionsToCheck passed to checkMissingFilePermissions: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtils"

    invoke-static {p1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    sget-object p0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getError()Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1950
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1953
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "file"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1954
    sget-object p2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/errors/Errno;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1958
    :cond_4
    const-string v1, "w"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1959
    sget-object p2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/errors/Errno;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1963
    :cond_5
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    .line 1964
    sget-object p2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/errors/Errno;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    .line 1943
    :cond_7
    :goto_2
    sget-object p1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file path"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "checkMissingFilePermissions"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static closeCloseable(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1789
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 694
    invoke-static {p0, p1, v0, v1, v1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 716
    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 2

    if-eqz p1, :cond_2

    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 662
    invoke-static {p0, p1, v0, v1, v1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    .line 656
    :cond_2
    :goto_0
    sget-object p1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file path"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "createParentDirectoryFile"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;
    .locals 10

    .line 1284
    const-string v0, "\""

    const-string v1, "\" of type \""

    const-string v2, "file at path \""

    const-string v3, "FileUtils"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    if-eqz p1, :cond_a

    .line 1285
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 1288
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1289
    invoke-static {p1, v5}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v6

    .line 1291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing delete of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    sget-object v7, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "file meant to be deleted"

    const/4 v9, 0x0

    if-ne v6, v7, :cond_4

    if-eqz p2, :cond_3

    return-object v9

    .line 1300
    :cond_3
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1301
    sget-object p2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p2

    goto/16 :goto_3

    .line 1306
    :cond_4
    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result p2

    and-int/2addr p2, p4

    if-gtz p2, :cond_6

    if-eqz p3, :cond_5

    .line 1309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring deletion of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" not matching allowed file types: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    .line 1314
    :cond_5
    sget-object p2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1317
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_7

    .line 1339
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p2

    sget-object p3, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    filled-new-array {p3}, [Lcom/google/common/io/RecursiveDeleteOption;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/common/io/MoreFiles;->deleteRecursively(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    goto :goto_2

    .line 1341
    :cond_7
    sget-object p2, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v6, p2, :cond_8

    .line 1344
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    goto :goto_2

    .line 1347
    :cond_8
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 1352
    :goto_2
    invoke-static {p1, v5}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object p2

    if-eq p2, v7, :cond_9

    .line 1354
    sget-object p2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/errors/Errno;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_9
    return-object v9

    .line 1357
    :goto_3
    sget-object p3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p0, p1, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1285
    :cond_a
    :goto_4
    sget-object p1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file path"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "deleteFile"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 2

    .line 1199
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static directoryFileExists(Ljava/lang/String;Z)Z
    .locals 0

    .line 324
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object p0

    sget-object p1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 72
    const-string p0, ""

    .line 77
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    :goto_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static getFileBasename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2026
    invoke-static {p0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 2027
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2028
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFileDirname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2014
    invoke-static {p0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2f

    .line 2015
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2016
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;
    .locals 0

    .line 380
    invoke-static {p0, p1}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object p0

    return-object p0
.end method

.method public static isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/errors/Error;
    .locals 3

    if-nez p0, :cond_0

    .line 1766
    sget-object p0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    const-string v0, "charset"

    const-string v1, "isCharsetSupported"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1769
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1770
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 1773
    :goto_0
    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 150
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/termux/shared/file/FileUtils;->isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string v3, "/"

    if-eqz p2, :cond_3

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    .line 180
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    return v2

    :catch_0
    :cond_4
    :goto_1
    return v0
.end method

.method public static isValidPermissionString(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1980
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1981
    :cond_0
    const-string v1, "^([r-])[w-][x-]$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string v0, "\\./"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "/+$"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 3

    const/4 v0, 0x0

    .line 1742
    invoke-static {p1, v0}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    .line 1745
    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v0, v1, :cond_0

    .line 1746
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0

    .line 1750
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file parent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readSerializableObjectFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    .locals 6

    if-eqz p0, :cond_1

    .line 1605
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1606
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 1608
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading serializable object from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "file at path \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileUtils"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1612
    invoke-static {p1, v1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    .line 1615
    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const-string v3, "file"

    if-eq v1, v2, :cond_3

    sget-object v4, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v1, v4, :cond_3

    .line 1616
    new-instance p2, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object p3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object p2

    :cond_3
    if-ne v1, v2, :cond_5

    if-eqz p3, :cond_4

    .line 1623
    new-instance p0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    invoke-direct {p0, v0, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object p0

    .line 1626
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file meant to be read"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1627
    new-instance p2, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object p3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object p2

    .line 1635
    :cond_5
    :try_start_0
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1636
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1638
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1644
    invoke-static {p3}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1645
    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1648
    new-instance p0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    invoke-direct {p0, v0, p2}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :goto_2
    move-object v0, p3

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p3, v0

    move-object v1, p3

    .line 1642
    :goto_3
    :try_start_3
    new-instance v2, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v4, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p0, p1, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p2, p0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1644
    invoke-static {p3}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1645
    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    return-object v2

    .line 1644
    :goto_4
    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1645
    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1646
    throw p0

    .line 1606
    :cond_6
    :goto_5
    new-instance p1, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object p2, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file path"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "readSerializableObjectFromFile"

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object p1
.end method

.method public static sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    const-string v0, "_"

    if-eqz p1, :cond_1

    .line 129
    const-string p1, "[\\\\/:*?\"<>| \t\n]"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_1
    const-string p1, "[\\\\/:*?\"<>|]"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_1

    .line 1819
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    if-eqz p1, :cond_9

    .line 1820
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 1822
    :cond_2
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, "FileUtils"

    if-nez v0, :cond_3

    .line 1823
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid permissionsToSet passed to setFilePermissions: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1827
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1829
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "file at path \""

    if-eqz v3, :cond_4

    .line 1830
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting read permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v0, v5}, Ljava/io/File;->setReadable(Z)Z

    goto :goto_2

    .line 1835
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing read permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0, v4}, Ljava/io/File;->setReadable(Z)Z

    .line 1842
    :cond_5
    :goto_2
    const-string v3, "w"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1843
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting write permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, v5}, Ljava/io/File;->setWritable(Z)Z

    goto :goto_3

    .line 1848
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing write permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 1855
    :cond_7
    :goto_3
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1856
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p2

    if-nez p2, :cond_9

    .line 1857
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting execute permissions for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0, v5}, Ljava/io/File;->setExecutable(Z)Z

    goto :goto_4

    .line 1861
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1862
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing execute permissions for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z

    :cond_9
    :goto_4
    return-void
.end method

.method public static setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_1

    .line 1890
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    if-eqz p1, :cond_6

    .line 1891
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 1893
    :cond_2
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, "FileUtils"

    if-nez v0, :cond_3

    .line 1894
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid permissionsToSet passed to setMissingFilePermissions: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1898
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1900
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "file at path \""

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing read permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v0, v4}, Ljava/io/File;->setReadable(Z)Z

    .line 1905
    :cond_4
    const-string v3, "w"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing write permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 1910
    :cond_5
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p2

    if-nez p2, :cond_6

    .line 1911
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting missing execute permissions for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public static validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    .line 490
    const-string v4, "directory file"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_d

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 494
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 495
    invoke-static {p1, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v7

    .line 498
    sget-object v8, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "directory"

    if-eq v7, v8, :cond_3

    :try_start_1
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v7, v10, :cond_3

    .line 499
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_4

    .line 505
    invoke-static {p1, p2, v6}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    goto :goto_3

    :cond_4
    move v10, v6

    :goto_3
    if-nez p3, :cond_5

    if-eqz p5, :cond_9

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v10, :cond_9

    .line 510
    invoke-static {p2, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v11

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v11, v12, :cond_9

    :cond_6
    if-eqz p3, :cond_7

    if-ne v7, v8, :cond_7

    .line 513
    const-string v7, "FileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "directory file at path \""

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 517
    invoke-static {p1, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v7

    if-nez v0, :cond_7

    .line 518
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v7, v0, :cond_7

    .line 519
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    :cond_7
    if-eqz p5, :cond_9

    if-eqz v3, :cond_9

    .line 523
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v7, v0, :cond_9

    if-eqz p6, :cond_8

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 527
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    if-eqz v10, :cond_a

    if-nez p7, :cond_c

    .line 537
    :cond_a
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v7, v0, :cond_b

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 539
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    :cond_b
    if-eqz v3, :cond_c

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v2, p8

    invoke-static {v0, p1, v3, v2}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 548
    :goto_5
    sget-object v2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, p1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 491
    :cond_d
    :goto_6
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "directory file path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "validateDirectoryExistenceAndPermissions"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static writeSerializableObjectToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/termux/shared/errors/Error;
    .locals 4

    if-eqz p0, :cond_1

    .line 1709
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    if-eqz p1, :cond_4

    .line 1710
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 1712
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing serializable object to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file at path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 1724
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1725
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1727
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1728
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1732
    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1733
    invoke-static {v2}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    :goto_2
    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception p2

    :goto_3
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v2, v0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception p2

    move-object v2, v0

    .line 1730
    :goto_4
    :try_start_3
    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p0, p1, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1732
    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1733
    invoke-static {v2}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    return-object p0

    :catchall_3
    move-exception p0

    .line 1732
    :goto_5
    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1733
    invoke-static {v2}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1734
    throw p0

    .line 1710
    :cond_4
    :goto_6
    sget-object p1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file path"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "writeSerializableObjectToFile"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method

.method public static writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 4

    if-eqz p0, :cond_1

    .line 1663
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    if-eqz p1, :cond_6

    .line 1664
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 1666
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing text to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file at path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p3, v1, v3, v2, v3}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-nez p2, :cond_4

    .line 1674
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    .line 1677
    :cond_4
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 1685
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1686
    :try_start_1
    new-instance p4, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1688
    :try_start_2
    invoke-virtual {p4, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1693
    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1694
    invoke-static {p4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    :goto_2
    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception p2

    :goto_3
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p4, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p4, v0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p4, v0

    goto :goto_5

    :catch_2
    move-exception p2

    move-object p4, v0

    .line 1691
    :goto_4
    :try_start_3
    sget-object p3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_WRITING_TEXT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1693
    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1694
    invoke-static {p4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    return-object p0

    :catchall_3
    move-exception p0

    .line 1693
    :goto_5
    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1694
    invoke-static {p4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1695
    throw p0

    .line 1664
    :cond_6
    :goto_6
    sget-object p1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file path"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "writeStringToFile"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    return-object p0
.end method
