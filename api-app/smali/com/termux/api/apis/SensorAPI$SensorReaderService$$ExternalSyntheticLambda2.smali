.class public final synthetic Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/SensorAPI$SensorCommandResult;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/SensorAPI$SensorCommandResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda2;->f$0:Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/SensorAPI$SensorReaderService$$ExternalSyntheticLambda2;->f$0:Lcom/termux/api/apis/SensorAPI$SensorCommandResult;

    invoke-static {v0, p1}, Lcom/termux/api/apis/SensorAPI$SensorReaderService;->$r8$lambda$qYRV7wDvepdC9Osxz2k4qZSP9n8(Lcom/termux/api/apis/SensorAPI$SensorCommandResult;Ljava/io/PrintWriter;)V

    return-void
.end method
