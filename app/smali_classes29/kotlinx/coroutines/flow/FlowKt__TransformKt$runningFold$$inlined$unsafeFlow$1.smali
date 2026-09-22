.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__TransformKt;->runningFold(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,112:1\n102#2,3:113\n108#2:119\n72#3,3:116\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n104#1:116,3\n*E\n"
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
.field final synthetic $initial$inlined:Ljava/lang/Object;

.field final synthetic $operation$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_runningFold$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;->$initial$inlined:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;->$this_runningFold$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;->$operation$inlined:Lkotlin/jvm/functions/Function3;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 109
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    move p1, v3

    .local p1, "$i$f$collect":I
    move v1, v3

    .local v1, "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    const/4 v1, 0x0

    const/4 p1, 0x0

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    .end local p1    # "$i$f$collect":I
    :pswitch_1
    move-object p1, p0

    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;
    move v2, v3

    .local v2, "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    move-object v3, v4

    .local v3, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, v4

    .local v5, "$this$runningFold_u24lambda_u2d10":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v2, 0x0

    iget-object v6, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    move-object p1, v6

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    .end local v3    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "$this$runningFold_u24lambda_u2d10":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 108
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    move-object v5, p1

    .restart local v5    # "$this$runningFold_u24lambda_u2d10":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v6, 0x0

    .line 113
    .local v6, "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v7, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v8, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;->$initial$inlined:Ljava/lang/Object;

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v7, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v5, v3, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    if-ne p1, v1, :cond_1

    .line 105
    return-object v1

    .line 114
    :cond_1
    move-object p1, v2

    move v2, v6

    move-object v3, v7

    .line 115
    .end local v6    # "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    .end local v7    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    .local v3, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;
    :goto_1
    iget-object v6, p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;->$this_runningFold$inlined:Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    move-object v7, p2

    .local v7, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/4 v8, 0x0

    .line 116
    .local v8, "$i$f$collect":I
    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$lambda-10$$inlined$collect$1;

    iget-object v10, p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;->$operation$inlined:Lkotlin/jvm/functions/Function3;

    invoke-direct {v9, v3, v10, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$lambda-10$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;)V

    check-cast v9, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v6, v9, v7}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "$this$runningFold_u24lambda_u2d10":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$completion$iv":Lkotlin/coroutines/Continuation;
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;
    if-ne p1, v1, :cond_2

    .line 105
    return-object v1

    .line 116
    :cond_2
    move v1, v2

    move p1, v8

    .line 118
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    .end local v8    # "$i$f$collect":I
    .restart local v1    # "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    .local p1, "$i$f$collect":I
    :goto_2
    nop

    .line 119
    .end local p1    # "$i$f$collect":I
    nop

    .end local v1    # "$i$a$-unsafeFlow-FlowKt__TransformKt$runningFold$1":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
