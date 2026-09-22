.class Lcom/termux/api/apis/UsbAPI$UsbService$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/UsbAPI$UsbService;->checkAndRequestUsbDevicePermission(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/UsbAPI$UsbService;

.field final synthetic val$device:Landroid/hardware/usb/UsbDevice;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->this$0:Lcom/termux/api/apis/UsbAPI$UsbService;

    iput-object p2, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->val$device:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.termux.api.USB_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "permission"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission request result for device \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 259
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iget-object p1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
