.class public abstract Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertEnvironmentToEnviron(Ljava/util/HashMap;)Ljava/util/List;
    .locals 5

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 39
    invoke-static {v2, v3, v4}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->isValidEnvironmentVariableNameValuePair(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createHomeDir(Ljava/util/HashMap;)V
    .locals 2

    .line 171
    const-string v0, "HOME"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "shell home"

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create shell home directory\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShellEnvironmentUtils"

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isValidEnvironmentVariableName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 129
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[a-zA-Z_][a-zA-Z0-9_]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidEnvironmentVariableNameValuePair(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .line 108
    invoke-static {p0}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->isValidEnvironmentVariableName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "`"

    const-string v3, "`, value=`"

    const-string v4, "ShellEnvironmentUtils"

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid environment variable name. name=`"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->isValidEnvironmentVariableValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid environment variable value. name=`"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidEnvironmentVariableValue(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 137
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
