.class public Lcom/termux/shared/shell/StreamGobbler;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;,
        Lcom/termux/shared/shell/StreamGobbler$OnLineListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StreamGobbler"

.field private static threadCounter:I


# instance fields
.field private volatile active:Z

.field private volatile calledOnClose:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

.field private final listWriter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogLevel:Ljava/lang/Integer;

.field private final reader:Ljava/io/BufferedReader;

.field private final shell:Ljava/lang/String;

.field private final streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

.field private final stringWriter:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/termux/shared/shell/StreamGobbler;->threadCounter:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/termux/shared/shell/StreamGobbler$OnLineListener;Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "onLineListener"    # Lcom/termux/shared/shell/StreamGobbler$OnLineListener;
    .param p4, "onStreamClosedListener"    # Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;
    .param p5, "logLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shell",
            "inputStream",
            "onLineListener",
            "onStreamClosedListener",
            "logLevel"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/termux/shared/shell/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 179
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Lcom/termux/shared/shell/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 181
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 182
    iput-object p4, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    .line 185
    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    .line 186
    iput-object p3, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    .line 188
    iput-object p5, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "outputString"    # Ljava/lang/StringBuilder;
    .param p4, "logLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shell",
            "inputStream",
            "outputString",
            "logLevel"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/termux/shared/shell/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 147
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/termux/shared/shell/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 149
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    .line 152
    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    .line 153
    iput-object p3, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    .line 154
    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    .line 156
    iput-object p4, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p4, "logLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shell",
            "inputStream",
            "outputList",
            "logLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 114
    .local p3, "outputList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/termux/shared/shell/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 115
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/termux/shared/shell/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 117
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    .line 120
    iput-object p3, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    .line 121
    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    .line 122
    iput-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    .line 124
    iput-object p4, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    .line 125
    return-void
.end method

.method private static incThreadCounter()I
    .locals 3

    .line 43
    const-class v0, Lcom/termux/shared/shell/StreamGobbler;

    monitor-enter v0

    .line 44
    :try_start_0
    sget v1, Lcom/termux/shared/shell/StreamGobbler;->threadCounter:I

    move v2, v1

    .line 45
    .local v2, "ret":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/termux/shared/shell/StreamGobbler;->threadCounter:I

    .line 46
    monitor-exit v0

    return v2

    .line 47
    .end local v2    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method conditionalJoin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    return-void

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/shell/StreamGobbler;->join()V

    .line 324
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOnLineListener()Lcom/termux/shared/shell/StreamGobbler$OnLineListener;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeGobbling()V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    if-nez v0, :cond_0

    .line 248
    monitor-enter p0

    .line 249
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 251
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 10

    .line 193
    const-string v0, "Termux"

    .line 194
    .local v0, "defaultLogTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v1

    .line 195
    .local v1, "loggingEnabled":Z
    if-eqz v1, :cond_0

    .line 196
    const-string v2, "StreamGobbler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using custom log level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current log level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 203
    if-eqz v1, :cond_1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Command"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "[%s] %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    aput-object v9, v7, v8

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/termux/shared/logger/Logger;->logVerboseForce(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    if-eqz v3, :cond_4

    invoke-interface {v3, v4}, Lcom/termux/shared/shell/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    .line 209
    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    if-nez v3, :cond_0

    .line 210
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    const-wide/16 v5, 0x80

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    goto :goto_1

    .line 216
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 213
    :catch_0
    move-exception v3

    .line 216
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "defaultLogTag":Ljava/lang/String;
    .end local v1    # "loggingEnabled":Z
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 225
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "defaultLogTag":Ljava/lang/String;
    .restart local v1    # "loggingEnabled":Z
    :cond_5
    goto :goto_3

    .line 219
    :catch_1
    move-exception v3

    .line 221
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    if-eqz v4, :cond_6

    .line 222
    iput-boolean v2, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 223
    iget-object v4, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    invoke-interface {v4}, Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 232
    goto :goto_4

    .line 230
    :catch_2
    move-exception v3

    .line 234
    :goto_4
    iget-boolean v3, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    if-nez v3, :cond_7

    .line 235
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    if-eqz v3, :cond_7

    .line 236
    iput-boolean v2, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 237
    iget-object v2, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    invoke-interface {v2}, Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    .line 240
    :cond_7
    return-void
.end method

.method public suspendGobbling()V
    .locals 1

    .line 262
    monitor-enter p0

    .line 263
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForSuspend()V
    .locals 2

    .line 275
    monitor-enter p0

    .line 276
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 278
    const-wide/16 v0, 0x20

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_1
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_1

    .line 283
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
