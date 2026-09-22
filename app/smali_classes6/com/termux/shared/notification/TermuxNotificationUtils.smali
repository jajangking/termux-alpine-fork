.class public Lcom/termux/shared/notification/TermuxNotificationUtils;
.super Ljava/lang/Object;
.source "TermuxNotificationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNextNotificationId(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/termux/shared/notification/TermuxNotificationUtils;

    monitor-enter v0

    .line 20
    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .local v2, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getLastNotificationId()I

    move-result v1

    .line 27
    .local v1, "lastNotificationId":I
    add-int/lit8 v3, v1, 0x1

    .line 28
    .local v3, "nextNotificationId":I
    :goto_0
    const/16 v4, 0x539

    if-eq v3, v4, :cond_5

    const/16 v4, 0x53a

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    if-gez v3, :cond_4

    .line 33
    :cond_3
    const/4 v3, 0x0

    .line 35
    :cond_4
    invoke-virtual {v2, v3}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setLastNotificationId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit v0

    return v3

    .line 29
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    .end local v1    # "lastNotificationId":I
    .end local v2    # "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    .end local v3    # "nextNotificationId":I
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
