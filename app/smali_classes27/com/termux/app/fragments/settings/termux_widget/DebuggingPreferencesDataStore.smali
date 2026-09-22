.class Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "DebuggingPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;


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

    .line 57
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    .line 60
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;
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

    const-class v0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;

    .line 66
    :cond_0
    sget-object v1, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 62
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
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

    .line 74
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 77
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

    .line 81
    return-object v1

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->getLogLevel(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x779ee137
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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

    .line 87
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 90
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

    .line 92
    :pswitch_1
    if-eqz p2, :cond_3

    .line 93
    iget-object v0, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    iget-object v1, p0, Lcom/termux/app/fragments/settings/termux_widget/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->setLogLevel(Landroid/content/Context;IZ)V

    .line 99
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x779ee137
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
