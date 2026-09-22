.class public final synthetic Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/UsbAPI$UsbService;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;->f$0:Lcom/termux/api/apis/UsbAPI$UsbService;

    iput-object p2, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;->f$0:Lcom/termux/api/apis/UsbAPI$UsbService;

    iget-object v1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/termux/api/apis/UsbAPI$UsbService;->$r8$lambda$XllhIyGZ0C4eA0TfYwC8-Q5KnPw(Lcom/termux/api/apis/UsbAPI$UsbService;Landroid/content/Intent;)V

    return-void
.end method
