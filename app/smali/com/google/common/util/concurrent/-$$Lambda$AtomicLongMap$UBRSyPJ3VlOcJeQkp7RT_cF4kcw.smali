.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$UBRSyPJ3VlOcJeQkp7RT_cF4kcw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$UBRSyPJ3VlOcJeQkp7RT_cF4kcw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$UBRSyPJ3VlOcJeQkp7RT_cF4kcw;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$UBRSyPJ3VlOcJeQkp7RT_cF4kcw;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$UBRSyPJ3VlOcJeQkp7RT_cF4kcw;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$UBRSyPJ3VlOcJeQkp7RT_cF4kcw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$UBRSyPJ3VlOcJeQkp7RT_cF4kcw(JJ)J

    move-result-wide p1

    return-wide p1
.end method
