.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow(Lkotlin/ranges/IntRange;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n187#2:113\n188#2,2:115\n190#2:118\n1849#3:114\n1850#3:117\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n187#1:114\n187#1:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $this_asFlow$inlined:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;->$this_asFlow$inlined:Lkotlin/ranges/IntRange;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 105
    iget v4, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->label:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 109
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x0

    move v6, v4

    .local v6, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$9$1":I
    move v7, v4

    .local v4, "$i$f$forEach":I
    .local v7, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$9":I
    move-object v8, v5

    .local v8, "$this$asFlow_u24lambda_u2d17":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->L$0:Ljava/lang/Object;

    move-object v8, v10

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v4

    move v14, v6

    move-object v11, v9

    move-object v4, v2

    move-object v6, v5

    move-object v9, v6

    move-object/from16 v5, p1

    goto :goto_2

    .end local v4    # "$i$f$forEach":I
    .end local v6    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$9$1":I
    .end local v7    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$9":I
    .end local v8    # "$this$asFlow_u24lambda_u2d17":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;
    move-object/from16 v5, p1

    .line 108
    .local v5, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .local v6, "$completion":Lkotlin/coroutines/Continuation;
    move-object v7, v5

    .local v7, "$this$asFlow_u24lambda_u2d17":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v8, 0x0

    .line 113
    .local v8, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$9":I
    iget-object v9, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;->$this_asFlow$inlined:Lkotlin/ranges/IntRange;

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 114
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v16, v8

    move-object v8, v7

    move/from16 v7, v16

    .local v7, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$9":I
    .local v8, "$this$asFlow_u24lambda_u2d17":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .local v13, "value":I
    const/4 v14, 0x0

    .line 115
    .end local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .local v14, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$9$1":I
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->L$1:Ljava/lang/Object;

    move-object/from16 p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x1

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9$1;->label:I

    invoke-interface {v8, v15, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;
    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v13    # "value":I
    if-ne v1, v3, :cond_1

    .line 105
    return-object v3

    .line 115
    :cond_1
    move-object/from16 v1, p1

    .line 116
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_2
    nop

    .end local v14    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$9$1":I
    .restart local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;
    .restart local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    goto :goto_1

    .line 114
    :cond_2
    move-object/from16 p1, v1

    .line 117
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9;
    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 118
    .end local v10    # "$i$f$forEach":I
    nop

    .end local v7    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$9":I
    .end local v8    # "$this$asFlow_u24lambda_u2d17":Lkotlinx/coroutines/flow/FlowCollector;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
