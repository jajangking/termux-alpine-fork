.class public abstract Lcom/termux/shared/android/FeatureFlagUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    }
.end annotation


# direct methods
.method public static featureFlagExists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 111
    invoke-static {}, Lcom/termux/shared/android/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getAllFeatureFlags()Ljava/util/Map;
    .locals 4

    .line 90
    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    const/4 v0, 0x0

    .line 92
    :try_start_0
    const-string v1, "android.util.FeatureFlagUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    const-string v2, "getAllFeatureFlags"

    invoke-static {v1, v2}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 95
    :cond_0
    invoke-static {v1, v0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 98
    const-string v2, "FeatureFlagUtils"

    const-string v3, "Failed to get all feature flags"

    invoke-static {v2, v3, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getFeatureFlagValueString(Landroid/content/Context;Ljava/lang/String;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 4

    .line 125
    invoke-static {p1}, Lcom/termux/shared/android/FeatureFlagUtils;->featureFlagExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    const-string v1, "\" value"

    const-string v2, "Failed to get feature flags \""

    const-string v3, "FeatureFlagUtils"

    if-nez v0, :cond_0

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    sget-object p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object p0

    .line 133
    :cond_1
    invoke-static {p0, p1}, Lcom/termux/shared/android/FeatureFlagUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_2

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object p0

    .line 138
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    :goto_0
    return-object p0
.end method

.method public static isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    .line 152
    const-string v0, "\" is enabled"

    const-string v1, "Failed to check if feature flag \""

    const-string v2, "FeatureFlagUtils"

    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    const/4 v3, 0x0

    .line 154
    :try_start_0
    const-string v4, "android.util.FeatureFlagUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 155
    const-string v5, "isEnabled"

    const-class v6, Landroid/content/Context;

    const-class v7, Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_0

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_0

    .line 161
    :cond_0
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object p0

    iget-object p0, p0, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 164
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method
