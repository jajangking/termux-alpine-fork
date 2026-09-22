.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$cqUMr-vZNWDWVwB6qnt-pn3rREI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$cqUMr-vZNWDWVwB6qnt-pn3rREI;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$cqUMr-vZNWDWVwB6qnt-pn3rREI;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$cqUMr-vZNWDWVwB6qnt-pn3rREI;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$cqUMr-vZNWDWVwB6qnt-pn3rREI;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->lambda$forEachRemaining$1(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
