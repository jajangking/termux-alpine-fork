.class public Lcom/termux/shared/terminal/io/BellHandler;
.super Ljava/lang/Object;
.source "BellHandler.java"


# static fields
.field private static final DURATION:J = 0x32L

.field private static final LOG_TAG:Ljava/lang/String; = "BellHandler"

.field private static final MIN_PAUSE:J = 0x96L

.field private static instance:Lcom/termux/shared/terminal/io/BellHandler;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final bellRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private lastBell:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/shared/terminal/io/BellHandler;->instance:Lcom/termux/shared/terminal/io/BellHandler;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/termux/shared/terminal/io/BellHandler;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Vibrator;)V
    .locals 2
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vibrator"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/shared/terminal/io/BellHandler;->handler:Landroid/os/Handler;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/termux/shared/terminal/io/BellHandler;->lastBell:J

    .line 39
    new-instance v0, Lcom/termux/shared/terminal/io/BellHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/terminal/io/BellHandler$1;-><init>(Lcom/termux/shared/terminal/io/BellHandler;Landroid/os/Vibrator;)V

    iput-object v0, p0, Lcom/termux/shared/terminal/io/BellHandler;->bellRunnable:Ljava/lang/Runnable;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/termux/shared/terminal/io/BellHandler;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/termux/shared/terminal/io/BellHandler;->instance:Lcom/termux/shared/terminal/io/BellHandler;

    if-nez v0, :cond_1

    .line 21
    sget-object v0, Lcom/termux/shared/terminal/io/BellHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/termux/shared/terminal/io/BellHandler;->instance:Lcom/termux/shared/terminal/io/BellHandler;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/termux/shared/terminal/io/BellHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-direct {v1, v2}, Lcom/termux/shared/terminal/io/BellHandler;-><init>(Landroid/os/Vibrator;)V

    sput-object v1, Lcom/termux/shared/terminal/io/BellHandler;->instance:Lcom/termux/shared/terminal/io/BellHandler;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/termux/shared/terminal/io/BellHandler;->instance:Lcom/termux/shared/terminal/io/BellHandler;

    return-object v0
.end method

.method private now()J
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized doBell()V
    .locals 10

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/BellHandler;->now()J

    move-result-wide v0

    .line 61
    .local v0, "now":J
    iget-wide v2, p0, Lcom/termux/shared/terminal/io/BellHandler;->lastBell:J

    sub-long v2, v0, v2

    .line 63
    .local v2, "timeSinceLastBell":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const-wide/16 v4, 0x96

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 67
    iget-object v6, p0, Lcom/termux/shared/terminal/io/BellHandler;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/termux/shared/terminal/io/BellHandler;->bellRunnable:Ljava/lang/Runnable;

    sub-long v8, v4, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    iget-wide v6, p0, Lcom/termux/shared/terminal/io/BellHandler;->lastBell:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/termux/shared/terminal/io/BellHandler;->lastBell:J

    goto :goto_0

    .line 71
    .end local p0    # "this":Lcom/termux/shared/terminal/io/BellHandler;
    :cond_1
    iget-object v4, p0, Lcom/termux/shared/terminal/io/BellHandler;->bellRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 72
    iput-wide v0, p0, Lcom/termux/shared/terminal/io/BellHandler;->lastBell:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "now":J
    .end local v2    # "timeSinceLastBell":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
