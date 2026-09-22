.class public Lcom/termux/api/apis/SensorAPI$SensorReaderService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SensorAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorReaderService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;
    }
.end annotation


# static fields
.field static cleanupHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

.field static listHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

.field protected static outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

.field protected static semaphore:Ljava/util/concurrent/Semaphore;

.field protected static sensorEventListener:Landroid/hardware/SensorEventListener;

.field static sensorHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

.field protected static sensorManager:Landroid/hardware/SensorManager;

.field protected static sensorReadout:Lorg/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$SJCA6f1ifXVuBrLtJoAucllzy_4(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->lambda$static$2(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VnmdkgUg5sHEO_1poHPrIsS5joA(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->lambda$getSensorsToListenTo$3(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h8WjaHsFxeaWVca4yEnTiZl0Jbk(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->lambda$createSensorOutputWriter$4(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJB4taIbSGaBhDRG-lPFviO8-Rs(Ljava/lang/String;Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->lambda$getSensorCommandHandler$0(Ljava/lang/String;Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qYRV7wDvepdC9Osxz2k4qZSP9n8(Lcom/termux/api/apis/SensorAPI$SensorCommandResult;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->lambda$postSensorCommandResult$1(Lcom/termux/api/apis/SensorAPI$SensorCommandResult;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$1;

    invoke-direct {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$1;-><init>()V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 194
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->listHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    .line 216
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$2;

    invoke-direct {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$2;-><init>()V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->cleanupHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    .line 237
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$3;

    invoke-direct {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$3;-><init>()V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method protected static cleanup()V
    .locals 3

    .line 107
    sget-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    invoke-virtual {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->interrupt()V

    .line 109
    sput-object v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    .line 112
    :cond_0
    sget-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 113
    sget-object v2, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    sput-object v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorManager:Landroid/hardware/SensorManager;

    :cond_1
    return-void
.end method

.method protected static clearSensorValues()V
    .locals 2

    .line 319
    sget-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 322
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorReadout:Lorg/json/JSONObject;

    return-void
.end method

.method protected static createSensorOutputWriter(Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;
    .locals 3

    .line 330
    const-string v0, "socket_output"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    invoke-direct {v1, v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    .line 333
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->setOnErrorListener(Lcom/termux/api/apis/SensorAPI$SocketWriterErrorListener;)V

    .line 338
    const-string v0, "delay"

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SensorReaderService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    invoke-virtual {v1, v0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->setDelay(I)V

    .line 342
    const-string v0, "limit"

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorOutput limit set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    invoke-virtual {v0, p0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;->setLimit(I)V

    .line 346
    sget-object p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    return-object p0
.end method

.method protected static getSensorCommandHandler(Ljava/lang/String;)Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;
    .locals 3

    if-nez p0, :cond_0

    .line 154
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "sensors"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "cleanup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 162
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 160
    :pswitch_0
    sget-object p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    return-object p0

    .line 158
    :pswitch_1
    sget-object p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->cleanupHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    return-object p0

    .line 156
    :pswitch_2
    sget-object p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->listHandler:Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32b09e -> :sswitch_2
        0x331156a4 -> :sswitch_1
        0x760a23f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1

    .line 92
    sget-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorManager:Landroid/hardware/SensorManager;

    .line 95
    :cond_0
    sget-object p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method protected static getSensorsToListenTo(Landroid/hardware/SensorManager;[Ljava/lang/String;Landroid/content/Intent;)Ljava/util/List;
    .locals 11

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    new-instance v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    const-string v2, "all"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Sensor;

    .line 283
    sget-object v1, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v1, p2, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 286
    :cond_0
    const-string p0, "SensorReaderService"

    const-string p1, "Listening to ALL sensors"

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 290
    :cond_1
    array-length p2, p1

    :goto_1
    if-ge v3, p2, :cond_5

    aget-object v4, p1, v3

    .line 292
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7fffffff

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 298
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v7, :cond_2

    .line 301
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v6

    move-object v6, v8

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    .line 306
    sget-object v4, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v4, v6, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 307
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method protected static getUserRequestedSensors(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 2

    .line 267
    const-string v0, "sensors"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 268
    :goto_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createSensorOutputWriter$4(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    .line 334
    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->outputWriter:Lcom/termux/api/apis/SensorAPI$SensorReaderService$SensorOutputWriter;

    .line 335
    const-string v0, "SensorReaderService"

    const-string v1, "SensorOutputWriter error"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$getSensorCommandHandler$0(Ljava/lang/String;Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 0

    .line 163
    new-instance p1, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    invoke-direct {p1}, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;-><init>()V

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown command: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;

    return-object p1
.end method

.method private static synthetic lambda$getSensorsToListenTo$3(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)I
    .locals 0

    .line 276
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$postSensorCommandResult$1(Lcom/termux/api/apis/SensorAPI$SensorCommandResult;Ljava/io/PrintWriter;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 175
    iget-object p0, p0, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->error:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 179
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method private static synthetic lambda$static$2(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 2

    .line 195
    new-instance p1, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    invoke-direct {p1}, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;-><init>()V

    .line 196
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, -0x1

    .line 197
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 200
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 202
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 204
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    const-string v0, "sensors"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x2

    .line 206
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    :goto_1
    const-string p2, "SensorReaderService"

    const-string v0, "listHandler JSON error"

    invoke-static {p2, v0, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p1
.end method

.method private postSensorCommandResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/SensorAPI$SensorCommandResult;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda2;-><init>(Lcom/termux/api/apis/SensorAPI$SensorCommandResult;)V

    invoke-static {p1, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 66
    const-string v0, "SensorReaderService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->sensorReadout:Lorg/json/JSONObject;

    .line 70
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 100
    const-string v0, "SensorReaderService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    invoke-static {}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->cleanup()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 75
    const-string p2, "SensorReaderService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 79
    invoke-static {p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 81
    invoke-static {p2}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->getSensorCommandHandler(Ljava/lang/String;)Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;

    move-result-object p2

    .line 82
    invoke-interface {p2, v0, p3, p1}, Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;->handle(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    move-result-object p2

    .line 84
    iget-object v0, p2, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->type:Lcom/termux/api/apis/SensorAPI$ResultType;

    sget-object v1, Lcom/termux/api/apis/SensorAPI$ResultType;->SINGLE:Lcom/termux/api/apis/SensorAPI$ResultType;

    if-ne v0, v1, :cond_0

    .line 86
    invoke-direct {p0, p3, p1, p2}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->postSensorCommandResult(Landroid/content/Context;Landroid/content/Intent;Lcom/termux/api/apis/SensorAPI$SensorCommandResult;)V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
