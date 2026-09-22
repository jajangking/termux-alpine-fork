.class public Lcom/termux/shared/shell/command/result/ResultData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public errorsList:Ljava/util/List;

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

    iput-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    return-void
.end method

.method public static getErrorsListLogString(Lcom/termux/shared/shell/command/result/ResultData;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 176
    const-string p0, "null"

    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object p0, p0, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 181
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/errors/Error;

    .line 182
    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->isStateFailed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    invoke-static {v1}, Lcom/termux/shared/errors/Error;->getErrorLogString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResultDataLogString(Lcom/termux/shared/shell/command/result/ResultData;Z)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 140
    const-string p0, "null"

    return-object p0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v1, "\n"

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/result/ResultData;->getStdoutLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/result/ResultData;->getStderrLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/result/ResultData;->getExitCodeLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string p1, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/termux/shared/shell/command/result/ResultData;->getErrorsListLogString(Lcom/termux/shared/shell/command/result/ResultData;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExitCodeLogString()Ljava/lang/String;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    const-string v1, "-"

    const-string v2, "Exit Code"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStderrLogString()Ljava/lang/String;
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    const-string v2, "Stderr"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    const-string v2, "Stdout"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

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
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/errors/Error;

    .line 111
    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->isStateFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 102
    :cond_0
    :goto_0
    new-instance v0, Lcom/termux/shared/errors/Error;

    invoke-direct {v0}, Lcom/termux/shared/errors/Error;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/termux/shared/shell/command/result/ResultData;->errorsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 129
    invoke-static {p0, v0}, Lcom/termux/shared/shell/command/result/ResultData;->getResultDataLogString(Lcom/termux/shared/shell/command/result/ResultData;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
