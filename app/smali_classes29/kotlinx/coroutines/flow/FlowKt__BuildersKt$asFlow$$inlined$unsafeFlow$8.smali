.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow([J)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,112:1\n178#2:113\n179#2,2:115\n181#2:118\n13564#3:114\n13565#3:117\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n178#1:114\n178#1:117\n*E\n"
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
.field final synthetic $this_asFlow$inlined:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;->$this_asFlow$inlined:[J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 105
    iget v4, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x0

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
    move v4, v7

    .local v4, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    move v8, v7

    .local v8, "$i$f$forEach":I
    move-object v9, v6

    .local v7, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .local v9, "$this$asFlow_u24lambda_u2d15":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v10, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$1:I

    iget v11, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$0:I

    iget-object v12, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$1:Ljava/lang/Object;

    check-cast v12, [J

    iget-object v13, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$0:Ljava/lang/Object;

    move-object v9, v13

    check-cast v9, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move v13, v8

    move v14, v11

    move-object v15, v12

    move v12, v4

    move-object v8, v6

    move-object v11, v8

    move-object/from16 v6, p1

    move-object v4, v3

    move-object v3, v1

    const/4 v1, 0x1

    goto :goto_2

    .end local v4    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .end local v7    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "$this$asFlow_u24lambda_u2d15":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    move-object/from16 v6, p1

    .line 108
    .local v6, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .local v8, "$completion":Lkotlin/coroutines/Continuation;
    move-object v9, v6

    .restart local v9    # "$this$asFlow_u24lambda_u2d15":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v10, 0x0

    .line 113
    .local v10, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    iget-object v11, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;->$this_asFlow$inlined:[J

    .local v11, "$this$forEach$iv":[J
    const/4 v12, 0x0

    .line 114
    .local v12, "$i$f$forEach":I
    array-length v13, v11

    move-object v14, v11

    :goto_1
    if-ge v7, v13, :cond_2

    aget-wide v15, v14, v7

    .local v15, "element$iv":J
    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    .local v17, "value":J
    const/16 v19, 0x0

    .line 115
    .end local v8    # "$completion":Lkotlin/coroutines/Continuation;
    .local v19, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$1:Ljava/lang/Object;

    iput v13, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$0:I

    iput v7, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$1:I

    move-object/from16 p1, v1

    const/4 v1, 0x1

    .end local v1    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    invoke-interface {v9, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .end local v6    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v11    # "$this$forEach$iv":[J
    .end local v15    # "element$iv":J
    .end local v17    # "value":J
    if-ne v5, v3, :cond_1

    .line 105
    return-object v3

    .line 115
    :cond_1
    move-object v5, v4

    move-object v15, v14

    move-object v4, v3

    move v14, v13

    move-object/from16 v3, p1

    move v13, v12

    move v12, v10

    move v10, v7

    move/from16 v7, v19

    .line 116
    .end local v10    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .end local v19    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v7    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .local v12, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .local v13, "$i$f$forEach":I
    :goto_2
    nop

    .end local v7    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    add-int/lit8 v7, v10, 0x1

    .local v5, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .restart local v8    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v11    # "$this$forEach$iv":[J
    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v10, v12

    move v12, v13

    move v13, v14

    move-object v14, v15

    .restart local v6    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    goto :goto_1

    .line 114
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .end local v13    # "$i$f$forEach":I
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .restart local v10    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .local v12, "$i$f$forEach":I
    :cond_2
    move-object/from16 p1, v1

    .line 117
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .end local v6    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v8    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v11    # "$this$forEach$iv":[J
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 118
    .end local v12    # "$i$f$forEach":I
    nop

    .end local v9    # "$this$asFlow_u24lambda_u2d15":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v10    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
