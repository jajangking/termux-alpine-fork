.class Lcom/termux/api/apis/SensorAPI$SensorCommandResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SensorAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SensorCommandResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public type:Lcom/termux/api/apis/SensorAPI$ResultType;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->message:Ljava/lang/String;

    .line 460
    sget-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->SINGLE:Lcom/termux/api/apis/SensorAPI$ResultType;

    iput-object v0, p0, Lcom/termux/api/apis/SensorAPI$SensorCommandResult;->type:Lcom/termux/api/apis/SensorAPI$ResultType;

    return-void
.end method
