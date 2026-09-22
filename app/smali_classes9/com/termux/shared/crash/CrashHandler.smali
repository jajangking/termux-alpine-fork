.class public Lcom/termux/shared/crash/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CrashUtils"


# instance fields
.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mContext:Landroid/content/Context;

.field private final mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "crashHandlerClient"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    return-void
.end method

.method public static logCrash(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "crashHandlerClient",
            "thread",
            "throwable"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "reportString":Ljava/lang/StringBuilder;
    const-string v1, "## Crash Details\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Crash Thread"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/termux/shared/termux/AndroidUtils;->getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Crash Timestamp"

    invoke-static {v3, v2, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Crash Message"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "Stacktrace"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {p1, p0}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "appInfoMarkdownString":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/termux/shared/termux/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 73
    invoke-interface {p1, p0}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 73
    const-string v6, "crash log"

    invoke-static {v6, v1, v3, v4, v5}, Lcom/termux/shared/file/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 75
    .local v1, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CrashUtils"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void
.end method

.method public static setCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "crashHandlerClient"
        }
    .end annotation

    .line 41
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/termux/shared/crash/CrashHandler;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/termux/shared/crash/CrashHandler;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thread",
            "throwable"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    invoke-static {v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler;->logCrash(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 34
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
