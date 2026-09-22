.class Lcom/termux/api/apis/SensorAPI$SensorReaderService$2;
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

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 0

    .line 219
    new-instance p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    invoke-direct {p2}, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;-><init>()V

    .line 221
    sget-object p3, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    if-eqz p3, :cond_0

    .line 222
    invoke-virtual {p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->interrupt()V

    const/4 p3, 0x0

    .line 223
    sput-object p3, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    .line 224
    sget-object p3, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 225
    const-string p1, "Sensor cleanup successful!"

    iput-object p1, p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;

    .line 226
    const-string p1, "SensorReaderService"

    const-string p3, "Cleanup()"

    invoke-static {p1, p3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    const-string p1, "Sensor cleanup unnecessary"

    iput-object p1, p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;

    :goto_0
    return-object p2
.end method
