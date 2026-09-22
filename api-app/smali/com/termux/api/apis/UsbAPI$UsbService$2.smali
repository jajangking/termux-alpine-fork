.class Lcom/termux/api/apis/UsbAPI$UsbService$2;
.super Lcom/termux/api/util/ResultReturner$WithAncillaryFd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/UsbAPI$UsbService;->runOpenAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/UsbAPI$UsbService;

.field final synthetic val$device:Landroid/hardware/usb/UsbDevice;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/termux/api/apis/UsbAPI$UsbService;ILandroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->this$0:Lcom/termux/api/apis/UsbAPI$UsbService;

    iput p2, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$status:I

    iput-object p3, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 4

    .line 177
    iget v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$status:I

    const-string v1, "UsbService"

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->this$0:Lcom/termux/api/apis/UsbAPI$UsbService;

    iget-object v2, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Lcom/termux/api/apis/UsbAPI$UsbService;->open(Landroid/hardware/usb/UsbDevice;)I

    move-result v0

    if-gez v0, :cond_0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open device \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Open device failed.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open device \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->sendFd(Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied to open device \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/api/apis/UsbAPI$UsbService$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "Permission denied.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 190
    const-string v0, "Permission request timeout.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_3
    :goto_0
    return-void
.end method
