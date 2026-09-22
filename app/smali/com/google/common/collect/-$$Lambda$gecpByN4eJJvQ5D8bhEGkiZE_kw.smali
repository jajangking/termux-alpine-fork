.class public final synthetic Lcom/google/common/collect/-$$Lambda$gecpByN4eJJvQ5D8bhEGkiZE_kw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$gecpByN4eJJvQ5D8bhEGkiZE_kw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$gecpByN4eJJvQ5D8bhEGkiZE_kw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$gecpByN4eJJvQ5D8bhEGkiZE_kw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$gecpByN4eJJvQ5D8bhEGkiZE_kw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$gecpByN4eJJvQ5D8bhEGkiZE_kw;

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

    check-cast p1, Lcom/google/common/collect/ListMultimap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableListMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p1

    return-object p1
.end method
