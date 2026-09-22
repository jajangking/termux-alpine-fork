.class public final synthetic Lcom/google/common/collect/-$$Lambda$010ui-Gz323NbHKQ5KOkRbREplA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$010ui-Gz323NbHKQ5KOkRbREplA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$010ui-Gz323NbHKQ5KOkRbREplA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$010ui-Gz323NbHKQ5KOkRbREplA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$010ui-Gz323NbHKQ5KOkRbREplA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$010ui-Gz323NbHKQ5KOkRbREplA;

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

    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    check-cast p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->combine(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    move-result-object p1

    return-object p1
.end method
