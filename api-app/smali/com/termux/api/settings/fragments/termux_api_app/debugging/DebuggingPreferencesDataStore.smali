.class Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 75
    invoke-static {p1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;
    .locals 2

    const-class v0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    sget-object p0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 90
    iget-object p2, p0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 93
    :cond_1
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x1

    .line 95
    invoke-virtual {p2, p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->getLogLevel(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 106
    :cond_1
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 109
    iget-object p1, p0, Lcom/termux/api/settings/fragments/termux_api_app/debugging/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->setLogLevel(Landroid/content/Context;IZ)V

    :cond_3
    :goto_0
    return-void
.end method
