.class public final synthetic Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    return-void
.end method
