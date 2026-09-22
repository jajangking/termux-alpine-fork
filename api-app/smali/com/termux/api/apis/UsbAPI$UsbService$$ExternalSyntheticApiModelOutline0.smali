.class public abstract synthetic Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
