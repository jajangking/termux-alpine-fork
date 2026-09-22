.class public Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
.super Ljava/lang/Object;
.source "TermuxAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxAppSharedPreferences"


# instance fields
.field private DEFAULT_FONTSIZE:I

.field private MAX_FONTSIZE:I

.field private MIN_FONTSIZE:I

.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-virtual {p0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setFontVariables(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    const-string v0, "com.termux.alpine"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "termuxPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exitAppOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "exitAppOnError"
        }
    .end annotation

    .line 61
    const-string v0, "com.termux.alpine"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "termuxPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static getDefaultFontSizes(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 132
    .local v0, "dipInPixels":F
    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 136
    .local v2, "sizes":[I
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v2, v1

    .line 139
    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 141
    .local v3, "defaultFontSize":I
    rem-int/lit8 v4, v3, 0x2

    if-ne v4, v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 143
    :cond_0
    const/4 v1, 0x0

    aput v3, v2, v1

    .line 145
    const/16 v1, 0x100

    const/4 v4, 0x2

    aput v1, v2, v4

    .line 147
    return-object v2
.end method

.method private static getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 69
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "com.termux_preferences"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areCrashReportNotificationsEnabled()Z
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "crash_report_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public arePluginErrorNotificationsEnabled()Z
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "plugin_error_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public changeFontSize(Z)V
    .locals 3
    .param p1, "increase"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "increase"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v0

    .line 170
    .local v0, "fontSize":I
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 171
    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setFontSize(I)V

    .line 174
    return-void
.end method

.method public getCurrentSession()Ljava/lang/String;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_session"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    const-string v2, "fontsize"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "fontSize":I
    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/data/DataUtils;->clamp(III)I

    move-result v1

    return v1
.end method

.method public getLastNotificationId()I
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSoftKeyboardEnabled()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoftKeyboardEnabledOnlyIfNoHardware()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled_only_if_no_hardware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTerminalMarginAdjustmentEnabled()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_margin_adjustment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTerminalViewKeyLoggingEnabled()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCrashReportNotificationsEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "crash_report_notifications_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 235
    return-void
.end method

.method public setCurrentSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_session"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    return-void
.end method

.method public setFontSize(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 165
    return-void
.end method

.method public setFontVariables(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getDefaultFontSizes(Landroid/content/Context;)[I

    move-result-object v0

    .line 153
    .local v0, "sizes":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    .line 154
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    .line 155
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    .line 156
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 125
    return-void
.end method

.method public setLastNotificationId(I)V
    .locals 3
    .param p1, "notificationId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationId"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 205
    return-void
.end method

.method public setLogLevel(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevel"
        }
    .end annotation

    .line 193
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 194
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 195
    return-void
.end method

.method public setPluginErrorNotificationsEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "plugin_error_notifications_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 225
    return-void
.end method

.method public setShowTerminalToolbar(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_extra_keys"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 81
    return-void
.end method

.method public setSoftKeyboardEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 107
    return-void
.end method

.method public setSoftKeyboardEnabledOnlyIfNoHardware(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled_only_if_no_hardware"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 115
    return-void
.end method

.method public setTerminalMarginAdjustment(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_margin_adjustment"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 97
    return-void
.end method

.method public setTerminalViewKeyLoggingEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 215
    return-void
.end method

.method public shouldKeepScreenOn()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldShowTerminalToolbar()Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_extra_keys"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toogleShowTerminalToolbar()Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->shouldShowTerminalToolbar()Z

    move-result v0

    .line 85
    .local v0, "currentValue":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setShowTerminalToolbar(Z)V

    .line 86
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
