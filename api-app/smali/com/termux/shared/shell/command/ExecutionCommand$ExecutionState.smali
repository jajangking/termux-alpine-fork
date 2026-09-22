.class public final enum Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/command/ExecutionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecutionState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public static final enum EXECUTED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public static final enum EXECUTING:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public static final enum FAILED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public static final enum PRE_EXECUTION:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

.field public static final enum SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    const/4 v1, 0x0

    const-string v2, "Pre-Execution"

    const-string v3, "PRE_EXECUTION"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 36
    new-instance v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    const/4 v2, 0x1

    const-string v3, "Executing"

    const-string v4, "EXECUTING"

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 37
    new-instance v2, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    const/4 v3, 0x2

    const-string v4, "Executed"

    const-string v5, "EXECUTED"

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 38
    new-instance v3, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    const/4 v4, 0x3

    const-string v5, "Success"

    const-string v6, "SUCCESS"

    invoke-direct {v3, v6, v4, v5, v4}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 39
    new-instance v4, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    const/4 v5, 0x4

    const-string v6, "Failed"

    const-string v7, "FAILED"

    invoke-direct {v4, v7, v5, v6, v5}, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    .line 33
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->name:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
    .locals 1

    .line 33
    const-class v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;
    .locals 1

    .line 33
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v0}, [Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->value:I

    return v0
.end method
