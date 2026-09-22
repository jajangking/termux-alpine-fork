.class public abstract Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {p0}, Landroidx/tracing/TraceApi18Impl;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 94
    invoke-static {}, Landroidx/tracing/TraceApi18Impl;->endSection()V

    return-void
.end method

.method private static handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 229
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 231
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_0

    .line 232
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via reflection"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Trace"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .line 61
    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 66
    :catch_0
    :cond_0
    invoke-static {}, Landroidx/tracing/Trace;->isEnabledFallback()Z

    move-result v0

    return v0
.end method

.method private static isEnabledFallback()Z
    .locals 6

    .line 159
    const-string v0, "isTagEnabled"

    const-class v1, Landroid/os/Trace;

    .line 161
    :try_start_0
    sget-object v2, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 162
    const-string v2, "TRACE_TAG_APP"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    sput-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    .line 164
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 165
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 167
    :cond_0
    :goto_0
    sget-object v1, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    sget-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 169
    :goto_1
    invoke-static {v0, v1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
