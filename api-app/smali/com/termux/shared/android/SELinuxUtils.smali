.class public abstract Lcom/termux/shared/android/SELinuxUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getContext()Ljava/lang/String;
    .locals 9

    .line 27
    const-string v0, " class"

    const-string v1, "android.os.SELinux"

    const-string v2, "() method of "

    const-string v3, "SELinuxUtils"

    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    .line 28
    const-string v4, "getContext"

    const/4 v5, 0x0

    .line 30
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 31
    invoke-static {v6, v4}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_0

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :catch_0
    move-exception v6

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v6, v5}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object v6

    iget-object v6, v6, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 39
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method

.method public static getFileContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 79
    const-string v0, " class"

    const-string v1, "android.os.SELinux"

    const-string v2, "() method of "

    const-string v3, "SELinuxUtils"

    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    .line 80
    const-string v4, "getFileContext"

    const/4 v5, 0x0

    .line 82
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 83
    const-class v7, Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_0

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :catch_0
    move-exception p0

    goto :goto_0

    .line 89
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, v5, p0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object p0

    iget-object p0, p0, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 91
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method
