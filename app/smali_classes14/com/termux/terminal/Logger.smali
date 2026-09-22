.class public Lcom/termux/terminal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 51
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/termux/terminal/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    if-nez p1, :cond_2

    .line 56
    return-object p0

    .line 58
    :cond_2
    invoke-static {p1}, Lcom/termux/terminal/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 62
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 67
    .local v0, "stackTraceString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 68
    .local v1, "errors":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 70
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 71
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 72
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "errors":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static logDebug(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "logTag",
            "message"
        }
    .end annotation

    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/termux/terminal/TerminalSessionClient;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void
.end method

.method public static logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "logTag",
            "message"
        }
    .end annotation

    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/termux/terminal/TerminalSessionClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    return-void
.end method

.method public static logInfo(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "logTag",
            "message"
        }
    .end annotation

    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p0, p1, p2}, Lcom/termux/terminal/TerminalSessionClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void
.end method

.method public static logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 47
    invoke-static {p2, p3}, Lcom/termux/terminal/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static logVerbose(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "logTag",
            "message"
        }
    .end annotation

    .line 40
    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0, p1, p2}, Lcom/termux/terminal/TerminalSessionClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void
.end method

.method public static logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "logTag",
            "message"
        }
    .end annotation

    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0, p1, p2}, Lcom/termux/terminal/TerminalSessionClient;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-void
.end method
