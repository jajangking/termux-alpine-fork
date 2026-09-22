.class public Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;
.super Ljava/lang/Object;
.source "TermuxTaskerAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxTaskerAppSharedPreferences"


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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;
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

    .line 39
    const-string v0, "com.termux.tasker"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "termuxTaskerPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    return-object v1

    .line 43
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;
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

    .line 56
    const-string v0, "com.termux.tasker"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "termuxTaskerPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;-><init>(Landroid/content/Context;)V

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

    .line 69
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "com.termux.tasker_preferences"

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

    .line 64
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.termux.tasker_preferences"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastPendingIntentRequestCode()I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_pending_intent_request_code"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
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

    .line 76
    const/4 v0, 0x1

    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setLastPendingIntentRequestCode(I)V
    .locals 3
    .param p1, "lastPendingIntentRequestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPendingIntentRequestCode"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_pending_intent_request_code"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 95
    return-void
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

    .line 83
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 84
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    invoke-static {v0, v1, p2, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 85
    return-void
.end method
