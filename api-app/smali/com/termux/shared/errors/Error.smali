.class public Lcom/termux/shared/errors/Error;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:I

.field private label:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private throwablesList:Ljava/util/List;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    const-string p1, "Error"

    iput-object p1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/termux/shared/errors/Error;->code:I

    goto :goto_1

    .line 80
    :cond_1
    sget-object p1, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p1

    iput p1, p0, Lcom/termux/shared/errors/Error;->code:I

    .line 82
    :goto_1
    iput-object p3, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 85
    iput-object p4, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public static getErrorLogString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 203
    const-string p0, "null"

    return-object p0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 245
    const-string p0, "null"

    return-object p0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMinimalErrorString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public geStackTracesLogString()Ljava/lang/String;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackTraces:"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget v0, p0, Lcom/termux/shared/errors/Error;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCodeString()Ljava/lang/String;
    .locals 3

    .line 283
    iget v0, p0, Lcom/termux/shared/errors/Error;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "Error Code"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLogString()Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getTypeAndMessageLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->geStackTracesLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimalErrorLogString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getTypeAndMessageLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimalErrorString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAndMessageLogString()Ljava/lang/String;
    .locals 3

    .line 287
    const-string v0, "Error"

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error Message"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Message ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStateFailed()Z
    .locals 2

    .line 166
    iget v0, p0, Lcom/termux/shared/errors/Error;->code:I

    sget-object v1, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMinimalErrorLogString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/termux/shared/errors/Error;->label:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 0

    monitor-enter p0

    .line 149
    :try_start_0
    iput-object p3, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 153
    iput-object p1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 155
    :cond_0
    :goto_0
    sget-object p1, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p1

    if-le p2, p1, :cond_1

    .line 156
    iput p2, p0, Lcom/termux/shared/errors/Error;->code:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_1
    :try_start_1
    const-string p1, "Error"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignoring invalid error code value \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\". Force setting it to RESULT_CODE_FAILED \""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p2}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result p1

    iput p1, p0, Lcom/termux/shared/errors/Error;->code:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
