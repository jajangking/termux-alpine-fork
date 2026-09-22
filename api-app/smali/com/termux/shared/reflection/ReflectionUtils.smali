.class public abstract Lcom/termux/shared/reflection/ReflectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;,
        Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;
    }
.end annotation


# static fields
.field private static HIDDEN_API_REFLECTION_RESTRICTIONS_BYPASSED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/termux/shared/reflection/ReflectionUtils;->HIDDEN_API_REFLECTION_RESTRICTIONS_BYPASSED:Z

    return-void
.end method

.method public static bypassHiddenAPIReflectionRestrictions()V
    .locals 3

    .line 29
    sget-boolean v0, Lcom/termux/shared/reflection/ReflectionUtils;->HIDDEN_API_REFLECTION_RESTRICTIONS_BYPASSED:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 30
    const-string v0, "Bypassing android hidden api reflection restrictions"

    const-string v1, "ReflectionUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 34
    const-string v2, "Failed to bypass hidden API reflection restrictions"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/termux/shared/reflection/ReflectionUtils;->HIDDEN_API_REFLECTION_RESTRICTIONS_BYPASSED:Z

    :cond_0
    return-void
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" field for \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" class"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReflectionUtils"

    invoke-static {p1, p0, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" method for \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" class with parameter types: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReflectionUtils"

    invoke-static {p1, p0, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static invokeField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_0

    .line 99
    new-instance p2, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;

    invoke-direct {p2, v1, v0}, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    .line 100
    :cond_0
    new-instance v3, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {v3, v2, p2}, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;-><init>(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 102
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" field value for \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" class"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReflectionUtils"

    invoke-static {p1, p0, p2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    new-instance p0, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;

    invoke-direct {p0, v1, v0}, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;
    .locals 1

    const/4 v0, 0x0

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;
    .locals 3

    const/4 v0, 0x1

    .line 203
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 204
    new-instance v1, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;-><init>(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" method with object \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\" and args: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReflectionUtils"

    invoke-static {p1, p0, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    new-instance p0, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object p0
.end method
