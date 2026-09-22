.class public Lcom/termux/shared/models/errors/FunctionErrno;
.super Lcom/termux/shared/models/errors/Errno;
.source "FunctionErrno.java"


# static fields
.field public static final ERRNO_INVALID_PARAMETER:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_UNSET_PARAMETER:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/models/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "Function Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const-string v1, "Function Error"

    const/16 v2, 0x64

    const-string v3, "The %1$s parameter passed to \"%2$s\" is null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    .line 11
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x65

    const-string v3, "The %1$s parameters passed to \"%2$s\" are null or empty."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/models/errors/Errno;

    .line 12
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x66

    const-string v3, "The %1$s parameter passed to \"%2$s\" must be set."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_UNSET_PARAMETER:Lcom/termux/shared/models/errors/Errno;

    .line 13
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x67

    const-string v3, "The %1$s parameters passed to \"%2$s\" must be set."

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/models/errors/Errno;

    .line 14
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/16 v2, 0x68

    const-string v3, "The %1$s parameter passed to \"%2$s\" is invalid.\"%3$s\""

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/FunctionErrno;->ERRNO_INVALID_PARAMETER:Lcom/termux/shared/models/errors/Errno;

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

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    return-void
.end method
