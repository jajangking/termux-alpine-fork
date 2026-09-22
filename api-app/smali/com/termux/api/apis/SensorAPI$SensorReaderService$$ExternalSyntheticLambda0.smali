.class public final synthetic Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/SensorAPI$SensorCommandHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handle(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->$r8$lambda$hJB4taIbSGaBhDRG-lPFviO8-Rs(Ljava/lang/String;Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    move-result-object p1

    return-object p1
.end method
