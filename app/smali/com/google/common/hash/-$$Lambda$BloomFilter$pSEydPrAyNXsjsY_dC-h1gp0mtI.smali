.class public final synthetic Lcom/google/common/hash/-$$Lambda$BloomFilter$pSEydPrAyNXsjsY_dC-h1gp0mtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/hash/-$$Lambda$BloomFilter$pSEydPrAyNXsjsY_dC-h1gp0mtI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/hash/-$$Lambda$BloomFilter$pSEydPrAyNXsjsY_dC-h1gp0mtI;

    invoke-direct {v0}, Lcom/google/common/hash/-$$Lambda$BloomFilter$pSEydPrAyNXsjsY_dC-h1gp0mtI;-><init>()V

    sput-object v0, Lcom/google/common/hash/-$$Lambda$BloomFilter$pSEydPrAyNXsjsY_dC-h1gp0mtI;->INSTANCE:Lcom/google/common/hash/-$$Lambda$BloomFilter$pSEydPrAyNXsjsY_dC-h1gp0mtI;

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

    check-cast p1, Lcom/google/common/hash/BloomFilter;

    check-cast p2, Lcom/google/common/hash/BloomFilter;

    invoke-static {p1, p2}, Lcom/google/common/hash/BloomFilter;->lambda$toBloomFilter$1(Lcom/google/common/hash/BloomFilter;Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter;

    move-result-object p1

    return-object p1
.end method
