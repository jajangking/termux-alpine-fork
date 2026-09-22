.class public Lcom/termux/shared/shell/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "executable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executable"
        }
    .end annotation

    .line 26
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 28
    .local v0, "lastSlash":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getPid(Ljava/lang/Process;)I
    .locals 3
    .param p0, "p"    # Ljava/lang/Process;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 14
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 16
    return v2

    .line 18
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 19
    nop

    .end local p0    # "p":Ljava/lang/Process;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .restart local p0    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1
.end method

.method public static getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "terminalSession"    # Lcom/termux/terminal/TerminalSession;
    .param p1, "linesJoined"    # Z
    .param p2, "trim"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terminalSession",
            "linesJoined",
            "trim"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    .line 35
    .local v1, "terminalEmulator":Lcom/termux/terminal/TerminalEmulator;
    if-nez v1, :cond_1

    return-object v0

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v2

    .line 38
    .local v2, "terminalBuffer":Lcom/termux/terminal/TerminalBuffer;
    if-nez v2, :cond_2

    return-object v0

    .line 42
    :cond_2
    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptTextWithFullLinesJoined()Ljava/lang/String;

    move-result-object v3

    .local v3, "transcriptText":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v3    # "transcriptText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptTextWithoutJoinedLines()Ljava/lang/String;

    move-result-object v3

    .line 47
    .restart local v3    # "transcriptText":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_4

    return-object v0

    .line 49
    :cond_4
    if-eqz p2, :cond_5

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 52
    :cond_5
    return-object v3
.end method
