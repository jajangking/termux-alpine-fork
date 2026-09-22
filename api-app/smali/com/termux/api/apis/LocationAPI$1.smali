.class Lcom/termux/api/apis/LocationAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/LocationAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
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

    .line 35
    iput-object p1, p0, Lcom/termux/api/apis/LocationAPI$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/LocationAPI$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 14

    .line 39
    const-string v0, "last"

    const-string v1, "updates"

    const-string v2, "once"

    iget-object v3, p0, Lcom/termux/api/apis/LocationAPI$1;->val$context:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/location/LocationManager;

    .line 41
    iget-object v3, p0, Lcom/termux/api/apis/LocationAPI$1;->val$intent:Landroid/content/Intent;

    const-string v5, "provider"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    const-string v5, "gps"

    if-nez v3, :cond_0

    move-object v3, v5

    .line 44
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "\' supported"

    const-string v8, "\' and \'"

    const-string v9, "\', \'"

    const-string v10, "\' - only \'"

    const-string v11, "API_ERROR"

    if-nez v6, :cond_1

    const-string v6, "network"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 45
    const-string v12, "passive"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported provider \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    .line 53
    :cond_1
    iget-object v5, p0, Lcom/termux/api/apis/LocationAPI$1;->val$intent:Landroid/content/Intent;

    const-string v6, "request"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v2

    :cond_2
    const/4 v6, -0x1

    .line 56
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 137
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported request \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_1

    .line 62
    :pswitch_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 63
    new-instance v0, Lcom/termux/api/apis/LocationAPI$1$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/api/apis/LocationAPI$1$1;-><init>(Lcom/termux/api/apis/LocationAPI$1;Landroid/util/JsonWriter;)V

    const/4 p1, 0x0

    invoke-virtual {v4, v3, v0, p1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 91
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_1

    .line 58
    :pswitch_1
    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 59
    invoke-static {v0, p1}, Lcom/termux/api/apis/LocationAPI;->locationToJson(Landroid/location/Location;Landroid/util/JsonWriter;)V

    goto :goto_1

    .line 94
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    new-instance v9, Lcom/termux/api/apis/LocationAPI$1$2;

    invoke-direct {v9, p0, p1}, Lcom/termux/api/apis/LocationAPI$1$2;-><init>(Lcom/termux/api/apis/LocationAPI$1;Landroid/util/JsonWriter;)V

    const/4 v10, 0x0

    const-wide/16 v6, 0x1388

    const/high16 v8, 0x42480000    # 50.0f

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 123
    new-instance v0, Lcom/termux/api/apis/LocationAPI$1$3;

    invoke-direct {v0, p0, p1}, Lcom/termux/api/apis/LocationAPI$1$3;-><init>(Lcom/termux/api/apis/LocationAPI$1;Landroid/os/Looper;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    invoke-static {}, Landroid/os/Looper;->loop()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xdf91f36 -> :sswitch_2
        0x329296 -> :sswitch_1
        0x341e81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
