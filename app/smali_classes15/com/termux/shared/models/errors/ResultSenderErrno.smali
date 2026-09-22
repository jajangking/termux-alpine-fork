.class public Lcom/termux/shared/models/errors/ResultSenderErrno;
.super Lcom/termux/shared/models/errors/Errno;
.source "ResultSenderErrno.java"


# static fields
.field public static final ERROR_FORMAT_RESULT_ERROR_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERROR_FORMAT_RESULT_OUTPUT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

.field public static final ERROR_RESULT_FILES_SUFFIX_INVALID:Lcom/termux/shared/models/errors/Errno;

.field public static final ERROR_RESULT_FILE_BASENAME_NULL_OR_INVALID:Lcom/termux/shared/models/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "ResultSender Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const-string v1, "ResultSender Error"

    const/16 v2, 0x64

    const-string v3, "The result file basename \"%1$s\" is null, empty or contains forward slashes \"/\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/ResultSenderErrno;->ERROR_RESULT_FILE_BASENAME_NULL_OR_INVALID:Lcom/termux/shared/models/errors/Errno;

    .line 11
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x65

    const-string v3, "The result files suffix \"%1$s\" contains forward slashes \"/\"."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/ResultSenderErrno;->ERROR_RESULT_FILES_SUFFIX_INVALID:Lcom/termux/shared/models/errors/Errno;

    .line 12
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x66

    const-string v3, "Formatting result error failed.\nException: %1$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/ResultSenderErrno;->ERROR_FORMAT_RESULT_ERROR_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

    .line 13
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x67

    const-string v3, "Formatting result output failed.\nException: %1$s"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/ResultSenderErrno;->ERROR_FORMAT_RESULT_OUTPUT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/models/errors/Errno;

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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    return-void
.end method
