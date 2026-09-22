.class public final synthetic Lcom/google/common/collect/-$$Lambda$MoreCollectors$by3R1RMOe-eR0j7Q2FOY8aX3KAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$MoreCollectors$by3R1RMOe-eR0j7Q2FOY8aX3KAw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$MoreCollectors$by3R1RMOe-eR0j7Q2FOY8aX3KAw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$MoreCollectors$by3R1RMOe-eR0j7Q2FOY8aX3KAw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$MoreCollectors$by3R1RMOe-eR0j7Q2FOY8aX3KAw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$MoreCollectors$by3R1RMOe-eR0j7Q2FOY8aX3KAw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-static {p1}, Lcom/google/common/collect/MoreCollectors;->lambda$static$1(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
