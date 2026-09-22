.class public Lcom/termux/shared/crash/TermuxCrashUtils;
.super Ljava/lang/Object;
.source "TermuxCrashUtils.java"

# interfaces
.implements Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCrashHandler(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/termux/shared/crash/TermuxCrashUtils;

    invoke-direct {v0}, Lcom/termux/shared/crash/TermuxCrashUtils;-><init>()V

    invoke-static {p0, v0}, Lcom/termux/shared/crash/CrashHandler;->setCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
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
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;
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

    .line 23
    const-string v0, "/data/data/com.termux.alpine/files/home/crash_log.md"

    return-object v0
.end method
