.class public final Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3\n*L\n1#1,134:1\n28#2,9:135\n*E\n"
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
.field final synthetic $$this$flowScope$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$$this$flowScope$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 143
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

    .local p1, "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    const/4 v1, 0x0

    move v2, v1

    .local v1, "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .local v2, "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    move-object v4, v3

    .line 137
    .local v4, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Job;

    iget-object v4, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iget-object v5, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 0
    .end local v1    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .end local v2    # "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    .end local v4    # "value":Ljava/lang/Object;
    .end local p1    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 73
    .local v2, "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .local p1, "value":Ljava/lang/Object;
    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "$completion":Lkotlin/coroutines/Continuation;
    move-object v5, p1

    .local v5, "value":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 135
    .local v6, "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    iget-object v7, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/Job;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    move-object v8, v7

    .local v8, "$this$invokeSuspend_u24lambda_u2d1_u24lambda_u2d0":Lkotlinx/coroutines/Job;
    const/4 v9, 0x0

    .line 136
    .local v9, "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    new-instance v10, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    invoke-direct {v10}, Lkotlinx/coroutines/flow/internal/ChildCancelledException;-><init>()V

    check-cast v10, Ljava/util/concurrent/CancellationException;

    invoke-interface {v8, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 137
    .end local v4    # "$completion":Lkotlin/coroutines/Continuation;
    iput-object v2, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput-object v7, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-interface {v8, p2}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v8    # "$this$invokeSuspend_u24lambda_u2d1_u24lambda_u2d0":Lkotlinx/coroutines/Job;
    .end local p1    # "value":Ljava/lang/Object;
    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    move-object p1, v2

    move-object v4, v5

    move v1, v6

    move v2, v9

    .line 138
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .end local v9    # "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    .restart local v1    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .local v2, "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    .local v4, "value":Ljava/lang/Object;
    .local p1, "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    :goto_1
    nop

    .line 135
    .end local v2    # "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    move-object v2, p1

    move v6, v1

    move-object v5, v4

    .line 140
    .end local v1    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .end local v4    # "value":Ljava/lang/Object;
    .end local p1    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .local v2, "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    :goto_2
    iget-object p1, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$$this$flowScope$inlined:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    sget-object v9, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$2;

    iget-object v4, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {v1, v4, v10, v5, v3}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$2;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    nop

    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
