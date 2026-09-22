.class final enum Lcom/termux/api/apis/SensorAPI$ResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SensorAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResultType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/api/apis/SensorAPI$ResultType;

.field public static final enum CONTINUOUS:Lcom/termux/api/apis/SensorAPI$ResultType;

.field public static final enum SINGLE:Lcom/termux/api/apis/SensorAPI$ResultType;


# direct methods
.method private static synthetic $values()[Lcom/termux/api/apis/SensorAPI$ResultType;
    .locals 2

    .line 464
    sget-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->SINGLE:Lcom/termux/api/apis/SensorAPI$ResultType;

    sget-object v1, Lcom/termux/api/apis/SensorAPI$ResultType;->CONTINUOUS:Lcom/termux/api/apis/SensorAPI$ResultType;

    filled-new-array {v0, v1}, [Lcom/termux/api/apis/SensorAPI$ResultType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 465
    new-instance v0, Lcom/termux/api/apis/SensorAPI$ResultType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/api/apis/SensorAPI$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->SINGLE:Lcom/termux/api/apis/SensorAPI$ResultType;

    .line 466
    new-instance v0, Lcom/termux/api/apis/SensorAPI$ResultType;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/api/apis/SensorAPI$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->CONTINUOUS:Lcom/termux/api/apis/SensorAPI$ResultType;

    .line 464
    invoke-static {}, Lcom/termux/api/apis/SensorAPI$ResultType;->$values()[Lcom/termux/api/apis/SensorAPI$ResultType;

    move-result-object v0

    sput-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->$VALUES:[Lcom/termux/api/apis/SensorAPI$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 464
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/api/apis/SensorAPI$ResultType;
    .locals 1

    .line 464
    const-class v0, Lcom/termux/api/apis/SensorAPI$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/api/apis/SensorAPI$ResultType;

    return-object p0
.end method

.method public static values()[Lcom/termux/api/apis/SensorAPI$ResultType;
    .locals 1

    .line 464
    sget-object v0, Lcom/termux/api/apis/SensorAPI$ResultType;->$VALUES:[Lcom/termux/api/apis/SensorAPI$ResultType;

    invoke-virtual {v0}, [Lcom/termux/api/apis/SensorAPI$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/api/apis/SensorAPI$ResultType;

    return-object v0
.end method
