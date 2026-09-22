.class public Lcom/termux/api/TermuxAPIApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static setLogConfig(Landroid/content/Context;Z)V
    .locals 3

    .line 37
    const-string v0, "[: ]"

    const-string v1, ""

    const-string v2, "Termux:API"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->setDefaultLogTag(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->getLogLevel(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAPIAppSharedPreferences;->setLogLevel(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    const-string v0, "TermuxAPIApplication"

    const-string v1, "AppInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->setCrashHandler(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lcom/termux/api/util/ResultReturner;->setContext(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 31
    invoke-static {v0, v1}, Lcom/termux/api/TermuxAPIApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 33
    invoke-static {p0}, Lcom/termux/api/SocketListener;->createSocketListener(Landroid/app/Application;)V

    return-void
.end method
