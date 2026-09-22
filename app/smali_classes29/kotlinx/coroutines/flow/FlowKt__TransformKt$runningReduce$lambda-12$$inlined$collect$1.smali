.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__TransformKt;->runningReduce(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,134:1\n125#2,7:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $accumulator$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $operation$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$accumulator$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$operation$inlined:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 141
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    move p1, v3

    .line 140
    .local p1, "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    const/4 p1, 0x0

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 0
    .end local p1    # "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    :pswitch_1
    move-object p1, p0

    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
    move v2, v3

    .line 138
    .local v2, "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    const/4 v2, 0x0

    iget-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_1

    .line 0
    .end local v2    # "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 73
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
    .local p1, "value":Ljava/lang/Object;
    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    move-object v4, p1

    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 135
    .local v5, "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    iget-object v6, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$accumulator$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v8, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-ne v7, v8, :cond_1

    .line 136
    move p1, v5

    goto :goto_2

    :cond_1
    nop

    .line 138
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$operation$inlined:Lkotlin/jvm/functions/Function3;

    iget-object v7, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$accumulator$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->label:I

    const/4 v8, 0x6

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v3, v7, v4, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x7

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .end local v4    # "value":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/Object;
    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    move-object p1, v2

    move-object v4, v3

    move v2, v5

    move-object v3, v6

    .end local v5    # "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    .local v2, "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
    :goto_1
    move-object v6, v3

    move v9, v2

    move-object v2, p1

    move p1, v9

    .line 135
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
    .local p1, "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    :goto_2
    iput-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->$accumulator$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->label:I

    invoke-interface {v3, v4, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
    if-ne v2, v1, :cond_3

    return-object v1

    .line 141
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local p1    # "$i$a$-collect-FlowKt__TransformKt$runningReduce$1$1":I
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
