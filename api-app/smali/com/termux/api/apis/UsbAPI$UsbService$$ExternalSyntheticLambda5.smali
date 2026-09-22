.class public final synthetic Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;->f$0:I

    iput-object p2, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 0
    iget v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;->f$0:I

    iget-object v1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, v1, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->$r8$lambda$EiJeSv89sXWceYpJkmiKhlOtkCo(ILandroid/hardware/usb/UsbDevice;Ljava/io/PrintWriter;)V

    return-void
.end method
