.class Lcom/termux/api/apis/WifiAPI$3;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/WifiAPI;->onReceiveWifiEnable(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/termux/api/apis/WifiAPI$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/WifiAPI$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3

    .line 131
    iget-object p1, p0, Lcom/termux/api/apis/WifiAPI$3;->val$context:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 132
    iget-object v0, p0, Lcom/termux/api/apis/WifiAPI$3;->val$intent:Landroid/content/Intent;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
