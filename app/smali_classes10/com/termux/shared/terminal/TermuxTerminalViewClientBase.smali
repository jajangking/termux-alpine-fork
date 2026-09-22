.class public Lcom/termux/shared/terminal/TermuxTerminalViewClientBase;
.super Ljava/lang/Object;
.source "TermuxTerminalViewClientBase.java"

# interfaces
.implements Lcom/termux/view/TerminalViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .locals 0
    .param p1, "copyMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyMode"
        }
    .end annotation

    .line 43
    return-void
.end method

.method public isTerminalViewSelected()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
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

    .line 109
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
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

    .line 94
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
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

    .line 104
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
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

    .line 124
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
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

    .line 119
    invoke-static {p1, p2, p3}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
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

    .line 114
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
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

    .line 99
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .locals 1
    .param p1, "codePoint"    # I
    .param p2, "ctrlDown"    # Z
    .param p3, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codePoint",
            "ctrlDown",
            "session"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onEmulatorSet()V
    .locals 0

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "e",
            "session"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "e"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public onScale(F)F
    .locals 1
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 22
    return-void
.end method

.method public readAltKey()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public readControlKey()Z
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public readFnKey()Z
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public readShiftKey()Z
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public shouldEnforceCharBasedInput()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseCtrlSpaceWorkaround()Z
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method
