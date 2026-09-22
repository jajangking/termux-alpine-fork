.class Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "TermuxAPIPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;


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

    .line 37
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAPIAppSharedPreferences;

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;
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

    const-class v0, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;

    .line 46
    :cond_0
    sget-object v1, Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TermuxAPIPreferencesDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
