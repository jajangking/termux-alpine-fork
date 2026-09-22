.class Lcom/termux/api/apis/LocationAPI$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/LocationAPI$1;->writeJson(Landroid/util/JsonWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/LocationAPI$1;

.field final synthetic val$out:Landroid/util/JsonWriter;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/LocationAPI$1;Landroid/util/JsonWriter;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/termux/api/apis/LocationAPI$1$1;->this$0:Lcom/termux/api/apis/LocationAPI$1;

    iput-object p2, p0, Lcom/termux/api/apis/LocationAPI$1$1;->val$out:Landroid/util/JsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/LocationAPI$1$1;->val$out:Landroid/util/JsonWriter;

    invoke-static {p1, v0}, Lcom/termux/api/apis/LocationAPI;->locationToJson(Landroid/location/Location;Landroid/util/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 85
    :try_start_1
    const-string v0, "LocationAPI"

    const-string v1, "Writing json"

    invoke-static {v0, v1, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 87
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 88
    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
