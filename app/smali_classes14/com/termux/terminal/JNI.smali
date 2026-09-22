.class final Lcom/termux/terminal/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "termux"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileDescriptor"
        }
    .end annotation
.end method

.method public static native createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IIIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmd",
            "cwd",
            "args",
            "envVars",
            "processId",
            "rows",
            "columns",
            "cellWidth",
            "cellHeight"
        }
    .end annotation
.end method

.method public static native setPtyWindowSize(IIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "rows",
            "cols",
            "cellWidth",
            "cellHeight"
        }
    .end annotation
.end method

.method public static native waitFor(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processId"
        }
    .end annotation
.end method
