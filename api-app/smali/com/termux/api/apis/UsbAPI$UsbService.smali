.class public Lcom/termux/api/apis/UsbAPI$UsbService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/UsbAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbService"
.end annotation


# instance fields
.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static synthetic $r8$lambda$3E7KVtmUoqFYj-rrDdeBUF4rimA(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/UsbAPI$UsbService;->lambda$onStartCommand$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4rbeDIeQqRI510_1Uuh69NUNhkc(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->lambda$runOpenAction$4(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiJeSv89sXWceYpJkmiKhlOtkCo(ILandroid/hardware/usb/UsbDevice;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/UsbAPI$UsbService;->lambda$runPermissionAction$2(ILandroid/hardware/usb/UsbDevice;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MC0b17atsTH4TcgWRVbfdQRRk64(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/UsbAPI$UsbService;->lambda$getDevice$5(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XllhIyGZ0C4eA0TfYwC8-Q5KnPw(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->lambda$runPermissionAction$3(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6ReSW6H_ORgC16YS5dNkRZChOM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->lambda$onStartCommand$1(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/termux/api/apis/UsbAPI$UsbService;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private static synthetic lambda$getDevice$5(Ljava/io/PrintWriter;)V
    .locals 1

    .line 222
    const-string v0, "No such device.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method private static synthetic lambda$onStartCommand$0(Ljava/io/PrintWriter;)V
    .locals 1

    .line 83
    const-string v0, "Missing action\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method private static synthetic lambda$onStartCommand$1(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid action: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method private synthetic lambda$runOpenAction$4(Landroid/content/Intent;)V
    .locals 3

    .line 166
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running \'open\' action for device \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/apis/UsbAPI$UsbService;->getDevice(Landroid/content/Intent;Ljava/lang/String;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/apis/UsbAPI$UsbService;->checkAndRequestUsbDevicePermission(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)I

    move-result v1

    .line 174
    new-instance v2, Lcom/termux/api/apis/UsbAPI$UsbService$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/api/apis/UsbAPI$UsbService$2;-><init>(Lcom/termux/api/apis/UsbAPI$UsbService;ILandroid/hardware/usb/UsbDevice;)V

    invoke-static {p0, p1, v2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static synthetic lambda$runPermissionAction$2(ILandroid/hardware/usb/UsbDevice;Ljava/io/PrintWriter;)V
    .locals 3

    .line 149
    const-string v0, "\""

    const-string v1, "UsbService"

    if-nez p0, :cond_0

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission granted for device \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string p0, "Permission granted.\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied for device \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string p0, "Permission denied.\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    .line 156
    const-string p0, "Permission request timeout.\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$runPermissionAction$3(Landroid/content/Intent;)V
    .locals 3

    .line 140
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running \'permission\' action for device \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/apis/UsbAPI$UsbService;->getDevice(Landroid/content/Intent;Ljava/lang/String;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/apis/UsbAPI$UsbService;->checkAndRequestUsbDevicePermission(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)I

    move-result v1

    .line 148
    new-instance v2, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, v0}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;-><init>(ILandroid/hardware/usb/UsbDevice;)V

    invoke-static {p0, p1, v2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method


# virtual methods
.method protected checkAndRequestUsbDevicePermission(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)I
    .locals 10

    .line 236
    invoke-virtual {p0, p2}, Lcom/termux/api/apis/UsbAPI$UsbService;->checkUsbDevicePermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission check result for device \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 242
    :cond_0
    const-string v0, "request"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting permission for device \""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 249
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 251
    new-instance v4, Lcom/termux/api/apis/UsbAPI$UsbService$3;

    invoke-direct {v4, p0, p2, v3, p1}, Lcom/termux/api/apis/UsbAPI$UsbService$3;-><init>(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 264
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    .line 266
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.termux.api.USB_PERMISSION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v9, 0x2000000

    .line 293
    invoke-static {p0, v1, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v6, 0x21

    if-lt v8, v6, :cond_2

    .line 300
    :try_start_0
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-static {p0, v4, v6, v7}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticApiModelOutline0;->m(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 304
    :cond_2
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    :goto_0
    invoke-virtual {v5, p2, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {p1, v5, v6, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission request time out for device \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" after 30s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :try_start_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, -0x1

    return p1

    :catch_1
    move-exception p1

    goto :goto_1

    .line 319
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    .line 322
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr p1, v0

    return p1

    :catchall_1
    move-exception p1

    const/4 v4, 0x0

    goto :goto_2

    .line 329
    :cond_4
    :try_start_5
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return v0

    .line 316
    :goto_1
    :try_start_6
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz v4, :cond_5

    .line 329
    :try_start_7
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 334
    :catch_3
    :cond_5
    throw p1
.end method

.method protected checkUsbDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 231
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 232
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    return p1
.end method

.method protected getDevice(Landroid/content/Intent;Ljava/lang/String;)Landroid/hardware/usb/UsbDevice;
    .locals 3

    .line 216
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 218
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find device \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UsbService"

    invoke-static {v1, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance p2, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    :cond_0
    return-object v0
.end method

.method protected listDevices(Landroid/util/JsonWriter;)V
    .locals 2

    .line 127
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 128
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 130
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 71
    const-string v0, "UsbService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    const-string v0, "UsbService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x2

    .line 78
    const-string p3, "onStartCommand"

    const-string v0, "UsbService"

    invoke-static {v0, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 82
    const-string v1, "No action passed"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    :cond_0
    if-eqz p3, :cond_4

    const/4 v1, -0x1

    .line 87
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "open"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_0

    :sswitch_1
    const-string v2, "list"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "permission"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_1

    .line 95
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->runOpenAction(Landroid/content/Intent;)V

    goto :goto_1

    .line 89
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->runListAction(Landroid/content/Intent;)V

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->runPermissionAction(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1eda3a31 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x34264a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected open(Landroid/hardware/usb/UsbDevice;)I
    .locals 2

    .line 198
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 200
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return v1

    .line 209
    :cond_1
    sget-object v1, Lcom/termux/api/apis/UsbAPI;->openDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method protected runListAction(Landroid/content/Intent;)V
    .locals 2

    .line 116
    const-string v0, "UsbService"

    const-string v1, "Running \'list\' usb devices action"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/termux/api/apis/UsbAPI$UsbService$1;

    invoke-direct {v0, p0}, Lcom/termux/api/apis/UsbAPI$UsbService$1;-><init>(Lcom/termux/api/apis/UsbAPI$UsbService;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method protected runOpenAction(Landroid/content/Intent;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda4;-><init>(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected runPermissionAction(Landroid/content/Intent;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;-><init>(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
