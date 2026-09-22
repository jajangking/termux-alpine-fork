.class public Lcom/termux/shared/crash/CrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

.field private final mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mIsDefaultHandler:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/shared/crash/CrashHandler;->mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-boolean p3, p0, Lcom/termux/shared/crash/CrashHandler;->mIsDefaultHandler:Z

    return-void
.end method

.method public static setCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V
    .locals 3

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/crash/CrashHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/termux/shared/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public logCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->onPreLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler;->logCrashToFile(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->onPostLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public logCrashToFile(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "## Crash Details\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Crash Thread"

    const-string v3, "-"

    invoke-static {v2, p3, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Crash Timestamp"

    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p3, "\n\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Crash Message"

    invoke-static {v2, v1, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Stacktrace"

    invoke-static {p4}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p2, p1}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 101
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 110
    invoke-interface {p2, p1}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 110
    const-string v0, "crash log"

    invoke-static {v0, p1, p2, p3, p4}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    const-string p2, "CrashUtils"

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uncaughtException() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/termux/shared/crash/CrashHandler;->logCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 40
    iget-boolean v0, p0, Lcom/termux/shared/crash/CrashHandler;->mIsDefaultHandler:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
