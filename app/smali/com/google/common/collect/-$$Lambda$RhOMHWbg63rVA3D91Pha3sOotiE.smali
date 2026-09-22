.class public final synthetic Lcom/google/common/collect/-$$Lambda$RhOMHWbg63rVA3D91Pha3sOotiE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$RhOMHWbg63rVA3D91Pha3sOotiE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$RhOMHWbg63rVA3D91Pha3sOotiE;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$RhOMHWbg63rVA3D91Pha3sOotiE;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$RhOMHWbg63rVA3D91Pha3sOotiE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$RhOMHWbg63rVA3D91Pha3sOotiE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Sets$Accumulator;

    check-cast p2, Lcom/google/common/collect/Sets$Accumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Sets$Accumulator;->combine(Lcom/google/common/collect/Sets$Accumulator;)Lcom/google/common/collect/Sets$Accumulator;

    move-result-object p1

    return-object p1
.end method
