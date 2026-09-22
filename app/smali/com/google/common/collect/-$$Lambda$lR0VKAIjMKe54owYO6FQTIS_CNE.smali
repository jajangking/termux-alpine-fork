.class public final synthetic Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->builder()Lcom/google/common/collect/ImmutableRangeMap$Builder;

    move-result-object v0

    return-object v0
.end method
