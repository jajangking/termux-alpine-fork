.class public Lcom/termux/shared/models/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public errorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/models/errors/Error;",
            ">;"
        }
    .end annotation
.end field

.field public exitCode:Ljava/lang/Integer;

.field public final stderr:Ljava/lang/StringBuilder;

.field public final stdout:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public static getErrorsListLogString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;
    .locals 4
    .param p0, "resultData"    # Lcom/termux/shared/models/ResultData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultData"
        }
    .end annotation

    .line 176
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "logString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/models/errors/Error;

    .line 182
    .local v2, "error":Lcom/termux/shared/models/errors/Error;
    invoke-virtual {v2}, Lcom/termux/shared/models/errors/Error;->isStateFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    invoke-static {v2}, Lcom/termux/shared/models/errors/Error;->getErrorLogString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .end local v2    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_2
    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getErrorsListMarkdownString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;
    .locals 4
    .param p0, "resultData"    # Lcom/termux/shared/models/ResultData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultData"
        }
    .end annotation

    .line 223
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/models/errors/Error;

    .line 229
    .local v2, "error":Lcom/termux/shared/models/errors/Error;
    invoke-virtual {v2}, Lcom/termux/shared/models/errors/Error;->isStateFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    invoke-static {v2}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .end local v2    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_2
    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getErrorsListMinimalString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;
    .locals 4
    .param p0, "resultData"    # Lcom/termux/shared/models/ResultData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultData"
        }
    .end annotation

    .line 241
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "minimalString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/models/errors/Error;

    .line 247
    .local v2, "error":Lcom/termux/shared/models/errors/Error;
    invoke-virtual {v2}, Lcom/termux/shared/models/errors/Error;->isStateFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    invoke-static {v2}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .end local v2    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_2
    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResultDataLogString(Lcom/termux/shared/models/ResultData;Z)Ljava/lang/String;
    .locals 4
    .param p0, "resultData"    # Lcom/termux/shared/models/ResultData;
    .param p1, "logStdoutAndStderr"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "resultData",
            "logStdoutAndStderr"
        }
    .end annotation

    .line 140
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "logString":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/ResultData;->getStdoutLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/ResultData;->getStderrLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ResultData;->getExitCodeLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/termux/shared/models/ResultData;->getErrorsListLogString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResultDataMarkdownString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;
    .locals 6
    .param p0, "resultData"    # Lcom/termux/shared/models/ResultData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultData"
        }
    .end annotation

    .line 200
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Stdout"

    const-string v4, "-"

    if-eqz v1, :cond_1

    .line 205
    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v3, "Stderr"

    const-string v5, "\n"

    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    const-string v3, "Exit Code"

    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/termux/shared/models/ResultData;->getErrorsListMarkdownString(Lcom/termux/shared/models/ResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appendStderr(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendStderrLn(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendStdout(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendStdoutLn(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearStderr()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    return-void
.end method

.method public clearStdout()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    return-void
.end method

.method public getErrCode()I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/errors/Error;

    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 122
    :cond_0
    sget-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v0

    return v0
.end method

.method public getExitCodeLogString()Ljava/lang/String;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    const-string v1, "Exit Code"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStderrLogString()Ljava/lang/String;
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    const-string v2, "Stderr"

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x320

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v5, v4}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStdoutLogString()Ljava/lang/String;
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    const-string v2, "Stdout"

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x320

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v5, v4}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStateFailed()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/models/errors/Error;

    .line 111
    .local v1, "error":Lcom/termux/shared/models/errors/Error;
    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Error;->isStateFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v1    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public prependStderr(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public prependStderrLn(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public prependStdout(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public prependStdoutLn(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    monitor-enter p0

    .line 87
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 87
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 91
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p3, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 95
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 76
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 80
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;Ljava/util/List;)Z
    .locals 3
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/shared/models/errors/Error;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/termux/shared/models/ResultData;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p2    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    .line 102
    .end local p0    # "this":Lcom/termux/shared/models/ResultData;
    :cond_0
    new-instance v0, Lcom/termux/shared/models/errors/Error;

    invoke-direct {v0}, Lcom/termux/shared/models/errors/Error;-><init>()V

    .line 103
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    iget-object v1, p0, Lcom/termux/shared/models/ResultData;->errorsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 98
    .end local v0    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "code":I
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 129
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/models/ResultData;->getResultDataLogString(Lcom/termux/shared/models/ResultData;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
