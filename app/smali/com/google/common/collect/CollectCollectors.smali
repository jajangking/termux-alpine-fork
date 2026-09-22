.class final Lcom/google/common/collect/CollectCollectors;
.super Ljava/lang/Object;
.source "CollectCollectors.java"


# static fields
.field private static final TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    sget-object v0, Lcom/google/common/collect/-$$Lambda$vf0n71JGqeu6B0SDNCv1WN6jcME;->INSTANCE:Lcom/google/common/collect/-$$Lambda$vf0n71JGqeu6B0SDNCv1WN6jcME;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$UHf1W1ReHb_v0IbjrqXYRL0KLCE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$UHf1W1ReHb_v0IbjrqXYRL0KLCE;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$IA9uBkOc6EPE5epV9aHgwlAktLg;->INSTANCE:Lcom/google/common/collect/-$$Lambda$IA9uBkOc6EPE5epV9aHgwlAktLg;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$9T1NmVGx35xIbLLL0FmZQ13Zths;->INSTANCE:Lcom/google/common/collect/-$$Lambda$9T1NmVGx35xIbLLL0FmZQ13Zths;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 44
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    .line 66
    sget-object v0, Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$wXOTOw1G8z0PqIyYAYDEJ1yAxuU;->INSTANCE:Lcom/google/common/collect/-$$Lambda$wXOTOw1G8z0PqIyYAYDEJ1yAxuU;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$i1r6VPXBf3X5kIJHWXzorrLMWbA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$i1r6VPXBf3X5kIJHWXzorrLMWbA;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$PMSANYw-IJwk_7wrNWRzjOn3p-k;->INSTANCE:Lcom/google/common/collect/-$$Lambda$PMSANYw-IJwk_7wrNWRzjOn3p-k;

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 67
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    .line 108
    sget-object v0, Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$cXxboVgO8LkekbP9-sbgiPoMjN0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$cXxboVgO8LkekbP9-sbgiPoMjN0;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$zgQbEdPgU4dKXB2xhMNf4GcbfQk;->INSTANCE:Lcom/google/common/collect/-$$Lambda$zgQbEdPgU4dKXB2xhMNf4GcbfQk;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;->INSTANCE:Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 109
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    .line 108
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toImmutableBiMap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableBiMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 37
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMap$1(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 61
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableRangeMap$5(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 130
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$2(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 89
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMap$3(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 90
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedSet$4(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 100
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 33
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$uaEZgJ4jFDE33UsbAHFKo6uOEV4;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$uaEZgJ4jFDE33UsbAHFKo6uOEV4;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object v2, Lcom/google/common/collect/-$$Lambda$blaAtO--XD8VAXMTziU8JWiW0Ww;->INSTANCE:Lcom/google/common/collect/-$$Lambda$blaAtO--XD8VAXMTziU8JWiW0Ww;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$O3_vJQH5SFtXbmwrHNSgKeBErL0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$O3_vJQH5SFtXbmwrHNSgKeBErL0;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableList()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 57
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;->INSTANCE:Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$sIQ97mDJW8gUFx83ZQtt_vTfg7I;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$sIQ97mDJW8gUFx83ZQtt_vTfg7I;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object v2, Lcom/google/common/collect/-$$Lambda$729PE7C19CRv98lm3wiTh0tAlBI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$729PE7C19CRv98lm3wiTh0tAlBI;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$Wg4kyVeuwZkqkLuDX0M7XTHh0i4;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Wg4kyVeuwZkqkLuDX0M7XTHh0i4;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 126
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Lcom/google/common/collect/Range<TK;>;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$lR0VKAIjMKe54owYO6FQTIS_CNE;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$0eOFHo4mR6Pq7dltCcLDZ9FoybY;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$0eOFHo4mR6Pq7dltCcLDZ9FoybY;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object v2, Lcom/google/common/collect/-$$Lambda$t9hZLo9d1Rib41DnFRVYzD05ZdA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$t9hZLo9d1Rib41DnFRVYzD05ZdA;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$bEmagIn8JeVnMBYk_G6hyaz-MHQ;->INSTANCE:Lcom/google/common/collect/-$$Lambda$bEmagIn8JeVnMBYk_G6hyaz-MHQ;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 81
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$aPZkIT_WF-qO0GlSlsqyd3UFVoc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$aPZkIT_WF-qO0GlSlsqyd3UFVoc;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$0ezZhwUF5GAJUKhyPqctFXc3CAY;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$0ezZhwUF5GAJUKhyPqctFXc3CAY;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object v2, Lcom/google/common/collect/-$$Lambda$rHhq7tzgnNcBGZtwL3eEI7SHbww;->INSTANCE:Lcom/google/common/collect/-$$Lambda$rHhq7tzgnNcBGZtwL3eEI7SHbww;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 98
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$xiNzaC9RV1RgR6D3xh9xI40myA8;

    invoke-direct {v0, p0}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$xiNzaC9RV1RgR6D3xh9xI40myA8;-><init>(Ljava/util/Comparator;)V

    sget-object v1, Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$JkiWm6aCrF3eWsF0etVTYLE_vQs;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$zHMeuF_XiSzpwRphisN7v_9L0X4;->INSTANCE:Lcom/google/common/collect/-$$Lambda$zHMeuF_XiSzpwRphisN7v_9L0X4;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$hOTz7keUQs40Nn8saKqiU19QapI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$hOTz7keUQs40Nn8saKqiU19QapI;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method
