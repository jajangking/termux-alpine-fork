.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multimaps$g-ui3y-WutrFeFKQ2r68BpdlhQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Multimaps$g-ui3y-WutrFeFKQ2r68BpdlhQQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Multimaps$g-ui3y-WutrFeFKQ2r68BpdlhQQ;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Multimaps$g-ui3y-WutrFeFKQ2r68BpdlhQQ;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Multimaps$g-ui3y-WutrFeFKQ2r68BpdlhQQ;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Multimaps$g-ui3y-WutrFeFKQ2r68BpdlhQQ;

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

    check-cast p1, Lcom/google/common/collect/Multimap;

    check-cast p2, Lcom/google/common/collect/Multimap;

    invoke-static {p1, p2}, Lcom/google/common/collect/Multimaps;->lambda$toMultimap$1(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object p1

    return-object p1
.end method
