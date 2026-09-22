.class public final synthetic Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Landroid/hardware/Sensor;

    check-cast p2, Landroid/hardware/Sensor;

    invoke-static {p1, p2}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->$r8$lambda$VnmdkgUg5sHEO_1poHPrIsS5joA(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)I

    move-result p1

    return p1
.end method
