.class public Lcom/termux/app/TermuxApplication;
.super Landroid/app/Application;
.source "TermuxApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private setLogLevel()V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/termux/app/TermuxApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "preferences":Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getLogLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setLogLevel(Landroid/content/Context;I)V

    .line 26
    const-string v1, "Starting Application"

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/termux/shared/crash/TermuxCrashUtils;->setCrashHandler(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/termux/app/TermuxApplication;->setLogLevel()V

    .line 19
    return-void
.end method
