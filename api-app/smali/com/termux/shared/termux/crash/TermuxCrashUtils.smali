.class public Lcom/termux/shared/termux/crash/TermuxCrashUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;
    }
.end annotation


# instance fields
.field private final mType:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;


# direct methods
.method constructor <init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->mType:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    return-void
.end method

.method public static setCrashHandler(Landroid/content/Context;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;

    sget-object v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->CAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;-><init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V

    invoke-static {p0, v0}, Lcom/termux/shared/crash/CrashHandler;->setCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V

    return-void
.end method


# virtual methods
.method public getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-static {p1, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 121
    const-string p1, "/data/data/com.termux/files/home/crash_log.md"

    return-object p1
.end method

.method public onPostLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-static {p1}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 97
    const-string p3, "TermuxCrashUtils"

    if-nez p1, :cond_1

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring call to onPostLogCrash() since failed to get \"com.termux\" package context from \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" context"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->UNCAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    iget-object v1, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->mType:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.termux.alpine"

    if-eqz v0, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.termux.app.TermuxActivity that \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" app crashed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending broadcast to notify "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.termux.app.notify_app_crash"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPreLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
