.class public interface abstract Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/crash/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CrashHandlerClient"
.end annotation


# virtual methods
.method public abstract getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onPostLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method

.method public abstract onPreLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Z
.end method
