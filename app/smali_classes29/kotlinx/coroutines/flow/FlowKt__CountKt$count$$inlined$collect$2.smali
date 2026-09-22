.class public final Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__CountKt;->count(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n*L\n1#1,134:1\n31#2,4:135\n*E\n"
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
.field final synthetic $i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 138
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
    move-object p1, p0

    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
    const/4 v1, 0x0

    .line 135
    .local v1, "$i$a$-collect-FlowKt__CountKt$count$4":I
    const/4 v1, 0x0

    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v0

    goto :goto_1

    .line 0
    .end local v1    # "$i$a$-collect-FlowKt__CountKt$count$4":I
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 73
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
    .local p1, "value":Ljava/lang/Object;
    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "$completion":Lkotlin/coroutines/Continuation;
    move-object v5, p1

    .local v5, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 135
    .local v4, "$i$a$-collect-FlowKt__CountKt$count$4":I
    iget-object v6, v2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    const/4 v7, 0x6

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v6, v5, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x7

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .end local v5    # "value":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/Object;
    if-ne v6, v1, :cond_1

    return-object v1

    :cond_1
    move-object p1, v2

    move v1, v4

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
    .end local v4    # "$i$a$-collect-FlowKt__CountKt$count$4":I
    .restart local v1    # "$i$a$-collect-FlowKt__CountKt$count$4":I
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
    :goto_1
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v3

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 138
    :cond_2
    nop

    .end local v1    # "$i$a$-collect-FlowKt__CountKt$count$4":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
