.class public final enum Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
.super Ljava/lang/Enum;
.source "ExecutionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/models/ExecutionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecutionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/models/ExecutionCommand$ExecutionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public static final enum EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public static final enum EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public static final enum FAILED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public static final enum PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

.field public static final enum SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    .locals 3

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const-string v1, "PRE_EXECUTION"

    const/4 v2, 0x0

    const-string v3, "Pre-Execution"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->PRE_EXECUTION:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 31
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const-string v1, "EXECUTING"

    const/4 v2, 0x1

    const-string v3, "Executing"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 32
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const-string v1, "EXECUTED"

    const/4 v2, 0x2

    const-string v3, "Executed"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 33
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    const-string v3, "Success"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 34
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    const-string v3, "Failed"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->FAILED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    .line 28
    invoke-static {}, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->$values()[Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->$VALUES:[Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->name:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->value:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/models/ExecutionCommand$ExecutionState;
    .locals 1

    .line 28
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->$VALUES:[Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v0}, [Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->value:I

    return v0
.end method
