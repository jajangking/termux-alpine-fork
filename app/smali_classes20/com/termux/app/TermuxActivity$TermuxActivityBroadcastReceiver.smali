.class Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TermuxActivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/TermuxActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 858
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 861
    if-nez p2, :cond_0

    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$000(Lcom/termux/app/TermuxActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0, p2}, Lcom/termux/app/TermuxActivity;->access$100(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V

    .line 866
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "com.termux.app.reload_style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.termux.app.request_storage_permissions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    const-string v0, "TermuxActivity"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 873
    :pswitch_0
    const-string v1, "Received intent to reload styling"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)V

    .line 875
    return-void

    .line 868
    :pswitch_1
    const-string v1, "Received intent to request storage permissions"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->ensureStoragePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    .line 871
    :cond_2
    return-void

    .line 879
    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a22d40f -> :sswitch_1
        -0x40cd2f36 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
