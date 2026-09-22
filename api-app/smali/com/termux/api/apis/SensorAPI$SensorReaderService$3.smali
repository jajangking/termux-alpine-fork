.class Lcom/termux/api/apis/SensorAPI$SensorReaderService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SensorAPI$SensorReaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 1

    .line 240
    new-instance p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;-><init>()V

    .line 241
    sget-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->CONTINUOUS:Lcom/termux/api/apis/SensorAPI$ResultType;

    iput-object v0, p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->type:Lcom/termux/api/apis/SensorAPI$ResultType;

    .line 243
    invoke-static {}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->clearSensorValues()V

    .line 246
    invoke-static {p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->getUserRequestedSensors(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p1, v0, p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->getSensorsToListenTo(Landroid/hardware/SensorManager;[Ljava/lang/String;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    const-string p1, "No valid sensors were registered!"

    iput-object p1, p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;

    .line 251
    sget-object p1, Lcom/termux/api/apis/SensorAPI$ResultType;->SINGLE:Lcom/termux/api/apis/SensorAPI$ResultType;

    iput-object p1, p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->type:Lcom/termux/api/apis/SensorAPI$ResultType;

    goto :goto_0

    .line 253
    :cond_0
    sget-object p1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    if-nez p1, :cond_1

    .line 254
    invoke-static {p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->createSensorOutputWriter(Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    move-result-object p1

    sput-object p1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-object p2
.end method
