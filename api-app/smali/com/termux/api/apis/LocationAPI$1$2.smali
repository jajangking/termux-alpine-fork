.class Lcom/termux/api/apis/LocationAPI$1$2;
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

    .line 95
    iput-object p1, p0, Lcom/termux/api/apis/LocationAPI$1$2;->this$0:Lcom/termux/api/apis/LocationAPI$1;

    iput-object p2, p0, Lcom/termux/api/apis/LocationAPI$1$2;->val$out:Landroid/util/JsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/LocationAPI$1$2;->val$out:Landroid/util/JsonWriter;

    invoke-static {p1, v0}, Lcom/termux/api/apis/LocationAPI;->locationToJson(Landroid/location/Location;Landroid/util/JsonWriter;)V

    .line 116
    iget-object p1, p0, Lcom/termux/api/apis/LocationAPI$1$2;->val$out:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    const-string v0, "LocationAPI"

    const-string v1, "Writing json"

    invoke-static {v0, v1, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
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
