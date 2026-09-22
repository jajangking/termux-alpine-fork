.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ReduceKt;
.super Ljava/lang/Object;
.source "Reduce.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n+ 3 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n72#2,3:173\n72#2,3:176\n72#2,3:179\n72#2,3:257\n72#2,3:260\n128#3,15:182\n128#3,15:197\n128#3,15:212\n128#3,15:227\n128#3,15:242\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n22#1:173,3\n44#1:176,3\n57#1:179,3\n155#1:257,3\n167#1:260,3\n72#1:182,15\n92#1:197,15\n106#1:212,15\n124#1:227,15\n137#1:242,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u001a!\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001aE\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a#\u0010\n\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001aG\u0010\n\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001ay\u0010\u000b\u001a\u0002H\u000c\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\r\u001a\u0002H\u000c2H\u0008\u0004\u0010\u000e\u001aB\u0008\u0001\u0012\u0013\u0012\u0011H\u000c\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000fH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001a!\u0010\u0015\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a#\u0010\u0016\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001as\u0010\u0017\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u0018\"\u0008\u0008\u0001\u0010\u0001*\u0002H\u0018*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022F\u0010\u000e\u001aB\u0008\u0001\u0012\u0013\u0012\u0011H\u0018\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001a!\u0010\u001b\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a#\u0010\u001c\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "first",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "predicate",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "firstOrNull",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "acc",
        "value",
        "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "last",
        "lastOrNull",
        "reduce",
        "S",
        "accumulator",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "single",
        "singleOrNull",
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
.method public static final first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 90
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 97
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    move-object v1, p0

    .local v1, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v2, 0x0

    .local v2, "$i$f$collectWhile":I
    .local p0, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    const/4 v2, 0x0

    iget-object v3, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$1:Ljava/lang/Object;

    move-object p0, v3

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;

    iget-object v3, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$0:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v3

    goto :goto_2

    .line 90
    .end local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "$i$f$collectWhile":I
    .end local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .local p0, "$this$first":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    move-object v3, p0

    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 197
    .local v4, "$i$f$collectWhile":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 206
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    nop

    .line 207
    :try_start_1
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    invoke-interface {v3, v6, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$first":Lkotlinx/coroutines/flow/Flow;
    if-ne v6, v1, :cond_1

    .line 90
    return-object v1

    .line 207
    :cond_1
    move-object v1, v2

    move v2, v4

    move-object p0, v5

    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .restart local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "$i$f$collectWhile":I
    .local p0, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    :goto_1
    goto :goto_3

    .line 208
    .end local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "$i$f$collectWhile":I
    .restart local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    :catch_1
    move-exception v3

    move-object v1, v2

    move v2, v4

    move-object p0, v5

    .line 209
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .restart local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "$i$f$collectWhile":I
    .local v3, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    .restart local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    :goto_2
    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 211
    .end local v3    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 96
    .end local v2    # "$i$f$collectWhile":I
    .end local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq p0, v2, :cond_2

    .line 97
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    .line 96
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v2, "Expected at least one element"

    invoke-direct {p0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    packed-switch v2, :pswitch_data_0

    .line 115
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    move-object v1, p0

    .local v1, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "predicate":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .local v2, "$i$f$collectWhile":I
    const/4 v2, 0x0

    iget-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$2:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;

    iget-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$1:Ljava/lang/Object;

    move-object p0, v3

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$0:Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v3

    goto :goto_2

    .line 104
    .end local v1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .end local v2    # "$i$f$collectWhile":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "predicate":Lkotlin/jvm/functions/Function2;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    .local p0, "$this$first":Lkotlinx/coroutines/flow/Flow;
    .restart local p1    # "predicate":Lkotlin/jvm/functions/Function2;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 106
    move-object v3, p0

    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$f$collectWhile":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;

    invoke-direct {v5, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 221
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    nop

    .line 222
    :try_start_1
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$1:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    invoke-interface {v3, v6, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$first":Lkotlinx/coroutines/flow/Flow;
    if-ne v6, v1, :cond_1

    .line 104
    return-object v1

    .line 222
    :cond_1
    move-object p0, v2

    move v2, v4

    move-object v1, v5

    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .restart local v1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .local v2, "$i$f$collectWhile":I
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    goto :goto_3

    .line 223
    .end local v1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "$i$f$collectWhile":I
    .restart local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    :catch_1
    move-exception v3

    move-object p0, v2

    move v2, v4

    move-object v1, v5

    .line 224
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .restart local v1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .local v2, "$i$f$collectWhile":I
    .local v3, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    .restart local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_2
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 226
    .end local v3    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 114
    .end local v1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .end local v2    # "$i$f$collectWhile":I
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v2, :cond_2

    .line 115
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    .line 114
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Expected at least one element matching the predicate "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 122
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 128
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    move-object v1, p0

    .local v1, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v2, 0x0

    .local v2, "$i$f$collectWhile":I
    .local p0, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    const/4 v2, 0x0

    iget-object v3, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    move-object p0, v3

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;

    iget-object v3, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v3

    goto :goto_2

    .line 122
    .end local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "$i$f$collectWhile":I
    .end local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .local p0, "$this$firstOrNull":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 124
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v3, p0

    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 227
    .local v4, "$i$f$collectWhile":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 236
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    nop

    .line 237
    :try_start_1
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    invoke-interface {v3, v6, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$firstOrNull":Lkotlinx/coroutines/flow/Flow;
    if-ne v6, v1, :cond_1

    .line 122
    return-object v1

    .line 237
    :cond_1
    move-object v1, v2

    move v2, v4

    move-object p0, v5

    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    .restart local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "$i$f$collectWhile":I
    .local p0, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :goto_1
    goto :goto_3

    .line 238
    .end local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "$i$f$collectWhile":I
    .restart local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :catch_1
    move-exception v3

    move-object v1, v2

    move v2, v4

    move-object p0, v5

    .line 239
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    .restart local v1    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "$i$f$collectWhile":I
    .local v3, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    .restart local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :goto_2
    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 241
    .end local v3    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 128
    .end local v2    # "$i$f$collectWhile":I
    .end local p0    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 135
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    packed-switch v2, :pswitch_data_0

    .line 145
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    move-object p1, p0

    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    const/4 v1, 0x0

    .local v1, "$i$f$collectWhile":I
    const/4 v1, 0x0

    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;

    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v2

    goto :goto_2

    .line 135
    .end local v1    # "$i$f$collectWhile":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    .local p0, "$this$firstOrNull":Lkotlinx/coroutines/flow/Flow;
    .local p1, "predicate":Lkotlin/jvm/functions/Function2;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 137
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v3, p0

    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 242
    .local v4, "$i$f$collectWhile":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;

    invoke-direct {v5, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 251
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    nop

    .line 252
    :try_start_1
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    invoke-interface {v3, v6, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$firstOrNull":Lkotlinx/coroutines/flow/Flow;
    .end local p1    # "predicate":Lkotlin/jvm/functions/Function2;
    if-ne v6, v1, :cond_1

    .line 135
    return-object v1

    .line 252
    :cond_1
    move-object p0, v2

    move v1, v4

    move-object p1, v5

    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .restart local v1    # "$i$f$collectWhile":I
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    :goto_1
    goto :goto_3

    .line 253
    .end local v1    # "$i$f$collectWhile":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "$i$f$collectWhile":I
    .restart local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    :catch_1
    move-exception p0

    move v1, v4

    move-object p1, v5

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    .line 254
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .restart local v1    # "$i$f$collectWhile":I
    .local v2, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    .restart local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    :goto_2
    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 256
    .end local v2    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 145
    .end local v1    # "$i$f$collectWhile":I
    .end local p1    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final fold(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;TR;",
            "Lkotlin/jvm/functions/Function3<",
            "-TR;-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 47
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    move p1, p0

    .local p0, "$i$f$collect":I
    .local p1, "$i$f$fold":I
    const/4 p2, 0x0

    .local p2, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 p1, 0x0

    const/4 p0, 0x0

    iget-object v1, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$0:Ljava/lang/Object;

    move-object p2, v1

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$i$f$collect":I
    .end local p1    # "$i$f$fold":I
    .end local p2    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$fold":Lkotlinx/coroutines/flow/Flow;
    .local p1, "initial":Ljava/lang/Object;
    .local p2, "operation":Lkotlin/jvm/functions/Function3;
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$f$fold":I
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v3, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    move-object v4, p0

    .local v4, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .line 176
    .local v5, "$i$f$collect":I
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;

    invoke-direct {v6, v3, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v3, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    invoke-interface {v4, v6, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v4    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$fold":Lkotlinx/coroutines/flow/Flow;
    .end local p1    # "initial":Ljava/lang/Object;
    .end local p2    # "operation":Lkotlin/jvm/functions/Function3;
    if-ne p0, v1, :cond_1

    .line 39
    return-object v1

    .line 176
    :cond_1
    move p1, v2

    move-object p2, v3

    move p0, v5

    .line 178
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "$i$f$collect":I
    .local p0, "$i$f$collect":I
    .local p1, "$i$f$fold":I
    .local p2, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    nop

    .line 47
    .end local p0    # "$i$f$collect":I
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final fold$$forInline(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$fold"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;TR;",
            "Lkotlin/jvm/functions/Function3<",
            "-TR;-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$fold":I
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v1, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    move-object v2, p0

    .local v2, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 176
    .local v3, "$i$f$collect":I
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;

    invoke-direct {v4, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v5, 0x0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v2, v4, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 178
    nop

    .line 47
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$collect":I
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v2
.end method

.method public static final last(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 153
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 159
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v1, 0x0

    .local v1, "$i$f$collect":I
    const/4 v1, 0x0

    iget-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->L$0:Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "$i$f$collect":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    .local p0, "$this$last":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 155
    move-object v3, p0

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 257
    .local v4, "$i$f$collect":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$$inlined$collect$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$last$1;->label:I

    invoke-interface {v3, v5, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$last":Lkotlinx/coroutines/flow/Flow;
    if-ne p0, v1, :cond_1

    .line 153
    return-object v1

    .line 257
    :cond_1
    move-object p0, v2

    move v1, v4

    .line 259
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collect":I
    .restart local v1    # "$i$f$collect":I
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    nop

    .line 158
    .end local v1    # "$i$f$collect":I
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v2, :cond_2

    .line 159
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    .line 158
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Expected at least one element"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final lastOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 170
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v1, 0x0

    .local v1, "$i$f$collect":I
    const/4 v1, 0x0

    iget-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "$i$f$collect":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    .local p0, "$this$lastOrNull":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 167
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v3, p0

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 260
    .local v4, "$i$f$collect":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$$inlined$collect$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$lastOrNull$1;->label:I

    invoke-interface {v3, v5, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$lastOrNull":Lkotlinx/coroutines/flow/Flow;
    if-ne p0, v1, :cond_1

    .line 165
    return-object v1

    .line 260
    :cond_1
    move-object p0, v2

    move v1, v4

    .line 262
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collect":I
    .restart local v1    # "$i$f$collect":I
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    nop

    .line 170
    .end local v1    # "$i$f$collect":I
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final reduce(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;>(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 33
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 p1, 0x0

    .local p1, "$i$f$collect":I
    const/4 p1, 0x0

    iget-object v1, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$0:Ljava/lang/Object;

    move-object p0, v1

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$f$collect":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .local p0, "$this$reduce":Lkotlinx/coroutines/flow/Flow;
    .local p1, "operation":Lkotlin/jvm/functions/Function3;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    move-object v3, p0

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 173
    .local v4, "$i$f$collect":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$$inlined$collect$1;

    invoke-direct {v5, v2, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    invoke-interface {v3, v5, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$reduce":Lkotlinx/coroutines/flow/Flow;
    .end local p1    # "operation":Lkotlin/jvm/functions/Function3;
    if-ne p0, v1, :cond_1

    .line 19
    return-object v1

    .line 173
    :cond_1
    move-object p0, v2

    move p1, v4

    .line 175
    .end local v2    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collect":I
    .local p0, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "$i$f$collect":I
    :goto_1
    nop

    .line 31
    .end local p1    # "$i$f$collect":I
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq p1, v1, :cond_2

    .line 33
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p1

    .line 31
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v1, "Empty flow can\'t be reduced"

    invoke-direct {p1, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final single(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 63
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v1, 0x0

    .local v1, "$i$f$collect":I
    const/4 v1, 0x0

    iget-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$0:Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "$i$f$collect":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .local p0, "$this$single":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    move-object v3, p0

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 179
    .local v4, "$i$f$collect":I
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$$inlined$collect$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    invoke-interface {v3, v5, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$single":Lkotlinx/coroutines/flow/Flow;
    if-ne p0, v1, :cond_1

    .line 55
    return-object v1

    .line 179
    :cond_1
    move-object p0, v2

    move v1, v4

    .line 181
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collect":I
    .restart local v1    # "$i$f$collect":I
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    nop

    .line 62
    .end local v1    # "$i$f$collect":I
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v2, :cond_2

    .line 63
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    .line 62
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Flow is empty"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final singleOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 83
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    move-object p0, v3

    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v1, 0x0

    .local v1, "$i$f$collectWhile":I
    move-object v2, v3

    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    const/4 v1, 0x0

    iget-object v4, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;

    iget-object v4, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    move-object p0, v4

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v4

    goto :goto_2

    .line 70
    .end local v1    # "$i$f$collectWhile":I
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .local p0, "$this$singleOrNull":Lkotlinx/coroutines/flow/Flow;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    move-object v4, p0

    .local v4, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .line 182
    .local v5, "$i$f$collectWhile":I
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;

    invoke-direct {v6, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 191
    .local v6, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    nop

    .line 192
    :try_start_1
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v6, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    invoke-interface {v4, v7, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local p0    # "$this$singleOrNull":Lkotlinx/coroutines/flow/Flow;
    if-ne v7, v1, :cond_1

    .line 70
    return-object v1

    .line 192
    :cond_1
    move-object p0, v2

    move v1, v5

    move-object v2, v6

    .end local v5    # "$i$f$collectWhile":I
    .end local v6    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .restart local v1    # "$i$f$collectWhile":I
    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .local p0, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    goto :goto_3

    .line 193
    .end local v1    # "$i$f$collectWhile":I
    .end local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "$i$f$collectWhile":I
    .restart local v6    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    :catch_1
    move-exception v4

    move-object p0, v2

    move v1, v5

    move-object v2, v6

    .line 194
    .end local v5    # "$i$f$collectWhile":I
    .end local v6    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .restart local v1    # "$i$f$collectWhile":I
    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .local v4, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    .restart local p0    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_2
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 196
    .end local v4    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 83
    .end local v1    # "$i$f$collectWhile":I
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_2

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_4
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
