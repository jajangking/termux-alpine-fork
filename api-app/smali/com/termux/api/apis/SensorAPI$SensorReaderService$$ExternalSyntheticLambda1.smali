.class public final synthetic Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->$r8$lambda$SJCA6f1ifXVuBrLtJoAucllzy_4(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    move-result-object p1

    return-object p1
.end method
