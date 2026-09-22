.class public abstract synthetic Lcom/termux/api/apis/LocationAPI$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/location/Location;)F
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result p0

    return p0
.end method
