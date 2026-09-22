.class public abstract Lcom/termux/api/apis/LocationAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static locationToJson(Landroid/location/Location;Landroid/util/JsonWriter;)V
    .locals 4

    if-nez p0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object p0

    const-string p1, "API_ERROR"

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    const-string p1, "Failed to get location"

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 152
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 153
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 154
    const-string v0, "altitude"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 155
    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 157
    const-string v0, "vertical_accuracy"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-static {p0}, Lcom/termux/api/apis/LocationAPI$$ExternalSyntheticApiModelOutline0;->m(Landroid/location/Location;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 159
    :cond_1
    const-string v0, "bearing"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 160
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 162
    const-string v2, "elapsedMs"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 163
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 164
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 33
    const-string v0, "LocationAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/termux/api/apis/LocationAPI$1;

    invoke-direct {v0, p1, p2}, Lcom/termux/api/apis/LocationAPI$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
