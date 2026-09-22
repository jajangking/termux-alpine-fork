.class final synthetic Lkotlinx/coroutines/flow/FlowKt__CountKt;
.super Ljava/lang/Object;
.source "Count.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,38:1\n72#2,3:39\n72#2,3:42\n*S KotlinDebug\n*F\n+ 1 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n*L\n18#1:39,3\n30#1:42,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001aE\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0005\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "count",
        "",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "predicate",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final count(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 22
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "i":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v1, 0x0

    .local v1, "$i$f$collect":I
    const/4 v1, 0x0

    iget-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$0:Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "$i$f$collect":I
    .end local p0    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .local p0, "$this$count":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 18
    .local v2, "i":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v3, p0

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 39
    .local v4, "$i$f$collect":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    invoke-interface {v3, v5, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$count":Lkotlinx/coroutines/flow/Flow;
    if-ne p0, v1, :cond_1

    .line 16
    return-object v1

    .line 39
    :cond_1
    move-object p0, v2

    move v1, v4

    .line 41
    .end local v2    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v4    # "$i$f$collect":I
    .restart local v1    # "$i$f$collect":I
    .local p0, "i":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_1
    nop

    .line 22
    .end local v1    # "$i$f$collect":I
    iget v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final count(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    packed-switch v2, :pswitch_data_0

    .line 36
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "i":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 p1, 0x0

    .local p1, "$i$f$collect":I
    const/4 p1, 0x0

    iget-object v1, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$0:Ljava/lang/Object;

    move-object p0, v1

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    .end local p1    # "$i$f$collect":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .local p0, "$this$count":Lkotlinx/coroutines/flow/Flow;
    .local p1, "predicate":Lkotlin/jvm/functions/Function2;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 30
    .local v2, "i":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v3, p0

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 42
    .local v4, "$i$f$collect":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;

    invoke-direct {v5, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    invoke-interface {v3, v5, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$count":Lkotlinx/coroutines/flow/Flow;
    .end local p1    # "predicate":Lkotlin/jvm/functions/Function2;
    if-ne p0, v1, :cond_1

    .line 28
    return-object v1

    .line 42
    :cond_1
    move-object p0, v2

    move p1, v4

    .line 44
    .end local v2    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v4    # "$i$f$collect":I
    .local p0, "i":Lkotlin/jvm/internal/Ref$IntRef;
    .local p1, "$i$f$collect":I
    :goto_1
    nop

    .line 36
    .end local p1    # "$i$f$collect":I
    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
