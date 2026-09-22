.class Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "TerminalViewPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;


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

    .line 37
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;
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

    const-class v0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;

    .line 46
    :cond_0
    sget-object v1, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;
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

    .line 67
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    goto :goto_0

    :pswitch_0
    const-string v2, "terminal_margin_adjustment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 73
    return v1

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isTerminalMarginAdjustmentEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6b94599b
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

    .line 53
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 56
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    goto :goto_0

    :pswitch_0
    const-string v1, "terminal_margin_adjustment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux/TerminalViewPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setTerminalMarginAdjustment(Z)V

    .line 59
    nop

    .line 63
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6b94599b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
