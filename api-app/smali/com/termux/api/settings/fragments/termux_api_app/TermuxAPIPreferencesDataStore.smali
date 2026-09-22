.class Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;
    .locals 2

    const-class v0, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;->mInstance:Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;->mInstance:Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    sget-object p0, Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;->mInstance:Lcom/termux/api/settings/fragments/termux_api_app/TermuxAPIPreferencesDataStore;
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
