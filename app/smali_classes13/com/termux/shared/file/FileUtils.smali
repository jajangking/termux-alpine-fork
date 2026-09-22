.class public Lcom/termux/shared/file/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    }
.end annotation


# static fields
.field public static final APP_EXECUTABLE_FILE_PERMISSIONS:Ljava/lang/String; = "r-x"

.field public static final APP_WORKING_DIRECTORY_PERMISSIONS:Ljava/lang/String; = "rwx"

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 7
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToCheck"    # Ljava/lang/String;
    .param p3, "ignoreIfNotExecutable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "permissionsToCheck",
            "ignoreIfNotExecutable"
        }
    .end annotation

    .line 1794
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1795
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 1797
    :cond_1
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid permissionsToCheck passed to checkMissingFilePermissions: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Errno;->getError()Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1802
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1805
    .local v3, "file":Ljava/io/File;
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "file"

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1806
    sget-object v4, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/models/errors/Errno;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v4, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1810
    :cond_3
    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1811
    sget-object v4, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/models/errors/Errno;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v4, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1815
    :cond_4
    const-string v4, "x"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez p3, :cond_5

    .line 1816
    sget-object v4, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/models/errors/Errno;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v4, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1819
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 1795
    .end local v3    # "file":Ljava/io/File;
    :cond_6
    :goto_1
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "checkMissingFilePermissions"

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "permissionsToCheck"    # Ljava/lang/String;
    .param p2, "ignoreIfNotExecutable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "filePath",
            "permissionsToCheck",
            "ignoreIfNotExecutable"
        }
    .end annotation

    .line 1780
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static clearDirectory(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1232
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "label",
            "filePath"
        }
    .end annotation

    .line 1247
    const-string v0, "directory"

    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object p0, v1

    .line 1248
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 1253
    :cond_1
    :try_start_0
    const-string v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "directory at path \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v4, "file":Ljava/io/File;
    invoke-static {p1, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v5

    .line 1259
    .local v5, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v5, v6, :cond_2

    .line 1260
    sget-object v6, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v7, v1, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object p1, v7, v2

    invoke-virtual {v6, v7}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_2
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v5, v6, :cond_4

    .line 1265
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_3

    .line 1269
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v7, v2, [Lcom/google/common/io/RecursiveDeleteOption;

    sget-object v8, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContents(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    goto :goto_1

    .line 1272
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    goto :goto_1

    .line 1277
    :cond_4
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v0, :cond_5

    .line 1279
    return-object v0

    .line 1283
    .end local v0    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    :cond_5
    :goto_1
    nop

    .line 1285
    const/4 v0, 0x0

    return-object v0

    .line 1281
    :catch_0
    move-exception v4

    .line 1282
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CLEARING_DIRECTORY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v4, v6}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1248
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    sget-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "clearDirectory"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static closeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "closeable"
        }
    .end annotation

    .line 1639
    if-eqz p0, :cond_0

    .line 1641
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    goto :goto_0

    .line 1643
    :catch_0
    move-exception v0

    .line 1647
    :cond_0
    :goto_0
    return-void
.end method

.method public static copyDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 776
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 777
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 776
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 864
    sget v5, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;
    .locals 24
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "moveFile"    # Z
    .param p4, "ignoreNonExistentSrcFile"    # Z
    .param p5, "allowedFileTypeFlags"    # I
    .param p6, "overwrite"    # Z
    .param p7, "overwriteOnlyIfDestSameFileTypeAsSrc"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "moveFile",
            "ignoreNonExistentSrcFile",
            "allowedFileTypeFlags",
            "overwrite",
            "overwriteOnlyIfDestSameFileTypeAsSrc"
        }
    .end annotation

    .line 925
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "FileUtils"

    const-string v4, " "

    if-nez v0, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 926
    .end local p0    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    :goto_0
    const-string v0, "copyOrMoveFile"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_7

    .line 927
    :cond_1
    if-eqz v2, :cond_18

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    move v4, v6

    goto/16 :goto_6

    .line 929
    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "Moving"

    goto :goto_1

    :cond_3
    const-string v0, "Copying"

    :goto_1
    move-object v9, v0

    .line 930
    .local v9, "mode":Ljava/lang/String;
    if-eqz p3, :cond_4

    const-string v0, "moved"

    goto :goto_2

    :cond_4
    const-string v0, "copied"

    :goto_2
    move-object v10, v0

    .line 935
    .local v10, "modePast":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "source file from \""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "\" to destination \""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "\""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 938
    .local v0, "srcFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    .local v13, "destFile":Ljava/io/File;
    invoke-static {v1, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v14

    .line 941
    .local v14, "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-static {v2, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v15

    .line 943
    .local v15, "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p0, v16

    .line 944
    .local p0, "srcFileCanonicalPath":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 947
    .local v17, "destFileCanonicalPath":Ljava/lang/String;
    sget-object v11, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v18, 0x0

    const-string v12, "source file"

    if-ne v14, v11, :cond_6

    .line 949
    if-eqz p4, :cond_5

    .line 950
    return-object v18

    .line 953
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 954
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v7

    aput-object v1, v11, v8

    invoke-virtual {v3, v11}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1049
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v13    # "destFile":Ljava/io/File;
    .end local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v17    # "destFileCanonicalPath":Ljava/lang/String;
    .end local p0    # "srcFileCanonicalPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v22, v10

    goto/16 :goto_5

    .line 959
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v13    # "destFile":Ljava/io/File;
    .restart local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v17    # "destFileCanonicalPath":Ljava/lang/String;
    .restart local p0    # "srcFileCanonicalPath":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-virtual {v14}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    and-int v11, p5, v11

    if-gtz v11, :cond_7

    .line 960
    :try_start_3
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v6, "source file meant to be "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v7

    aput-object v1, v12, v8

    invoke-static/range {p5 .. p5}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v12, v11

    invoke-virtual {v3, v12}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v3

    .line 963
    :cond_7
    move-object/from16 v6, p0

    move-object/from16 v11, v17

    .end local v17    # "destFileCanonicalPath":Ljava/lang/String;
    .end local p0    # "srcFileCanonicalPath":Ljava/lang/String;
    .local v6, "srcFileCanonicalPath":Ljava/lang/String;
    .local v11, "destFileCanonicalPath":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v17, :cond_8

    .line 964
    :try_start_5
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_TO_SAME_PATH:Lcom/termux/shared/models/errors/Errno;

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-virtual {v3, v7}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v3

    .line 967
    :cond_8
    :try_start_6
    sget-object v7, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eq v15, v7, :cond_b

    .line 969
    if-nez p6, :cond_9

    .line 970
    return-object v18

    .line 974
    :cond_9
    if-eqz p7, :cond_a

    if-eq v15, v14, :cond_a

    .line 975
    :try_start_7
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_DIFFERENT_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    invoke-virtual {v15}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const/4 v8, 0x5

    invoke-virtual {v14}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-virtual {v3, v7}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 978
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "destination file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v2, v8}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v7

    .line 979
    .local v7, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v7, :cond_b

    .line 980
    return-object v7

    .line 985
    .end local v7    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_b
    xor-int/lit8 v7, p3, 0x1

    .line 988
    .local v7, "copyFile":Z
    if-eqz p3, :cond_f

    .line 990
    const-string v8, "Attempting to rename source to destination."

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 998
    sget-object v8, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v14, v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v19, v6

    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .local v19, "srcFileCanonicalPath":Ljava/lang/String;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 999
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CANNOT_MOVE_DIRECTORY_TO_SUB_DIRECTORY_OF_ITSELF:Lcom/termux/shared/models/errors/Errno;

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "source directory"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v8, v12

    const/4 v6, 0x1

    aput-object v1, v8, v6

    const/4 v6, 0x2

    aput-object v2, v8, v6

    invoke-virtual {v3, v8}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 998
    .end local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    :cond_c
    move-object/from16 v19, v6

    .line 1002
    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renaming "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "source file to destination failed, attempting to copy."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1003
    const/4 v7, 0x1

    goto :goto_3

    .line 995
    .end local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v6

    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    goto :goto_3

    .line 988
    .end local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    :cond_f
    move-object/from16 v19, v6

    .line 1008
    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    :goto_3
    if-eqz v7, :cond_15

    .line 1009
    :try_start_8
    const-string v6, "Attempting to copy source to destination."

    invoke-static {v3, v6}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "dest file parent"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    .line 1013
    .local v6, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v6, :cond_10

    .line 1014
    return-object v6

    .line 1016
    :cond_10
    sget-object v8, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    if-ne v14, v8, :cond_11

    .line 1018
    const/4 v8, 0x1

    :try_start_9
    invoke-static {v0, v13, v8}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move/from16 v21, v7

    move-object/from16 v22, v10

    goto/16 :goto_4

    .line 1019
    :cond_11
    :try_start_a
    sget-object v8, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    move-object/from16 v20, v6

    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .local v20, "error":Lcom/termux/shared/models/errors/Error;
    const/16 v6, 0x1a

    if-ne v14, v8, :cond_13

    .line 1020
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_12

    .line 1021
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move/from16 v21, v7

    move-object/from16 v22, v10

    const/4 v7, 0x2

    .end local v7    # "copyFile":Z
    .end local v10    # "modePast":Ljava/lang/String;
    .local v21, "copyFile":Z
    .local v22, "modePast":Ljava/lang/String;
    :try_start_b
    new-array v10, v7, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v17, 0x0

    aput-object v7, v10, v17

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v23, 0x1

    aput-object v7, v10, v23

    invoke-static {v6, v8, v10}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    goto :goto_4

    .line 1025
    .end local v21    # "copyFile":Z
    .end local v22    # "modePast":Ljava/lang/String;
    .restart local v7    # "copyFile":Z
    .restart local v10    # "modePast":Ljava/lang/String;
    :cond_12
    move/from16 v21, v7

    move-object/from16 v22, v10

    .end local v7    # "copyFile":Z
    .end local v10    # "modePast":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    .restart local v22    # "modePast":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dest file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    .line 1026
    .end local v20    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v6, :cond_16

    .line 1027
    return-object v6

    .line 1030
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v21    # "copyFile":Z
    .end local v22    # "modePast":Ljava/lang/String;
    .restart local v7    # "copyFile":Z
    .restart local v10    # "modePast":Ljava/lang/String;
    .restart local v20    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_13
    move/from16 v21, v7

    move-object/from16 v22, v10

    .end local v7    # "copyFile":Z
    .end local v10    # "modePast":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    .restart local v22    # "modePast":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_14

    .line 1031
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/nio/file/CopyOption;

    sget-object v8, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v17, 0x0

    aput-object v8, v10, v17

    sget-object v8, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v23, 0x1

    aput-object v8, v10, v23

    invoke-static {v6, v7, v10}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    goto :goto_4

    .line 1034
    :cond_14
    const/4 v6, 0x1

    invoke-static {v0, v13, v6}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_4

    .line 1008
    .end local v20    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v21    # "copyFile":Z
    .end local v22    # "modePast":Ljava/lang/String;
    .restart local v7    # "copyFile":Z
    .restart local v10    # "modePast":Ljava/lang/String;
    :cond_15
    move/from16 v21, v7

    move-object/from16 v22, v10

    .line 1040
    .end local v7    # "copyFile":Z
    .end local v10    # "modePast":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    .restart local v22    # "modePast":Ljava/lang/String;
    :cond_16
    :goto_4
    if-eqz p3, :cond_17

    .line 1042
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    .line 1043
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v6, :cond_17

    .line 1044
    return-object v6

    .line 1049
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v11    # "destFileCanonicalPath":Ljava/lang/String;
    .end local v13    # "destFile":Ljava/io/File;
    .end local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v21    # "copyFile":Z
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1047
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v11    # "destFileCanonicalPath":Ljava/lang/String;
    .restart local v13    # "destFile":Ljava/io/File;
    .restart local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successful."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 1051
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v11    # "destFileCanonicalPath":Ljava/lang/String;
    .end local v13    # "destFile":Ljava/io/File;
    .end local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v19    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v21    # "copyFile":Z
    nop

    .line 1053
    return-object v18

    .line 1049
    .end local v22    # "modePast":Ljava/lang/String;
    .restart local v10    # "modePast":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v22, v10

    .line 1050
    .end local v10    # "modePast":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "modePast":Ljava/lang/String;
    :goto_5
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "file"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v1, v6, v4

    const/4 v4, 0x2

    aput-object v2, v6, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v6, v7

    invoke-virtual {v3, v0, v6}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v22    # "modePast":Ljava/lang/String;
    :cond_18
    move v4, v6

    :goto_6
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "destination file path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 926
    :cond_19
    :goto_7
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "source file path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copyRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 732
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 733
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 732
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copySymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 820
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 821
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 820
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectoryFile(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 550
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath"
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToCheck"    # Ljava/lang/String;
    .param p3, "setPermissions"    # Z
    .param p4, "setMissingPermissionsOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "permissionsToCheck",
            "setPermissions",
            "setMissingPermissionsOnly"
        }
    .end annotation

    .line 587
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 5
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath"
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "fileParentPath":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 533
    invoke-static {p0, v2, v3, v0, v0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 536
    :cond_1
    return-object v3

    .line 527
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileParentPath":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v1, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "createParentDirectoryFile"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createRegularFile(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->createRegularFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createRegularFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath"
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/termux/shared/file/FileUtils;->createRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/models/errors/Error;
    .locals 13
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToCheck"    # Ljava/lang/String;
    .param p3, "setPermissions"    # Z
    .param p4, "setMissingPermissionsOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "permissionsToCheck",
            "setPermissions",
            "setMissingPermissionsOnly"
        }
    .end annotation

    .line 475
    move-object v0, p0

    move-object v7, p1

    const-string v1, "regular file"

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v8, v2

    .line 476
    .end local p0    # "label":Ljava/lang/String;
    .local v8, "label":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 480
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 481
    .local v9, "file":Ljava/io/File;
    invoke-static {p1, v4}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v10

    .line 484
    .local v10, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v10, v0, :cond_2

    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v10, v0, :cond_2

    .line 485
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object v7, v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 489
    :cond_2
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v10, v0, :cond_3

    .line 490
    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "regular file parent"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v11

    .line 495
    .local v11, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v11, :cond_4

    .line 496
    return-object v11

    .line 499
    :cond_4
    :try_start_0
    const-string v0, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "regular file at path \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 502
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/models/errors/Errno;

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object v7, v5, v2

    invoke-virtual {v0, v5}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 505
    :cond_5
    nop

    .line 507
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Lcom/termux/shared/file/FileUtils;->validateRegularFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {v5, v0, v6}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    return-object v1

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v11    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_6
    :goto_1
    sget-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "file path"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "createRegularFile"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createSymlinkFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p0, "targetFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "targetFilePath",
            "destFilePath"
        }
    .end annotation

    .line 610
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "targetFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "targetFilePath",
            "destFilePath"
        }
    .end annotation

    .line 630
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/models/errors/Error;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "targetFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "allowDangling"    # Z
    .param p4, "overwrite"    # Z
    .param p5, "overwriteOnlyIfDestIsASymlink"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "targetFilePath",
            "destFilePath",
            "allowDangling",
            "overwrite",
            "overwriteOnlyIfDestIsASymlink"
        }
    .end annotation

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "/"

    if-nez v0, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .end local p0    # "label":Ljava/lang/String;
    .local v4, "label":Ljava/lang/String;
    :goto_0
    const-string v0, "createSymlinkFile"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2

    .line 654
    :cond_1
    if-eqz v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_1

    .line 659
    :cond_2
    const/4 v8, 0x3

    const/4 v9, 0x4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, "destFile":Ljava/io/File;
    move-object/from16 v10, p1

    .line 663
    .local v10, "targetFileAbsolutePath":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 665
    .local v11, "destFileParentPath":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 666
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 669
    .end local v11    # "destFileParentPath":Ljava/lang/String;
    :cond_3
    invoke-static {v10, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v3

    .line 670
    .local v3, "targetFileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-static {v2, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v11

    .line 673
    .local v11, "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v3, v12, :cond_4

    .line 675
    if-nez p3, :cond_4

    .line 676
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "symlink target file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 677
    sget-object v12, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v4, v13, v7

    aput-object v10, v13, v6

    invoke-virtual {v12, v13}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v5

    return-object v5

    .line 682
    :cond_4
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v13, 0x0

    if-eq v11, v12, :cond_7

    .line 684
    if-nez p4, :cond_5

    .line 685
    return-object v13

    .line 689
    :cond_5
    if-eqz p5, :cond_6

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v11, v12, :cond_6

    .line 690
    sget-object v12, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_NON_SYMLINK_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    new-array v13, v9, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " file"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    aput-object v2, v13, v6

    aput-object v1, v13, v5

    invoke-virtual {v11}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-virtual {v12, v13}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v5

    return-object v5

    .line 693
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "symlink destination"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2, v6}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v12

    .line 694
    .local v12, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v12, :cond_8

    .line 695
    return-object v12

    .line 698
    .end local v12    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "symlink destination file parent"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v12

    .line 699
    .restart local v12    # "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v12, :cond_8

    .line 700
    return-object v12

    .line 704
    :cond_8
    const-string v14, "FileUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "symlink file at path \""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "\" to \""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "\""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static/range {p1 .. p2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v0    # "destFile":Ljava/io/File;
    .end local v3    # "targetFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "targetFileAbsolutePath":Ljava/lang/String;
    .end local v11    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    nop

    .line 710
    return-object v13

    .line 706
    .end local v12    # "error":Lcom/termux/shared/models/errors/Error;
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_SYMLINK_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    new-array v8, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "symlink file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    aput-object v2, v8, v6

    aput-object v1, v8, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v8, v6

    invoke-virtual {v3, v0, v8}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_1
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "destination file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 653
    :cond_a
    :goto_2
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "target file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteDirectoryFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "ignoreNonExistentFile"
        }
    .end annotation

    .line 1085
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "ignoreNonExistentFile"
        }
    .end annotation

    .line 1115
    sget v0, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/models/errors/Error;
    .locals 15
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z
    .param p3, "ignoreWrongFileType"    # Z
    .param p4, "allowedFileTypeFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "label",
            "filePath",
            "ignoreNonExistentFile",
            "ignoreWrongFileType",
            "allowedFileTypeFlags"
        }
    .end annotation

    .line 1140
    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "\""

    const-string v3, "file at path \""

    const-string v4, "FileUtils"

    if-nez v0, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1141
    .end local p0    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1144
    :cond_1
    const/4 v9, 0x3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, "file":Ljava/io/File;
    invoke-static {v1, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v10

    .line 1147
    .local v10, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing delete of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" of type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    sget-object v11, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "file meant to be deleted"

    const/4 v13, 0x0

    if-ne v10, v11, :cond_3

    .line 1152
    if-eqz p2, :cond_2

    .line 1153
    return-object v13

    .line 1156
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 1157
    sget-object v2, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v8

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v2

    return-object v2

    .line 1162
    :cond_3
    invoke-virtual {v10}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v11

    and-int v11, p4, v11

    if-gtz v11, :cond_5

    .line 1164
    if-eqz p3, :cond_4

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring deletion of "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not matching allowed file types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    return-object v13

    .line 1170
    :cond_4
    sget-object v2, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v1, v3, v7

    invoke-static/range {p4 .. p4}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v2

    return-object v2

    .line 1173
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleting "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_6

    .line 1195
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v7, [Lcom/google/common/io/RecursiveDeleteOption;

    sget-object v4, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/google/common/io/MoreFiles;->deleteRecursively(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    goto :goto_1

    .line 1197
    :cond_6
    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v10, v2, :cond_7

    .line 1200
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    goto :goto_1

    .line 1203
    :cond_7
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 1208
    :goto_1
    invoke-static {v1, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v2

    .line 1209
    .end local v10    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .local v2, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v2, v3, :cond_8

    .line 1210
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1214
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    :cond_8
    nop

    .line 1216
    return-object v13

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "file"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v1, v3, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v2

    return-object v2

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_2
    sget-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "deleteFile"

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFilesOlderThanXDays(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;IZI)Lcom/termux/shared/models/errors/Error;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "days"    # I
    .param p4, "ignoreNonExistentFile"    # Z
    .param p5, "allowedFileTypeFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0,
            0x10,
            0x0
        }
        names = {
            "label",
            "filePath",
            "dirFilter",
            "days",
            "ignoreNonExistentFile",
            "allowedFileTypeFlags"
        }
    .end annotation

    .line 1310
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "directory"

    if-nez v0, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1311
    .end local p0    # "label":Ljava/lang/String;
    .local v4, "label":Ljava/lang/String;
    :goto_0
    const-string v0, "deleteFilesOlderThanXDays"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v13, p2

    move v10, v5

    move/from16 v5, p5

    goto/16 :goto_4

    .line 1312
    :cond_1
    const/4 v8, 0x3

    if-gez v2, :cond_2

    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_INVALID_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "days"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v0, v8, v7

    const-string v0, " It must be >= 0."

    aput-object v0, v8, v5

    invoke-virtual {v3, v8}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1317
    :cond_2
    :try_start_0
    const-string v0, "FileUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting files under "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "directory at path \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" older than "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " days"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v0, "file":Ljava/io/File;
    invoke-static {v1, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v9

    .line 1323
    .local v9, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v10, :cond_3

    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v10, :cond_3

    .line 1324
    sget-object v10, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v11, v5, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v1, v11, v7

    invoke-virtual {v10, v11}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 1328
    :cond_3
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_5

    .line 1330
    if-eqz p4, :cond_4

    .line 1331
    return-object v11

    .line 1334
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "directory under which files had to be deleted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 1335
    sget-object v10, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v4, v11, v6

    aput-object v1, v11, v7

    invoke-virtual {v10, v11}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 1340
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1341
    .local v10, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x5

    neg-int v13, v2

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 1343
    new-instance v12, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    .line 1344
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v13, p2

    :try_start_1
    invoke-static {v0, v12, v13}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v12

    .line 1345
    .local v12, "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1346
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 1347
    .local v14, "subFile":Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v8, " directory sub"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v5, p5

    :try_start_2
    invoke-static {v8, v15, v7, v7, v5}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/models/errors/Error;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1348
    .local v8, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v8, :cond_6

    .line 1349
    return-object v8

    .line 1350
    .end local v14    # "subFile":Ljava/io/File;
    :cond_6
    const/4 v5, 0x2

    const/4 v8, 0x3

    goto :goto_1

    .line 1351
    .end local v0    # "file":Ljava/io/File;
    .end local v8    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1345
    .restart local v0    # "file":Ljava/io/File;
    .restart local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v10    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_7
    move/from16 v5, p5

    .line 1353
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    nop

    .line 1355
    return-object v11

    .line 1351
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v13, p2

    :goto_2
    move/from16 v5, p5

    .line 1352
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v8, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_DELETING_FILES_OLDER_THAN_X_DAYS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v6

    aput-object v1, v9, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v9, v6

    invoke-virtual {v8, v0, v9}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 1311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v13, p2

    move v10, v5

    move/from16 v5, p5

    :goto_4
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v8, v10, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file path"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v0, v8, v7

    invoke-virtual {v3, v8}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "ignoreNonExistentFile"
        }
    .end annotation

    .line 1070
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteSymlinkFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "ignoreNonExistentFile"
        }
    .end annotation

    .line 1100
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static directoryFileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "followLinks"
        }
    .end annotation

    .line 210
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static fileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "followLinks"
        }
    .end annotation

    .line 233
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "prefixForNonAbsolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "path",
            "prefixForNonAbsolutePath"
        }
    .end annotation

    .line 71
    if-nez p0, :cond_0

    const-string p0, ""

    .line 76
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    move-object v0, p0

    .local v0, "absolutePath":Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v0    # "absolutePath":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "absolutePath":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0    # "absolutePath":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "absolutePath":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    :catch_0
    move-exception v1

    .line 90
    return-object v0
.end method

.method public static getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "followLinks"
        }
    .end annotation

    .line 251
    invoke-static {p0, p1}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    return-object v0
.end method

.method public static getShortFileUtilsError(Lcom/termux/shared/models/errors/Error;)Lcom/termux/shared/models/errors/Error;
    .locals 8
    .param p0, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 1845
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, "type":Ljava/lang/String;
    const-string v1, "FileUtils Error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 1848
    :cond_0
    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_SHORT_MAPPING:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/models/errors/Errno;->valueOf(Ljava/lang/String;Ljava/lang/Integer;)Lcom/termux/shared/models/errors/Errno;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/models/errors/Errno;

    .line 1849
    .local v1, "shortErrno":Lcom/termux/shared/models/errors/Errno;
    if-nez v1, :cond_1

    return-object p0

    .line 1851
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getThrowablesList()Ljava/util/List;

    move-result-object v2

    .line 1852
    .local v2, "throwables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "file"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 1853
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 1855
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/util/List;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3
.end method

.method public static isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 1618
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "charset"

    aput-object v4, v0, v2

    const-string v2, "isCharsetSupported"

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1621
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1622
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1626
    :cond_1
    nop

    .line 1628
    const/4 v0, 0x0

    return-object v0

    .line 1624
    :catch_0
    move-exception v3

    .line 1625
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/models/errors/Errno;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v4, v3, v0}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "ensureUnder"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "path",
            "dirPath",
            "ensureUnder"
        }
    .end annotation

    .line 148
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/termux/shared/file/FileUtils;->isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public static isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "ensureUnder"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "path",
            "dirPaths",
            "ensureUnder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 162
    .local p1, "dirPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 165
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 168
    nop

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "dirPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "normalizedDirPath":Ljava/lang/String;
    const-string v5, "/"

    if-eqz p2, :cond_2

    .line 176
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    .local v5, "isPathInDirPaths":Z
    :goto_1
    goto :goto_2

    .line 178
    .end local v5    # "isPathInDirPaths":Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 180
    .restart local v5    # "isPathInDirPaths":Z
    :goto_2
    if-eqz v5, :cond_3

    return v2

    .line 181
    .end local v3    # "dirPath":Ljava/lang/String;
    .end local v4    # "normalizedDirPath":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 183
    .end local v5    # "isPathInDirPaths":Z
    :cond_4
    return v0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return v0
.end method

.method public static isValidPermissionString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "string"
        }
    .end annotation

    .line 1832
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    const-string v1, "^([r-])[w-][x-]$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    .line 1832
    :cond_1
    :goto_0
    return v0
.end method

.method public static moveDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 798
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 799
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 798
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 886
    sget v5, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 755
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 754
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static moveSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "label",
            "srcFilePath",
            "destFilePath",
            "ignoreNonExistentSrcFile"
        }
    .end annotation

    .line 842
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 843
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 842
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static normalizePath(Ljava/lang/String;)Ljava/lang/String;
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

    .line 102
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    const-string v0, "\\./"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_1
    return-object p0
.end method

.method private static preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "filePath"
        }
    .end annotation

    .line 1594
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    .line 1597
    .local v1, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v1, v2, :cond_0

    .line 1598
    sget-object v2, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1602
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "file parent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 1603
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v0, :cond_1

    .line 1604
    return-object v0

    .line 1606
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static readSerializableObjectFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10
        }
        names = {
            "label",
            "filePath",
            "readObjectType",
            "ignoreNonExistentFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;"
        }
    .end annotation

    .line 1457
    .local p2, "readObjectType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1458
    .end local p0    # "label":Ljava/lang/String;
    .local v2, "label":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v11, p2

    goto/16 :goto_3

    .line 1460
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading serializable object from "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "file at path \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FileUtils"

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-static {v1, v5}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v7

    .line 1467
    .local v7, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const-string v8, "file"

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v7, v0, :cond_2

    .line 1468
    new-instance v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v9, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    aput-object v1, v4, v3

    invoke-virtual {v9, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V

    return-object v0

    .line 1472
    :cond_2
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v7, v0, :cond_4

    .line 1474
    if-eqz p3, :cond_3

    .line 1475
    new-instance v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    invoke-direct {v0, v6, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V

    return-object v0

    .line 1478
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "file meant to be read"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    .end local v2    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    new-instance v2, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v8, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v3

    invoke-virtual {v8, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V

    return-object v2

    .line 1483
    .end local v0    # "label":Ljava/lang/String;
    .restart local v2    # "label":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 1484
    .local v9, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 1487
    .local v10, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 1488
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 1490
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v11, p2

    :try_start_1
    invoke-virtual {v11, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1496
    .local v0, "serializableObject":Ljava/io/Serializable;, "TT;"
    invoke-static {v9}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1497
    invoke-static {v10}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1498
    nop

    .line 1500
    new-instance v3, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    invoke-direct {v3, v6, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V

    return-object v3

    .line 1493
    .end local v0    # "serializableObject":Ljava/io/Serializable;, "TT;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1496
    :catchall_0
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_2

    .line 1493
    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    .line 1494
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v12, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v13, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v5

    aput-object v1, v14, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v4

    invoke-virtual {v13, v0, v14}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-direct {v12, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1496
    invoke-static {v9}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1497
    invoke-static {v10}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1494
    return-object v12

    .line 1496
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v9}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1497
    invoke-static {v10}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1498
    throw v0

    .line 1458
    .end local v7    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_5
    move-object/from16 v11, p2

    :goto_3
    new-instance v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v7, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "readSerializableObjectFromFile"

    aput-object v5, v4, v3

    invoke-virtual {v7, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static readStringFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/models/errors/Error;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataStringBuilder"    # Ljava/lang/StringBuilder;
    .param p4, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "charset",
            "dataStringBuilder",
            "ignoreNonExistentFile"
        }
    .end annotation

    .line 1376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-nez v0, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1377
    .end local p0    # "label":Ljava/lang/String;
    .local v3, "label":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 1379
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading string from "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "file at path \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FileUtils"

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    invoke-static {v1, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v8

    .line 1386
    .local v8, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const-string v9, "file"

    if-eq v8, v0, :cond_2

    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v8, v0, :cond_2

    .line 1387
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 1391
    :cond_2
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v10, 0x0

    if-ne v8, v0, :cond_4

    .line 1393
    if-eqz p4, :cond_3

    .line 1394
    return-object v10

    .line 1397
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "file meant to be read"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .end local v3    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    sget-object v3, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    return-object v3

    .line 1402
    .end local v0    # "label":Ljava/lang/String;
    .restart local v3    # "label":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v11, v0

    .end local p2    # "charset":Ljava/nio/charset/Charset;
    .local v0, "charset":Ljava/nio/charset/Charset;
    goto :goto_1

    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local p2    # "charset":Ljava/nio/charset/Charset;
    :cond_5
    move-object/from16 v11, p2

    .line 1405
    .end local p2    # "charset":Ljava/nio/charset/Charset;
    .local v11, "charset":Ljava/nio/charset/Charset;
    :goto_1
    invoke-static {v11}, Lcom/termux/shared/file/FileUtils;->isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/models/errors/Error;

    move-result-object v12

    .line 1406
    .local v12, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v12, :cond_6

    .line 1407
    return-object v12

    .line 1409
    :cond_6
    const/4 v13, 0x0

    .line 1410
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 1413
    .local v14, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1414
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v13, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v14, v0

    .line 1418
    const/4 v0, 0x1

    .line 1419
    .local v0, "firstLine":Z
    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p0, v15

    .local p0, "receiveString":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 1420
    if-nez v0, :cond_7

    const-string v15, "\n"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 1421
    :goto_3
    move-object/from16 v15, p0

    .end local p0    # "receiveString":Ljava/lang/String;
    .local v15, "receiveString":Ljava/lang/String;
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1424
    .end local v15    # "receiveString":Ljava/lang/String;
    .restart local p0    # "receiveString":Ljava/lang/String;
    :cond_8
    move-object/from16 v15, p0

    .end local p0    # "receiveString":Ljava/lang/String;
    .restart local v15    # "receiveString":Ljava/lang/String;
    const-string v4, "String"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 p2, v0

    .end local v0    # "firstLine":Z
    .local p2, "firstLine":Z
    const/16 v0, 0xfa0

    invoke-static {v10, v0, v5, v6, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    const-string v10, "-"

    invoke-static {v4, v0, v10}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    .end local v15    # "receiveString":Ljava/lang/String;
    .end local p2    # "firstLine":Z
    invoke-static {v13}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1429
    invoke-static {v14}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1430
    nop

    .line 1432
    const/4 v0, 0x0

    return-object v0

    .line 1428
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_READING_STRING_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    aput-object v1, v7, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v7, v6

    invoke-virtual {v4, v0, v7}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    invoke-static {v13}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1429
    invoke-static {v14}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1426
    return-object v4

    .line 1428
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v13}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1429
    invoke-static {v14}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1430
    throw v0

    .line 1377
    .end local v8    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .end local v12    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v14    # "bufferedReader":Ljava/io/BufferedReader;
    .local p2, "charset":Ljava/nio/charset/Charset;
    :cond_9
    :goto_5
    sget-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file path"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v6, "readStringFromFile"

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static regularFileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "followLinks"
        }
    .end annotation

    .line 197
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sanitizeWhitespaces"    # Z
    .param p2, "toLower"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileName",
            "sanitizeWhitespaces",
            "toLower"
        }
    .end annotation

    .line 124
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "_"

    if-eqz p1, :cond_1

    .line 127
    const-string v1, "[\\\\/:*?\"<>| \t\n]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "[\\\\/:*?\"<>|]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    :goto_0
    if-eqz p2, :cond_2

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2
    return-object p0
.end method

.method public static setFilePermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "permissionsToSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "permissionsToSet"
        }
    .end annotation

    .line 1659
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    return-void
.end method

.method public static setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "permissionsToSet"
        }
    .end annotation

    .line 1671
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1672
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 1674
    :cond_1
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, "FileUtils"

    if-nez v0, :cond_2

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid permissionsToSet passed to setFilePermissions: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    return-void

    .line 1679
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, "file":Ljava/io/File;
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "file at path \""

    if-eqz v3, :cond_3

    .line 1682
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting read permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, v4}, Ljava/io/File;->setReadable(Z)Z

    goto :goto_1

    .line 1687
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing read permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0, v5}, Ljava/io/File;->setReadable(Z)Z

    .line 1694
    :cond_4
    :goto_1
    const-string v3, "w"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1695
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting write permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    goto :goto_2

    .line 1700
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing write permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0, v5}, Ljava/io/File;->setWritable(Z)Z

    .line 1707
    :cond_6
    :goto_2
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1708
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting execute permissions for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z

    goto :goto_3

    .line 1713
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing execute permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v0, v5}, Ljava/io/File;->setExecutable(Z)Z

    .line 1718
    :cond_8
    :goto_3
    return-void

    .line 1672
    .end local v0    # "file":Ljava/io/File;
    :cond_9
    :goto_4
    return-void
.end method

.method public static setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "permissionsToSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "permissionsToSet"
        }
    .end annotation

    .line 1730
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    return-void
.end method

.method public static setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "permissionsToSet"
        }
    .end annotation

    .line 1742
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1743
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1745
    :cond_1
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, "FileUtils"

    if-nez v0, :cond_2

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid permissionsToSet passed to setMissingFilePermissions: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    return-void

    .line 1750
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v0, "file":Ljava/io/File;
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "file at path \""

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing read permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-virtual {v0, v4}, Ljava/io/File;->setReadable(Z)Z

    .line 1757
    :cond_3
    const-string v3, "w"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing write permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 1762
    :cond_4
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing execute permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z

    .line 1766
    :cond_5
    return-void

    .line 1743
    .end local v0    # "file":Ljava/io/File;
    :cond_6
    :goto_1
    return-void
.end method

.method public static symlinkFileExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 220
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/models/errors/Error;
    .locals 15
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "parentDirPath"    # Ljava/lang/String;
    .param p3, "createDirectoryIfMissing"    # Z
    .param p4, "permissionsToCheck"    # Ljava/lang/String;
    .param p5, "setPermissions"    # Z
    .param p6, "setMissingPermissionsOnly"    # Z
    .param p7, "ignoreErrorsIfPathIsInParentDirPath"    # Z
    .param p8, "ignoreIfNotExecutable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
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
            "parentDirPath",
            "createDirectoryIfMissing",
            "permissionsToCheck",
            "setPermissions",
            "setMissingPermissionsOnly",
            "ignoreErrorsIfPathIsInParentDirPath",
            "ignoreIfNotExecutable"
        }
    .end annotation

    .line 361
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "directory file"

    if-nez v0, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    .end local p0    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v12, p8

    goto/16 :goto_5

    .line 365
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "file":Ljava/io/File;
    invoke-static {v1, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v9

    .line 369
    .local v9, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "directory"

    if-eq v9, v10, :cond_2

    :try_start_1
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v10, :cond_2

    .line 370
    sget-object v10, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v12, v7, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    aput-object v1, v12, v6

    invoke-virtual {v10, v12}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    return-object v4

    .line 373
    :cond_2
    const/4 v10, 0x0

    .line 374
    .local v10, "isPathInParentDirPath":Z
    if-eqz v2, :cond_3

    .line 376
    invoke-static {v1, v2, v8}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move v10, v12

    .line 379
    :cond_3
    if-nez p3, :cond_4

    if-eqz p5, :cond_8

    .line 381
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v10, :cond_8

    invoke-static {v2, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v12

    sget-object v13, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v12, v13, :cond_8

    .line 383
    :cond_5
    if-eqz p3, :cond_6

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v9, v12, :cond_6

    .line 384
    const-string v12, "FileUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Creating "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "directory file at path \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v12

    .line 388
    .local v12, "result":Z
    invoke-static {v1, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v13

    move-object v9, v13

    .line 389
    if-nez v12, :cond_6

    sget-object v13, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v13, :cond_6

    .line 390
    sget-object v11, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/models/errors/Errno;

    new-array v13, v7, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    aput-object v1, v13, v6

    invoke-virtual {v11, v13}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    return-object v4

    .line 394
    .end local v12    # "result":Z
    :cond_6
    if-eqz p5, :cond_8

    if-eqz v3, :cond_8

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v9, v12, :cond_8

    .line 395
    if-eqz p6, :cond_7

    .line 396
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1, v3}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1, v3}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_8
    :goto_1
    if-eqz v2, :cond_a

    if-eqz v10, :cond_a

    if-nez p7, :cond_9

    goto :goto_2

    :cond_9
    move/from16 v12, p8

    goto :goto_3

    .line 408
    :cond_a
    :goto_2
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v12, :cond_b

    .line 409
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 410
    sget-object v11, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v5, v12, v8

    aput-object v1, v12, v6

    invoke-virtual {v11, v12}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    return-object v4

    .line 413
    :cond_b
    if-eqz v3, :cond_c

    .line 415
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v12, p8

    :try_start_2
    invoke-static {v11, v1, v3, v12}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .line 418
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "isPathInParentDirPath":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .line 413
    .restart local v0    # "file":Ljava/io/File;
    .restart local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v10    # "isPathInParentDirPath":Z
    :cond_c
    move/from16 v12, p8

    .line 420
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "isPathInParentDirPath":Z
    :goto_3
    nop

    .line 422
    const/4 v0, 0x0

    return-object v0

    .line 418
    :catch_1
    move-exception v0

    move/from16 v12, p8

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v9, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v8

    aput-object v1, v10, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v7

    invoke-virtual {v9, v0, v10}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    return-object v4

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    move/from16 v12, p8

    :goto_5
    sget-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "directory file path"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const-string v7, "validateDirectoryExistenceAndPermissions"

    aput-object v7, v4, v6

    invoke-virtual {v0, v4}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static validateRegularFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/models/errors/Error;
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "parentDirPath"    # Ljava/lang/String;
    .param p3, "permissionsToCheck"    # Ljava/lang/String;
    .param p4, "setPermissions"    # Z
    .param p5, "setMissingPermissionsOnly"    # Z
    .param p6, "ignoreErrorsIfPathIsUnderParentDirPath"    # Z
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
            "parentDirPath",
            "permissionsToCheck",
            "setPermissions",
            "setMissingPermissionsOnly",
            "ignoreErrorsIfPathIsUnderParentDirPath"
        }
    .end annotation

    .line 280
    const-string v0, "file"

    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object p0, v1

    .line 281
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 284
    :cond_1
    :try_start_0
    invoke-static {p1, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v4

    .line 287
    .local v4, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v5, :cond_2

    .line 288
    sget-object v5, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p1, v6, v2

    invoke-virtual {v5, v6}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 291
    :cond_2
    const/4 v5, 0x0

    .line 292
    .local v5, "isPathUnderParentDirPath":Z
    if-eqz p2, :cond_3

    .line 294
    invoke-static {p1, p2, v2}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    move v5, v6

    .line 298
    :cond_3
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v4, v6, :cond_6

    .line 300
    if-eqz p2, :cond_4

    if-eqz v5, :cond_6

    invoke-static {p2, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v6

    sget-object v7, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v6, v7, :cond_6

    .line 301
    :cond_4
    if-eqz p5, :cond_5

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_6
    :goto_1
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v6, :cond_7

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "regular file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object p0, v6

    .line 312
    sget-object v6, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object p1, v7, v2

    invoke-virtual {v6, v7}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/termux/shared/models/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 317
    :cond_7
    if-eqz p2, :cond_8

    if-eqz v5, :cond_8

    if-nez p6, :cond_9

    .line 318
    :cond_8
    if-eqz p3, :cond_9

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "regular"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3, v3}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 325
    .end local v4    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v5    # "isPathUnderParentDirPath":Z
    :cond_9
    nop

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 323
    :catch_0
    move-exception v4

    .line 324
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_VALIDATE_FILE_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v4, v6}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 281
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_2
    sget-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "regular file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "validateRegularFileExistenceAndPermissions"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static writeSerializableObjectToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/termux/shared/models/errors/Error;
    .locals 11
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "serializableObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/termux/shared/models/errors/Error;"
        }
    .end annotation

    .line 1561
    .local p2, "serializableObject":Ljava/io/Serializable;, "TT;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1562
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 1564
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing serializable object to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file at path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileUtils"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    .line 1569
    .local v3, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v3, :cond_2

    .line 1570
    return-object v3

    .line 1572
    :cond_2
    const/4 v4, 0x0

    .line 1573
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1576
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 1577
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 1579
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1580
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1585
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1586
    nop

    .line 1588
    const/4 v0, 0x0

    return-object v0

    .line 1584
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1581
    :catch_0
    move-exception v6

    .line 1582
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v7, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object p1, v8, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {v7, v6, v8}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1585
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1582
    return-object v0

    .line 1584
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1585
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1586
    throw v0

    .line 1562
    .end local v3    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_3
    :goto_2
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "writeSerializableObjectToFile"

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;
    .locals 11
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataString"    # Ljava/lang/String;
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "label",
            "filePath",
            "charset",
            "dataString",
            "append"
        }
    .end annotation

    .line 1515
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1516
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 1518
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing string to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file at path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfa0

    invoke-static {p3, v4, v2, v1, v2}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-static {v3, v4, v5}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileUtils"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    .line 1523
    .local v3, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v3, :cond_2

    .line 1524
    return-object v3

    .line 1526
    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    .line 1529
    :cond_3
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/models/errors/Error;

    move-result-object v3

    .line 1530
    if-eqz v3, :cond_4

    .line 1531
    return-object v3

    .line 1533
    :cond_4
    const/4 v4, 0x0

    .line 1534
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1537
    .local v5, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v4, v6

    .line 1538
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v4, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v5, v6

    .line 1540
    invoke-virtual {v5, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1546
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1547
    nop

    .line 1549
    const/4 v0, 0x0

    return-object v0

    .line 1545
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1542
    :catch_0
    move-exception v6

    .line 1543
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v7, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_WRITING_STRING_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object p1, v8, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v7, v6, v8}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1545
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1546
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1543
    return-object v0

    .line 1545
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1546
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1547
    throw v0

    .line 1516
    .end local v3    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "bufferedWriter":Ljava/io/BufferedWriter;
    :cond_5
    :goto_2
    sget-object v3, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "writeStringToFile"

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method
