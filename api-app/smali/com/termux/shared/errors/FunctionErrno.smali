.class public abstract Lcom/termux/shared/errors/FunctionErrno;
.super Lcom/termux/shared/errors/Errno;
.source "SourceFile"


# static fields
.field public static final ERRNO_INVALID_PARAMETER:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_UNSET_PARAMETER:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/errors/Errno;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "The %1$s parameter passed to \"%2$s\" is null or empty."

    const-string v3, "Function Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    .line 11
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x65

    const-string v2, "The %1$s parameters passed to \"%2$s\" are null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/errors/Errno;

    .line 12
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x66

    const-string v2, "The %1$s parameter passed to \"%2$s\" must be set."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_UNSET_PARAMETER:Lcom/termux/shared/errors/Errno;

    .line 13
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x67

    const-string v2, "The %1$s parameters passed to \"%2$s\" must be set."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/errors/Errno;

    .line 14
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const-string v1, "The %1$s parameter passed to \"%2$s\" is invalid.\"%3$s\""

    const/16 v2, 0x68

    invoke-direct {v0, v3, v2, v1}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_INVALID_PARAMETER:Lcom/termux/shared/errors/Errno;

    .line 15
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const-string v1, "The %1$s parameter passed to \"%2$s\" is not an instance of %3$s."

    invoke-direct {v0, v3, v2, v1}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

    return-void
.end method
