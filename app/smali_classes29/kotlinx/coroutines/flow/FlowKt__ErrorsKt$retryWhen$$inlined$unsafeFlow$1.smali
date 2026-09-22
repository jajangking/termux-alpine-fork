.class public final Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->retryWhen(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,112:1\n172#2,15:113\n*E\n"
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
.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function4;

.field final synthetic $this_retryWhen$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$this_retryWhen$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$predicate$inlined:Lkotlin/jvm/functions/Function4;

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
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 105
    iget v4, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

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
    move-object/from16 v4, p0

    .local v4, "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    move-object v9, v6

    .local v9, "cause":Ljava/lang/Throwable;
    move v10, v5

    .local v5, "shallRetry":Z
    .local v7, "attempt":J
    .local v10, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    move-object v11, v6

    .local v11, "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v10, 0x0

    iget-wide v7, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iget-object v12, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    move-object v9, v12

    check-cast v9, Ljava/lang/Throwable;

    iget-object v12, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    move-object v11, v12

    check-cast v11, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v12, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    move-object v4, v12

    check-cast v4, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v5

    move-object v13, v11

    move-object/from16 v5, p1

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    move-wide/from16 v18, v7

    move-object/from16 v7, v17

    move-object v8, v6

    move v6, v10

    move-wide/from16 v10, v18

    goto/16 :goto_3

    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .end local v5    # "shallRetry":Z
    .end local v7    # "attempt":J
    .end local v9    # "cause":Ljava/lang/Throwable;
    .end local v10    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .end local v11    # "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    move-object/from16 v4, p0

    .restart local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    move v9, v5

    .restart local v5    # "shallRetry":Z
    .restart local v7    # "attempt":J
    .local v9, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    move-object v10, v6

    .local v10, "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v9, 0x0

    iget v5, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    iget-wide v7, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    move-object v10, v11

    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    move-object v4, v11

    check-cast v4, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v5

    move-object v13, v10

    move-object/from16 v5, p1

    move-wide v10, v7

    move-object v7, v4

    move-object v8, v6

    move-object v4, v3

    move-object v3, v1

    goto :goto_2

    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .end local v5    # "shallRetry":Z
    .end local v7    # "attempt":J
    .end local v9    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .end local v10    # "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .restart local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    move-object/from16 v5, p1

    .line 108
    .local v5, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    move-object v8, v5

    .local v8, "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v9, 0x0

    .line 113
    .restart local v9    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    const-wide/16 v10, 0x0

    .line 116
    .local v10, "attempt":J
    :goto_1
    const/4 v12, 0x0

    .line 117
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .local v12, "shallRetry":Z
    iget-object v13, v4, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$this_retryWhen$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object v4, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iput v12, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    const/4 v14, 0x1

    iput v14, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    invoke-static {v13, v8, v0}, Lkotlinx/coroutines/flow/FlowKt;->catchImpl(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    if-ne v13, v3, :cond_1

    .line 105
    return-object v3

    .line 117
    :cond_1
    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v13

    move-object v13, v8

    move-object v8, v7

    move-object v7, v4

    move-object/from16 v4, v16

    .line 105
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .end local v8    # "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .local v13, "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_2
    check-cast v1, Ljava/lang/Throwable;

    .line 118
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 119
    iget-object v14, v7, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$predicate$inlined:Lkotlin/jvm/functions/Function4;

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    const/4 v6, 0x2

    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/4 v6, 0x6

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v14, v13, v1, v15, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v14, 0x7

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne v6, v4, :cond_2

    .line 105
    return-object v4

    .line 119
    :cond_2
    move/from16 v16, v9

    move-object v9, v1

    move-object v1, v6

    move/from16 v6, v16

    .end local v1    # "cause":Ljava/lang/Throwable;
    .local v6, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .local v9, "cause":Ljava/lang/Throwable;
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    const/4 v12, 0x1

    .line 121
    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    move-object v1, v9

    move v9, v6

    goto :goto_4

    .line 123
    :cond_3
    throw v9

    .line 126
    .end local v6    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .local v9, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    :cond_4
    :goto_4
    if-nez v12, :cond_5

    .line 127
    .end local v1    # "cause":Ljava/lang/Throwable;
    nop

    .end local v9    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .end local v10    # "attempt":J
    .end local v12    # "shallRetry":Z
    .end local v13    # "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object v1

    .line 126
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v9    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .restart local v10    # "attempt":J
    .restart local v12    # "shallRetry":Z
    .restart local v13    # "$this$retryWhen_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_5
    move-object v1, v8

    .end local v12    # "shallRetry":Z
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    move-object v8, v13

    const/4 v6, 0x0

    move-object/from16 v16, v7

    move-object v7, v1

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v4, v16

    .restart local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
