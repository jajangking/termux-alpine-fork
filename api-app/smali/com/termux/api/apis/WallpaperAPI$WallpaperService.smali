.class public Lcom/termux/api/apis/WallpaperAPI$WallpaperService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/WallpaperAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperService"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CqFHgBN0OnOp9x3EYQNKCnUQwWQ(Ljava/lang/String;)Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->lambda$getWallpaperDownloader$0(Ljava/lang/String;)Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TAes7DlK2gRQuNSaCMgELAgtGW8(Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->lambda$postWallpaperResult$1(Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getWallpaperDownloader$0(Ljava/lang/String;)Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;
    .locals 3

    .line 93
    new-instance v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    invoke-direct {v0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;-><init>()V

    .line 96
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 100
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Content-Type"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string p0, "Invalid mime type! Must be an image resource!"

    iput-object p0, v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 109
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->wallpaper:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 112
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$postWallpaperResult$1(Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;Ljava/io/PrintWriter;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 138
    iget-object p0, p0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 142
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method


# virtual methods
.method protected getWallpaperDownloader(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method protected getWallpaperFromFile(Landroid/content/Intent;)V
    .locals 2

    .line 63
    new-instance v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    invoke-direct {v0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;-><init>()V

    .line 64
    const-string v1, "file"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->wallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "Error: Invalid image file!"

    iput-object v1, v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;

    .line 69
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->onWallpaperResult(Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    return-void
.end method

.method protected getWallpaperFromUrl(Landroid/content/Intent;)V
    .locals 5

    .line 73
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->getWallpaperDownloader(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    invoke-direct {v1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;-><init>()V

    .line 79
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->onWallpaperResult(Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 85
    :catch_0
    :try_start_1
    const-string v0, "Connection timed out!"

    iput-object v0, v1, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->onWallpaperResult(Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    goto :goto_1

    .line 83
    :catch_1
    :try_start_2
    const-string v0, "Unknown host!"

    iput-object v0, v1, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;

    goto :goto_0

    .line 81
    :catch_2
    const-string v0, "WallpaperService"

    const-string v2, "Wallpaper download interrupted"

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 87
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->onWallpaperResult(Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    .line 88
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 47
    const-string p2, "WallpaperService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string p2, "file"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->getWallpaperFromFile(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :cond_0
    const-string p2, "url"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->getWallpaperFromUrl(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_1
    new-instance p2, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;

    invoke-direct {p2}, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;-><init>()V

    .line 55
    const-string p3, "No args supplied for WallpaperAPI!"

    iput-object p3, p2, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->postWallpaperResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method protected onWallpaperResult(Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V
    .locals 6

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 123
    iget-object v2, p2, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->wallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 125
    :try_start_0
    const-string v2, "lockscreen"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 126
    :goto_0
    iget-object v4, p2, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->wallpaper:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    .line 127
    const-string v1, "Wallpaper set successfully!"

    iput-object v1, p2, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;->error:Ljava/lang/String;

    .line 132
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService;->postWallpaperResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    return-void
.end method

.method protected postWallpaperResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/termux/api/apis/WallpaperAPI$WallpaperService$$ExternalSyntheticLambda1;-><init>(Lcom/termux/api/apis/WallpaperAPI$WallpaperResult;)V

    invoke-static {p1, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
