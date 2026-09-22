.class public Lcom/termux/shared/shell/StreamGobbler;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static threadCounter:I


# instance fields
.field private volatile active:Z

.field private volatile calledOnClose:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final listWriter:Ljava/util/List;

.field private final mLogLevel:Ljava/lang/Integer;

.field private final reader:Ljava/io/BufferedReader;

.field private final shell:Ljava/lang/String;

.field private final stringWriter:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/termux/shared/shell/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 147
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/termux/shared/shell/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 149
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    .line 153
    iput-object p3, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    .line 156
    iput-object p4, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

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

    add-int/lit8 v2, v1, 0x1

    .line 45
    sput v2, Lcom/termux/shared/shell/StreamGobbler;->threadCounter:I

    .line 46
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 193
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getDefaultLogTag()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v2, "StreamGobbler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using custom log level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/termux/shared/shell/StreamGobbler;->mLogLevel:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", current log level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Command"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "[%s] %s"

    iget-object v6, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logVerboseForce(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    if-nez v2, :cond_0

    .line 210
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x80

    .line 212
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 216
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 229
    :catch_1
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-void
.end method
