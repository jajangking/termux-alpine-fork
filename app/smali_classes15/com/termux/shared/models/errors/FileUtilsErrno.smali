.class public Lcom/termux/shared/models/errors/FileUtilsErrno;
.super Lcom/termux/shared/models/errors/Errno;
.source "FileUtilsErrno.java"


# static fields
.field public static final ERRNO_CANNOT_MOVE_DIRECTORY_TO_SUB_DIRECTORY_OF_ITSELF:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CANNOT_OVERWRITE_A_DIFFERENT_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CANNOT_OVERWRITE_A_NON_SYMLINK_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CLEARING_DIRECTORY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_COPYING_OR_MOVING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_COPYING_OR_MOVING_FILE_TO_SAME_PATH:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CREATING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_CREATING_SYMLINK_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_DELETING_FILES_OLDER_THAN_X_DAYS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_DELETING_FILE_FAILED:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_EXECUTABLE_REQUIRED:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_EXECUTABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_FOUND_AT_PATH_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_READABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_NOT_WRITABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NON_DIRECTORY_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NON_REGULAR_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NON_SYMLINK_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NON_SYMLINK_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE_PATH:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE_PATH:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_REGULAR_FILE:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_REGULAR_FILE_PATH:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_READING_STRING_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static ERRNO_SHORT_MAPPING:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/shared/models/errors/Errno;",
            "Lcom/termux/shared/models/errors/Errno;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_VALIDATE_FILE_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_WRITING_STRING_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "FileUtils Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const-string v1, "FileUtils Error"

    const/16 v2, 0x64

    const-string v3, "Executable required."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_EXECUTABLE_REQUIRED:Lcom/termux/shared/models/errors/Errno;

    .line 14
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x65

    const-string v3, "The regular file path is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_REGULAR_FILE_PATH:Lcom/termux/shared/models/errors/Errno;

    .line 15
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x66

    const-string v3, "The regular file is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_REGULAR_FILE:Lcom/termux/shared/models/errors/Errno;

    .line 16
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x67

    const-string v3, "The executable file path is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE_PATH:Lcom/termux/shared/models/errors/Errno;

    .line 17
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x68

    const-string v3, "The executable file is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE:Lcom/termux/shared/models/errors/Errno;

    .line 18
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x69

    const-string v3, "The directory file path is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE_PATH:Lcom/termux/shared/models/errors/Errno;

    .line 19
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x6a

    const-string v3, "The directory file is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/models/errors/Errno;

    .line 24
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x96

    const-string v3, "The %1$s not found at path \"%2$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/models/errors/Errno;

    .line 25
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x97

    const-string v3, "The %1$s not found at path."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 27
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x98

    const-string v3, "Non-regular file found at %1$s path \"%2$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    .line 28
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x99

    const-string v3, "Non-regular file found at %1$s path."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 29
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x9a

    const-string v3, "Non-directory file found at %1$s path \"%2$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    .line 30
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x9b

    const-string v3, "Non-directory file found at %1$s path."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 31
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x9c

    const-string v3, "Non-symlink file found at %1$s path \"%2$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND:Lcom/termux/shared/models/errors/Errno;

    .line 32
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x9d

    const-string v3, "Non-symlink file found at %1$s path."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 34
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x9e

    const-string v3, "The %1$s found at path \"%2$s\" is not one of allowed file types \"%3$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    .line 36
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x9f

    const-string v3, "Validating file existence and permissions of %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_VALIDATE_FILE_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 37
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xa0

    const-string v3, "Validating directory existence and permissions of %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 42
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xc8

    const-string v3, "Creating %1$s at path \"%2$s\" failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/models/errors/Errno;

    .line 43
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xc9

    const-string v3, "Creating %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 45
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xca

    const-string v3, "Cannot overwrite %1$s while creating symlink at \"%2$s\" to \"%3$s\" since destination file type \"%4$s\" is not a symlink."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_NON_SYMLINK_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    .line 46
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xcb

    const-string v3, "Creating %1$s at path \"%2$s\" to \"%3$s\" failed.\nException: %4$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CREATING_SYMLINK_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 51
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xfa

    const-string v3, "%1$s from \"%2$s\" to \"%3$s\" failed.\nException: %4$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 52
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xfb

    const-string v3, "%1$s from \"%2$s\" to \"%3$s\" cannot be done since they point to the same path."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_TO_SAME_PATH:Lcom/termux/shared/models/errors/Errno;

    .line 53
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xfc

    const-string v3, "Cannot overwrite %1$s while %2$s it from \"%3$s\" to \"%4$s\" since destination file type \"%5$s\" is different from source file type \"%6$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_DIFFERENT_FILE_TYPE:Lcom/termux/shared/models/errors/Errno;

    .line 54
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0xfd

    const-string v3, "Cannot move %1$s from \"%2$s\" to \"%3$s\" since destination is a subdirectory of the source."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CANNOT_MOVE_DIRECTORY_TO_SUB_DIRECTORY_OF_ITSELF:Lcom/termux/shared/models/errors/Errno;

    .line 59
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x12c

    const-string v3, "Deleting %1$s at path \"%2$s\" failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED:Lcom/termux/shared/models/errors/Errno;

    .line 60
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x12d

    const-string v3, "Deleting %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 61
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x12e

    const-string v3, "Clearing %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CLEARING_DIRECTORY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 62
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x12f

    const-string v3, "The %1$s still exists after deleting it from \"%2$s\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/models/errors/Errno;

    .line 63
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x130

    const-string v3, "Deleting %1$s under directory at path \"%2$s\" old than %3$s days failed.\nException: %4$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_DELETING_FILES_OLDER_THAN_X_DAYS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 68
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x15e

    const-string v3, "Reading string from %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_READING_STRING_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 69
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x15f

    const-string v3, "Writing string to %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_WRITING_STRING_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 70
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x160

    const-string v3, "Unsupported charset \"%1$s\""

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/models/errors/Errno;

    .line 71
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x161

    const-string v3, "Checking if charset \"%1$s\" is supported failed.\nException: %2$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/models/errors/Errno;

    .line 72
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x162

    const-string v3, "Reading serializable object from %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 73
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x163

    const-string v3, "Writing serializable object to %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 78
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x190

    const-string v3, "The file permission string to check is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/models/errors/Errno;

    .line 79
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x191

    const-string v3, "The %1$s at path \"%2$s\" is not readable. Permission Denied."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/models/errors/Errno;

    .line 80
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x192

    const-string v3, "The %1$s at path is not readable. Permission Denied."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 81
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x193

    const-string v3, "The %1$s at path \"%2$s\" is not writable. Permission Denied."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/models/errors/Errno;

    .line 82
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x194

    const-string v3, "The %1$s at path is not writable. Permission Denied."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 83
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x195

    const-string v3, "The %1$s at path \"%2$s\" is not executable. Permission Denied."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/models/errors/Errno;

    .line 84
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x196

    const-string v3, "The %1$s at path is not executable. Permission Denied."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE_SHORT:Lcom/termux/shared/models/errors/Errno;

    .line 94
    new-instance v0, Lcom/termux/shared/models/errors/FileUtilsErrno$1;

    invoke-direct {v0}, Lcom/termux/shared/models/errors/FileUtilsErrno$1;-><init>()V

    sput-object v0, Lcom/termux/shared/models/errors/FileUtilsErrno;->ERRNO_SHORT_MAPPING:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "code",
            "message"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    return-void
.end method
