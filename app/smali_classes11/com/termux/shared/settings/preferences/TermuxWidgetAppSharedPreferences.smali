.class public Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
.super Ljava/lang/Object;
.source "TermuxWidgetAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxWidgetAppSharedPreferences"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
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

    .line 41
    const-string v0, "com.termux.widget"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "termuxTaskerPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    return-object v1

    .line 45
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
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

    .line 58
    const-string v0, "com.termux.widget"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "termuxTaskerPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 60
    const/4 v1, 0x0

    return-object v1

    .line 62
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static getGeneratedToken(Landroid/content/Context;)Ljava/lang/String;
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

    .line 78
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;

    move-result-object v0

    .line 79
    .local v0, "preferences":Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->getGeneratedToken()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
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

    .line 71
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "com.termux.widget_preferences"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
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

    .line 66
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    const-string v0, "com.termux.widget_preferences"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGeneratedToken()Ljava/lang/String;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "token"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :cond_0
    return-object v0
.end method

.method public getLogLevel(Z)I
    .locals 3
    .param p1, "readFromFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readFromFile"
        }
    .end annotation

    .line 95
    const/4 v0, 0x1

    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setLogLevel(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .param p3, "commitToFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevel",
            "commitToFile"
        }
    .end annotation

    .line 102
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 103
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    invoke-static {v0, v1, p2, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 104
    return-void
.end method
