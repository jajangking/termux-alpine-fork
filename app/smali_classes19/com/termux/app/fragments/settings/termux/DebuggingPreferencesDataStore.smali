.class Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "DebuggingPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    .line 76
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    .line 77
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;

    .line 83
    :cond_0
    sget-object v1, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 79
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "crash_report_notifications_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "terminal_view_key_logging_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "plugin_error_notifications_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 151
    return v1

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->areCrashReportNotificationsEnabled()Z

    move-result v0

    return v0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->arePluginErrorNotificationsEnabled()Z

    move-result v0

    return v0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isTerminalViewKeyLoggingEnabled()Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x665a1319 -> :sswitch_2
        -0x1582f3b6 -> :sswitch_1
        0x348893b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 94
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    goto :goto_0

    :pswitch_0
    const-string v2, "log_level"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 98
    return-object v1

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x779ee137
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 125
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v1, "crash_report_notifications_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "terminal_view_key_logging_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v1, "plugin_error_notifications_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCrashReportNotificationsEnabled(Z)V

    .line 134
    goto :goto_1

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setPluginErrorNotificationsEnabled(Z)V

    .line 131
    goto :goto_1

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setTerminalViewKeyLoggingEnabled(Z)V

    .line 128
    nop

    .line 138
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x665a1319 -> :sswitch_2
        -0x1582f3b6 -> :sswitch_1
        0x348893b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 107
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    goto :goto_0

    :pswitch_0
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 109
    :pswitch_1
    if-eqz p2, :cond_3

    .line 110
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    iget-object v1, p0, Lcom/termux/app/fragments/settings/termux/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setLogLevel(Landroid/content/Context;I)V

    .line 116
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x779ee137
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
