.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$30RzUs7cgs6aZ0EfiBg5HnZRHKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$30RzUs7cgs6aZ0EfiBg5HnZRHKI;->f$0:Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$30RzUs7cgs6aZ0EfiBg5HnZRHKI;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$30RzUs7cgs6aZ0EfiBg5HnZRHKI;->f$0:Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

    iget-object v1, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$30RzUs7cgs6aZ0EfiBg5HnZRHKI;->f$1:Ljava/util/function/Function;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->lambda$tryAdvance$0$CollectSpliterators$1FlatMapSpliterator(Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
