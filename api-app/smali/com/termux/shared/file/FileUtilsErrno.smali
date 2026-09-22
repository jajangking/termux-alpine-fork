.class public abstract Lcom/termux/shared/file/FileUtilsErrno;
.super Lcom/termux/shared/errors/Errno;
.source "SourceFile"


# static fields
.field public static final ERRNO_CANNOT_MOVE_DIRECTORY_TO_SUB_DIRECTORY_OF_ITSELF:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CANNOT_OVERWRITE_A_DIFFERENT_FILE_TYPE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CANNOT_OVERWRITE_A_NON_SYMLINK_FILE_TYPE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLEARING_DIRECTORY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_COPYING_OR_MOVING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_COPYING_OR_MOVING_FILE_TO_SAME_PATH:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CREATING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CREATING_SYMLINK_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_DELETING_FILES_OLDER_THAN_X_DAYS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_DELETING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_EXECUTABLE_REQUIRED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_EXECUTABLE_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_FOUND_AT_PATH_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_READABLE_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_NOT_WRITABLE_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_GET_CHARSET_FOR_NAME_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_DIRECTORY_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_REGULAR_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_SYMLINK_FILE_FOUND:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NON_SYMLINK_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE_PATH:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE_PATH:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_REGULAR_FILE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_REGULAR_FILE_PATH:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_READING_TEXT_FROM_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SHORT_MAPPING:Ljava/util/Map;

.field public static final ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_VALIDATE_DIRECTORY_EMPTY_OR_ONLY_CONTAINS_SPECIFIC_FILES_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_VALIDATE_FILE_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_WRITING_TEXT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "Executable required."

    const-string v3, "FileUtils Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_EXECUTABLE_REQUIRED:Lcom/termux/shared/errors/Errno;

    .line 16
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x65

    const-string v2, "The regular file path is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_REGULAR_FILE_PATH:Lcom/termux/shared/errors/Errno;

    .line 17
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x66

    const-string v2, "The regular file is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_REGULAR_FILE:Lcom/termux/shared/errors/Errno;

    .line 18
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x67

    const-string v2, "The executable file path is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE_PATH:Lcom/termux/shared/errors/Errno;

    .line 19
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x68

    const-string v2, "The executable file is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_EXECUTABLE_FILE:Lcom/termux/shared/errors/Errno;

    .line 20
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x69

    const-string v2, "The directory file path is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE_PATH:Lcom/termux/shared/errors/Errno;

    .line 21
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x6a

    const-string v2, "The directory file is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NULL_OR_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

    .line 26
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x96

    const-string v2, "The %1$s not found at path \"%2$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    .line 27
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x97

    const-string v2, "The %1$s not found at path."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH_SHORT:Lcom/termux/shared/errors/Errno;

    .line 29
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x98

    const-string v2, "Non-regular file found at %1$s path \"%2$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    .line 30
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x99

    const-string v2, "Non-regular file found at %1$s path."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

    .line 31
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9a

    const-string v2, "Non-directory file found at %1$s path \"%2$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    .line 32
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9b

    const-string v2, "Non-directory file found at %1$s path."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

    .line 33
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9c

    const-string v2, "Non-symlink file found at %1$s path \"%2$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    .line 34
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9d

    const-string v2, "Non-symlink file found at %1$s path."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_SYMLINK_FILE_FOUND_SHORT:Lcom/termux/shared/errors/Errno;

    .line 36
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9e

    const-string v2, "The %1$s found at path \"%2$s\" of type \"%3$s\" is not one of allowed file types \"%4$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    .line 37
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9f

    const-string v2, "The %1$s directory at path \"%2$s\" is not empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

    .line 39
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xa0

    const-string v2, "Validating file existence and permissions of %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_FILE_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 40
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xa1

    const-string v2, "Validating directory existence and permissions of %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 41
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xa2

    const-string v2, "Validating directory is empty or only contains specific files of %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EMPTY_OR_ONLY_CONTAINS_SPECIFIC_FILES_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 46
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xc8

    const-string v2, "Creating %1$s at path \"%2$s\" failed."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

    .line 47
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xc9

    const-string v2, "Creating %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 49
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xca

    const-string v2, "Cannot overwrite %1$s while creating symlink at \"%2$s\" to \"%3$s\" since destination file type \"%4$s\" is not a symlink."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_NON_SYMLINK_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    .line 50
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xcb

    const-string v2, "Creating %1$s at path \"%2$s\" to \"%3$s\" failed.\nException: %4$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_SYMLINK_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 55
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xfa

    const-string v2, "%1$s from \"%2$s\" to \"%3$s\" failed.\nException: %4$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 56
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xfb

    const-string v2, "%1$s from \"%2$s\" to \"%3$s\" cannot be done since they point to the same path."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_TO_SAME_PATH:Lcom/termux/shared/errors/Errno;

    .line 57
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xfc

    const-string v2, "Cannot overwrite %1$s while %2$s it from \"%3$s\" to \"%4$s\" since destination file type \"%5$s\" is different from source file type \"%6$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_DIFFERENT_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    .line 58
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xfd

    const-string v2, "Cannot move %1$s from \"%2$s\" to \"%3$s\" since destination is a subdirectory of the source."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CANNOT_MOVE_DIRECTORY_TO_SUB_DIRECTORY_OF_ITSELF:Lcom/termux/shared/errors/Errno;

    .line 63
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x12c

    const-string v2, "Deleting %1$s at path \"%2$s\" failed."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

    .line 64
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x12d

    const-string v2, "Deleting %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 65
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x12e

    const-string v2, "Clearing %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CLEARING_DIRECTORY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 66
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x12f

    const-string v2, "The %1$s still exists after deleting it from \"%2$s\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/errors/Errno;

    .line 67
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x130

    const-string v2, "Deleting %1$s under directory at path \"%2$s\" old than %3$s days failed.\nException: %4$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_DELETING_FILES_OLDER_THAN_X_DAYS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 72
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x15e

    const-string v2, "Reading text from %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_READING_TEXT_FROM_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 73
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x15f

    const-string v2, "Writing text to %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_WRITING_TEXT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 74
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x160

    const-string v2, "Unsupported charset \"%1$s\""

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/errors/Errno;

    .line 75
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x161

    const-string v2, "Checking if charset \"%1$s\" is supported failed.\nException: %2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/errors/Errno;

    .line 76
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x162

    const-string v2, "The \"%1$s\" charset is not supported.\nException: %2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_GET_CHARSET_FOR_NAME_FAILED:Lcom/termux/shared/errors/Errno;

    .line 77
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x163

    const-string v2, "Reading serializable object from %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 78
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x164

    const-string v2, "Writing serializable object to %1$s at path \"%2$s\" failed.\nException: %3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 83
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x190

    const-string v2, "The file permission string to check is invalid."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/errors/Errno;

    .line 84
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x191

    const-string v2, "The %1$s at path \"%2$s\" is not readable. Permission Denied."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/errors/Errno;

    .line 85
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x192

    const-string v2, "The %1$s at path is not readable. Permission Denied."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE_SHORT:Lcom/termux/shared/errors/Errno;

    .line 86
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x193

    const-string v2, "The %1$s at path \"%2$s\" is not writable. Permission Denied."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/errors/Errno;

    .line 87
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x194

    const-string v2, "The %1$s at path is not writable. Permission Denied."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE_SHORT:Lcom/termux/shared/errors/Errno;

    .line 88
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x195

    const-string v2, "The %1$s at path \"%2$s\" is not executable. Permission Denied."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/errors/Errno;

    .line 89
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x196

    const-string v2, "The %1$s at path is not executable. Permission Denied."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE_SHORT:Lcom/termux/shared/errors/Errno;

    .line 99
    new-instance v0, Lcom/termux/shared/file/FileUtilsErrno$1;

    invoke-direct {v0}, Lcom/termux/shared/file/FileUtilsErrno$1;-><init>()V

    sput-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_SHORT_MAPPING:Ljava/util/Map;

    return-void
.end method
