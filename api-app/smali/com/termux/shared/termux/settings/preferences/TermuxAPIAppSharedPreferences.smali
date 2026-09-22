.class public Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;
.super Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    const-string v0, "com.termux.api_preferences"

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    invoke-direct {p0, p1, v1, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;
    .locals 1

    .line 37
    const-string v0, "com.termux.api"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;
    .locals 1

    .line 54
    const-string v0, "com.termux.api"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/termux/TermuxUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance p1, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    invoke-direct {p1, p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public getLastPendingIntentRequestCode()I
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_pending_intent_request_code"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogLevel(Z)I
    .locals 2

    const/4 v0, 0x1

    .line 64
    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLastPendingIntentRequestCode(I)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_pending_intent_request_code"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setLogLevel(Landroid/content/Context;IZ)V
    .locals 1

    .line 71
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p1

    .line 72
    iget-object p2, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "log_level"

    invoke-static {p2, v0, p1, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    return-void
.end method
