.class Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "TermuxFloatPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;


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
    iput-object p1, p0, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;
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

    const-class v0, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;

    .line 46
    :cond_0
    sget-object v1, Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TermuxFloatPreferencesDataStore;
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
