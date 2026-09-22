.class Lcom/termux/shared/file/FileUtilsErrno$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/file/FileUtilsErrno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/errors/Errno;

    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE_SHORT:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
