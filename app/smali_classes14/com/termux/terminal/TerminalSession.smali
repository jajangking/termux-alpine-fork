.class public final Lcom/termux/terminal/TerminalSession;
.super Lcom/termux/terminal/TerminalOutput;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalSession$MainThreadHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TerminalSession"

.field private static final MSG_NEW_INPUT:I = 0x1

.field private static final MSG_PROCESS_EXITED:I = 0x4


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field private final mCwd:Ljava/lang/String;

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field private final mEnv:[Ljava/lang/String;

.field public final mHandle:Ljava/lang/String;

.field final mMainThreadHandler:Landroid/os/Handler;

.field final mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

.field public mSessionName:Ljava/lang/String;

.field mShellExitStatus:I

.field private final mShellPath:Ljava/lang/String;

.field mShellPid:I

.field private mTerminalFileDescriptor:I

.field final mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

.field private final mTranscriptRows:Ljava/lang/Integer;

.field private final mUtf8InputBuffer:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2
    .param p1, "shellPath"    # Ljava/lang/String;
    .param p2, "cwd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "env"    # [Ljava/lang/String;
    .param p5, "transcriptRows"    # Ljava/lang/Integer;
    .param p6, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shellPath",
            "cwd",
            "args",
            "env",
            "transcriptRows",
            "client"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/termux/terminal/TerminalOutput;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 49
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    .line 71
    new-instance v0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/termux/terminal/TerminalSession$MainThreadHandler;-><init>(Lcom/termux/terminal/TerminalSession;)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/termux/terminal/TerminalSession;->mTranscriptRows:Ljava/lang/Integer;

    .line 88
    iput-object p6, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 89
    return-void
.end method

.method private static wrapFileDescriptor(ILcom/termux/terminal/TerminalSessionClient;)Ljava/io/FileDescriptor;
    .locals 5
    .param p0, "fileDescriptor"    # I
    .param p1, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileDescriptor",
            "client"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 321
    .local v0, "result":Ljava/io/FileDescriptor;
    const/4 v1, 0x1

    :try_start_0
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .local v2, "descriptorField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 328
    .end local v2    # "descriptorField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    .line 322
    :catch_2
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    :try_start_1
    const-class v3, Ljava/io/FileDescriptor;

    const-string v4, "fd"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    .line 326
    .local v2, "descriptorField":Ljava/lang/reflect/Field;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 327
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 331
    .end local v2    # "descriptorField":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 328
    :catch_3
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "TerminalSession"

    const-string v4, "Error accessing FileDescriptor#descriptor private field"

    invoke-static {p1, v3, v4, v2}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method


# virtual methods
.method cleanupResources(I)V
    .locals 1
    .param p1, "exitStatus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exitStatus"
        }
    .end annotation

    .line 246
    monitor-enter p0

    .line 247
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 248
    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 253
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 254
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0}, Lcom/termux/terminal/JNI;->close(I)V

    .line 255
    return-void

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finishIfRunning()V
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/system/ErrnoException;
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sending SIGKILL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TerminalSession"

    invoke-static {v1, v3, v2}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCwd()Ljava/lang/String;
    .locals 6

    .line 297
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 298
    return-object v1

    .line 301
    :cond_0
    :try_start_0
    const-string v3, "/proc/%s/cwd/"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "cwdSymlink":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "outputPath":Ljava/lang/String;
    move-object v3, v2

    .line 304
    .local v3, "outputPathWithTrailingSlash":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 307
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    .line 308
    return-object v2

    .line 312
    .end local v0    # "cwdSymlink":Ljava/lang/String;
    .end local v2    # "outputPath":Ljava/lang/String;
    .end local v3    # "outputPathWithTrailingSlash":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    const-string v3, "TerminalSession"

    const-string v4, "Error getting current directory"

    invoke-static {v2, v3, v4, v0}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public getEmulator()Lcom/termux/terminal/TerminalEmulator;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    return-object v0
.end method

.method public declared-synchronized getExitStatus()I
    .locals 1

    monitor-enter p0

    .line 268
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 268
    .end local p0    # "this":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPid()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public initializeEmulator(IIII)V
    .locals 10
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "cellWidthPixels"    # I
    .param p4, "cellHeightPixels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "columns",
            "rows",
            "cellWidthPixels",
            "cellHeightPixels"
        }
    .end annotation

    .line 124
    new-instance v8, Lcom/termux/terminal/TerminalEmulator;

    iget-object v6, p0, Lcom/termux/terminal/TerminalSession;->mTranscriptRows:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/termux/terminal/TerminalEmulator;-><init>(Lcom/termux/terminal/TerminalOutput;IIIILjava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V

    iput-object v8, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 127
    .local v0, "processId":[I
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    move-object v5, v0

    move v6, p2

    move v7, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v1 .. v9}, Lcom/termux/terminal/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IIIII)I

    move-result v1

    iput v1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    .line 128
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 130
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-static {v1, v2}, Lcom/termux/terminal/TerminalSession;->wrapFileDescriptor(ILcom/termux/terminal/TerminalSessionClient;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 132
    .local v1, "terminalFileDescriptorWrapped":Ljava/io/FileDescriptor;
    new-instance v2, Lcom/termux/terminal/TerminalSession$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TermSessionInputReader[pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/termux/terminal/TerminalSession$1;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 147
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession$1;->start()V

    .line 149
    new-instance v2, Lcom/termux/terminal/TerminalSession$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TermSessionOutputWriter[pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/termux/terminal/TerminalSession$2;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 163
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession$2;->start()V

    .line 165
    new-instance v2, Lcom/termux/terminal/TerminalSession$3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TermSessionWaiter[pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/termux/terminal/TerminalSession$3;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession$3;->start()V

    .line 173
    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 2

    monitor-enter p0

    .line 263
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 263
    .end local p0    # "this":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyScreenUpdate()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    .line 225
    return-void
.end method

.method public onBell()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onBell(Lcom/termux/terminal/TerminalSession;)V

    .line 284
    return-void
.end method

.method public onColorsChanged()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    .line 289
    return-void
.end method

.method public onCopyTextToClipboard(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0, p1}, Lcom/termux/terminal/TerminalSessionClient;->onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onPasteTextFromClipboard()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V

    .line 279
    return-void
.end method

.method public reset()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 230
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 231
    return-void
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldTitle"    # Ljava/lang/String;
    .param p2, "newTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldTitle",
            "newTitle"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    .line 260
    return-void
.end method

.method public updateSize(IIII)V
    .locals 1
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "cellWidthPixels"    # I
    .param p4, "cellHeightPixels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "columns",
            "rows",
            "cellWidthPixels",
            "cellHeightPixels"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalSession;->initializeEmulator(IIII)V

    goto :goto_0

    .line 107
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1, p3, p4}, Lcom/termux/terminal/JNI;->setPtyWindowSize(IIIII)V

    .line 108
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalEmulator;->resize(IIII)V

    .line 110
    :goto_0
    return-void
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 1
    .param p1, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 98
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalEmulator;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    .line 100
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "count"
        }
    .end annotation

    .line 178
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    .line 179
    :cond_0
    return-void
.end method

.method public writeCodePoint(ZI)V
    .locals 4
    .param p1, "prependEscape"    # Z
    .param p2, "codePoint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prependEscape",
            "codePoint"
        }
    .end annotation

    .line 183
    const v0, 0x10ffff

    if-gt p2, v0, :cond_5

    const v0, 0xd800

    if-lt p2, v0, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_5

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 189
    .local v0, "bufferPosition":I
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .local v2, "bufferPosition":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    move v0, v2

    .line 191
    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    :cond_1
    const/16 v1, 0x7f

    if-gt p2, v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    goto :goto_0

    .line 193
    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    :cond_2
    const/16 v1, 0x7ff

    if-gt p2, v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 197
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    and-int/lit8 v3, p2, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v2, v0

    goto :goto_0

    .line 198
    :cond_3
    const v1, 0xffff

    if-gt p2, v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    shr-int/lit8 v3, p2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 202
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 204
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    and-int/lit8 v3, p2, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_0

    .line 207
    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    :cond_4
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    shr-int/lit8 v3, p2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 209
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    shr-int/lit8 v3, p2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 211
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 213
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "bufferPosition":I
    .restart local v0    # "bufferPosition":I
    and-int/lit8 v3, p2, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v2, v0

    .line 215
    .end local v0    # "bufferPosition":I
    .restart local v2    # "bufferPosition":I
    :goto_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/termux/terminal/TerminalSession;->write([BII)V

    .line 216
    return-void

    .line 185
    .end local v2    # "bufferPosition":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
