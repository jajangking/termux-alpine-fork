.class public Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
.super Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.source "SourceFile"


# instance fields
.field private DEFAULT_FONTSIZE:I

.field private MAX_FONTSIZE:I

.field private MIN_FONTSIZE:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    const-string v0, "com.termux_preferences"

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 30
    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v1, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setFontVariables(Landroid/content/Context;)V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    .locals 1

    .line 45
    const-string v0, "com.termux"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDefaultFontSizes(Landroid/content/Context;)[I
    .locals 3

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr p0, v2

    .line 135
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 137
    rem-int/lit8 v2, p0, 0x2

    if-ne v2, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    const/16 v0, 0x100

    .line 141
    filled-new-array {p0, v1, v0}, [I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public arePluginErrorNotificationsEnabled(Z)Z
    .locals 2

    const/4 v0, 0x1

    .line 238
    const-string v1, "plugin_error_notifications_enabled"

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getLastNotificationId()I
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setFontVariables(Landroid/content/Context;)V
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getDefaultFontSizes(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 149
    aget v0, p1, v0

    iput v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    const/4 v0, 0x1

    .line 150
    aget v0, p1, v0

    iput v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    const/4 v0, 0x2

    .line 151
    aget p1, p1, v0

    iput p1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    return-void
.end method

.method public setLastNotificationId(I)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    return-void
.end method
