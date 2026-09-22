.class public interface abstract Lcom/termux/view/TerminalViewClient;
.super Ljava/lang/Object;
.source "TerminalViewClient.java"


# virtual methods
.method public abstract copyModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyMode"
        }
    .end annotation
.end method

.method public abstract isTerminalViewSelected()Z
.end method

.method public abstract logDebug(Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract logError(Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract logInfo(Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract logStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
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
.end method

.method public abstract logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
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
.end method

.method public abstract logVerbose(Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract logWarn(Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
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
.end method

.method public abstract onEmulatorSet()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
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
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
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
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract onScale(F)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method

.method public abstract readAltKey()Z
.end method

.method public abstract readControlKey()Z
.end method

.method public abstract readFnKey()Z
.end method

.method public abstract readShiftKey()Z
.end method

.method public abstract shouldBackButtonBeMappedToEscape()Z
.end method

.method public abstract shouldEnforceCharBasedInput()Z
.end method

.method public abstract shouldUseCtrlSpaceWorkaround()Z
.end method
