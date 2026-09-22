.class Lcom/termux/shared/models/errors/FileUtilsErrno$1;
.super Ljava/util/HashMap;
.source "FileUtilsErrno.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/models/errors/FileUtilsErrno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/termux/shared/models/errors/Errno;",
        "Lcom/termux/shared/models/errors/Errno;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 95
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/models/errors/Errno;

    sget-object v1, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
