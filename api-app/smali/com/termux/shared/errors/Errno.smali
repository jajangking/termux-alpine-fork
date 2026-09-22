.class public Lcom/termux/shared/errors/Errno;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERRNO_CANCELLED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_MINOR_FAILURES:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

.field private static final map:Ljava/util/HashMap;


# instance fields
.field protected final code:I

.field protected final message:Ljava/lang/String;

.field protected final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/shared/errors/Errno;->map:Ljava/util/HashMap;

    .line 22
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/4 v1, -0x1

    const-string v2, "Success"

    const-string v3, "Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    .line 23
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/4 v1, 0x0

    const-string v2, "Cancelled"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_CANCELLED:Lcom/termux/shared/errors/Errno;

    .line 24
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/4 v1, 0x1

    const-string v2, "Minor failure"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_MINOR_FAILURES:Lcom/termux/shared/errors/Errno;

    .line 25
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/4 v1, 0x2

    const-string v2, "Failed"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/termux/shared/errors/Errno;->type:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/termux/shared/errors/Errno;->code:I

    .line 40
    iput-object p3, p0, Lcom/termux/shared/errors/Errno;->message:Ljava/lang/String;

    .line 41
    sget-object p3, Lcom/termux/shared/errors/Errno;->map:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/termux/shared/errors/Errno;->code:I

    return v0
.end method

.method public getError()Lcom/termux/shared/errors/Error;
    .locals 4

    .line 80
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;
    .locals 0

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0, p2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/termux/shared/errors/Errno;->getError(Ljava/util/List;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    return-object p1
.end method

.method public varargs getError(Ljava/util/List;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;
    .locals 5

    if-nez p1, :cond_0

    .line 103
    :try_start_0
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/termux/shared/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception raised while calling String.format() for error message of errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Errno"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/termux/shared/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;
    .locals 5

    .line 85
    :try_start_0
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception raised while calling String.format() for error message of errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Errno"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/shared/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/termux/shared/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/termux/shared/errors/Errno;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/termux/shared/errors/Errno;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/errors/Errno;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/shared/errors/Errno;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/errors/Errno;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
