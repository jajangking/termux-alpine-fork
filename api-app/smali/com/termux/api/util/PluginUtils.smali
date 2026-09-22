.class public abstract Lcom/termux/api/util/PluginUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized getLastPendingIntentRequestCode(Landroid/content/Context;)I
    .locals 4

    const-class v0, Lcom/termux/api/util/PluginUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 20
    monitor-exit v0

    return v1

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 23
    monitor-exit v0

    return v1

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->getLastPendingIntentRequestCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_3

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 32
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->setLastPendingIntentRequestCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
