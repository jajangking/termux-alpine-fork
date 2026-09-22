.class public Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
.super Ljava/lang/Object;
.source "TermuxTerminalSessionClientBase.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSessionClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getTerminalCursorStyle()Ljava/lang/Integer;
    .locals 1

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 70
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 55
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 65
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public logStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "e"
        }
    .end annotation

    .line 85
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "e"
        }
    .end annotation

    .line 80
    invoke-static {p1, p2, p3}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 75
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 60
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 34
    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "changedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changedSession"
        }
    .end annotation

    .line 38
    return-void
.end method

.method public onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "text"
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 30
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "finishedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "finishedSession"
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onTerminalCursorStateChange(Z)V
    .locals 0
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 42
    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "changedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changedSession"
        }
    .end annotation

    .line 14
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "updatedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updatedSession"
        }
    .end annotation

    .line 18
    return-void
.end method
