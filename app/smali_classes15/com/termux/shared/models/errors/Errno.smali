.class public Lcom/termux/shared/models/errors/Errno;
.super Ljava/lang/Object;
.source "Errno.java"


# static fields
.field public static final ERRNO_CANCELLED:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_MINOR_FAILURES:Lcom/termux/shared/models/errors/Errno;

.field public static final ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

.field private static final LOG_TAG:Ljava/lang/String; = "Errno"

.field public static final TYPE:Ljava/lang/String; = "Error"

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/termux/shared/models/errors/Errno;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final code:I

.field protected final message:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/shared/models/errors/Errno;->map:Ljava/util/HashMap;

    .line 22
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const-string v1, "Error"

    const/4 v2, -0x1

    const-string v3, "Success"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

    .line 23
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/4 v2, 0x0

    const-string v3, "Cancelled"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_CANCELLED:Lcom/termux/shared/models/errors/Errno;

    .line 24
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/4 v2, 0x1

    const-string v3, "Minor failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_MINOR_FAILURES:Lcom/termux/shared/models/errors/Errno;

    .line 25
    new-instance v0, Lcom/termux/shared/models/errors/Errno;

    const/4 v2, 0x2

    const-string v3, "Failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/termux/shared/models/errors/Errno;->type:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/termux/shared/models/errors/Errno;->code:I

    .line 40
    iput-object p3, p0, Lcom/termux/shared/models/errors/Errno;->message:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/termux/shared/models/errors/Errno;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Integer;)Lcom/termux/shared/models/errors/Errno;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "code"
        }
    .end annotation

    .line 70
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/termux/shared/models/errors/Errno;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/errors/Errno;

    return-object v0

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/termux/shared/models/errors/Errno;->code:I

    return v0
.end method

.method public getError()Lcom/termux/shared/models/errors/Error;
    .locals 4

    .line 77
    new-instance v0, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "args"
        }
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0, p2}, Lcom/termux/shared/models/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/termux/shared/models/errors/Errno;->getError(Ljava/util/List;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public varargs getError(Ljava/util/List;[Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwablesList",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/termux/shared/models/errors/Error;"
        }
    .end annotation

    .line 99
    .local p1, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/termux/shared/models/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception raised while calling String.format() for error message of errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Errno"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/termux/shared/models/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public varargs getError([Ljava/lang/Object;)Lcom/termux/shared/models/errors/Error;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception raised while calling String.format() for error message of errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Errno"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Errno;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/termux/shared/models/errors/Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/termux/shared/models/errors/Errno;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/termux/shared/models/errors/Errno;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/errors/Errno;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/shared/models/errors/Errno;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/errors/Errno;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
