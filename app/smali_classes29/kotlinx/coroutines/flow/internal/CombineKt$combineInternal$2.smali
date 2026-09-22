.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 22
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget v7, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/Channel;

    iget-object v11, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v5

    goto/16 :goto_5

    .end local v2    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v6    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    move-object v6, v5

    .local v6, "results":[Ljava/lang/Object;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    iget v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v11, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    iget-object v12, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v5

    goto/16 :goto_4

    .end local v2    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v6    # "results":[Ljava/lang/Object;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    move-object v6, v5

    .local v6, "latestValues":[Ljava/lang/Object;
    move-object v7, v5

    .local v7, "lastReceivedEpoch":[B
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    move v9, v4

    .local v9, "remainingAbsentValues":I
    move-object v10, v5

    .local v10, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    iget v11, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v12, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    move-object v7, v12

    check-cast v7, [B

    iget-object v12, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    move-object v10, v12

    check-cast v10, Lkotlinx/coroutines/channels/Channel;

    iget-object v12, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object v6, v12

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v8

    check-cast v12, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v12}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v12

    move v14, v4

    move-object/from16 v19, v5

    move-object v15, v6

    move-object v4, v7

    move-object v6, v8

    move v8, v11

    move-object/from16 v7, v19

    move-object v5, v10

    goto/16 :goto_1

    .end local v2    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v6    # "latestValues":[Ljava/lang/Object;
    .end local v7    # "lastReceivedEpoch":[B
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "remainingAbsentValues":I
    .end local v10    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget-object v7, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .local v7, "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    array-length v14, v8

    .line 24
    .local v14, "size":I
    if-nez v14, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 25
    :cond_0
    new-array v15, v14, [Ljava/lang/Object;

    .line 26
    .local v15, "latestValues":[Ljava/lang/Object;
    sget-object v9, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v15

    invoke-static/range {v8 .. v13}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 27
    const/4 v8, 0x6

    invoke-static {v14, v5, v5, v8, v5}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v5

    .line 28
    .local v5, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v19, v8

    .line 29
    .local v19, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move/from16 v22, v14

    .line 30
    .local v22, "remainingAbsentValues":I
    if-lez v14, :cond_2

    :cond_1
    move/from16 v18, v4

    .local v18, "i":I
    add-int/2addr v4, v3

    .line 32
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    iget-object v11, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    const/16 v21, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v21}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    move-object v11, v8

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v7

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    if-lt v4, v14, :cond_1

    .line 51
    .end local v18    # "i":I
    :cond_2
    new-array v4, v14, [B

    .line 52
    .local v4, "lastReceivedEpoch":[B
    const/4 v8, 0x0

    move/from16 v9, v22

    .line 53
    .end local v22    # "remainingAbsentValues":I
    .local v8, "currentEpoch":B
    .restart local v9    # "remainingAbsentValues":I
    :goto_0
    nop

    .line 54
    add-int/lit8 v10, v8, 0x1

    int-to-byte v8, v10

    .line 57
    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v15, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput v3, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v5, v10}, Lkotlinx/coroutines/channels/Channel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    .end local v7    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v8    # "currentEpoch":B
    .end local v14    # "size":I
    .end local v19    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    if-ne v12, v0, :cond_3

    .line 22
    return-object v0

    .line 57
    :cond_3
    :goto_1
    invoke-static {v12}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/IndexedValue;

    if-nez v10, :cond_4

    .line 86
    .end local v4    # "lastReceivedEpoch":[B
    .end local v5    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v9    # "remainingAbsentValues":I
    .end local v15    # "latestValues":[Ljava/lang/Object;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 58
    .restart local v4    # "lastReceivedEpoch":[B
    .restart local v5    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v9    # "remainingAbsentValues":I
    .local v10, "element":Lkotlin/collections/IndexedValue;
    .restart local v15    # "latestValues":[Ljava/lang/Object;
    :cond_4
    :goto_2
    nop

    .line 59
    invoke-virtual {v10}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v11

    .line 61
    .local v11, "index":I
    aget-object v12, v15, v11

    .line 62
    .local v12, "previous":Ljava/lang/Object;
    invoke-virtual {v10}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v15, v11

    .line 63
    sget-object v13, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v12, v13, :cond_5

    add-int/lit8 v9, v9, -0x1

    .line 66
    :cond_5
    aget-byte v13, v4, v11

    if-ne v13, v8, :cond_6

    goto :goto_3

    .line 67
    :cond_6
    int-to-byte v13, v8

    aput-byte v13, v4, v11

    .line 68
    invoke-interface {v5}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/collections/IndexedValue;

    if-nez v13, :cond_b

    .line 72
    .end local v11    # "index":I
    .end local v12    # "previous":Ljava/lang/Object;
    :goto_3
    if-nez v9, :cond_a

    .line 77
    iget-object v11, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    .line 78
    .local v11, "results":[Ljava/lang/Object;
    if-nez v11, :cond_8

    .line 79
    iget-object v12, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v13, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v15, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    const/4 v3, 0x2

    iput v3, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v12, v13, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "lastReceivedEpoch":[B
    .end local v5    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v9    # "remainingAbsentValues":I
    .end local v10    # "element":Lkotlin/collections/IndexedValue;
    .end local v15    # "latestValues":[Ljava/lang/Object;
    if-ne v3, v0, :cond_7

    .line 22
    return-object v0

    .line 79
    :cond_7
    move-object v10, v4

    move v4, v14

    move-object v12, v15

    move-object/from16 v27, v11

    move-object v11, v5

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v6, v27

    .end local v11    # "results":[Ljava/lang/Object;
    .local v6, "results":[Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    :goto_4
    move-object v3, v5

    .end local v6    # "results":[Ljava/lang/Object;
    .local v3, "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v19    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v15, v12

    .restart local v15    # "latestValues":[Ljava/lang/Object;
    move-object v5, v10

    .local v5, "lastReceivedEpoch":[B
    .restart local v8    # "currentEpoch":B
    move v14, v4

    .restart local v9    # "remainingAbsentValues":I
    .restart local v14    # "size":I
    move-object v4, v11

    move-object v6, v7

    move-object v7, v3

    const/4 v3, 0x1

    move-object/from16 v27, v5

    move-object v5, v4

    move-object/from16 v4, v27

    .local v4, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    goto/16 :goto_0

    .line 81
    .end local v3    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v5    # "lastReceivedEpoch":[B
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "currentEpoch":B
    .end local v9    # "remainingAbsentValues":I
    .end local v14    # "size":I
    .end local v15    # "latestValues":[Ljava/lang/Object;
    .end local v19    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v6, "$result":Ljava/lang/Object;
    .restart local v11    # "results":[Ljava/lang/Object;
    :cond_8
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    move-object/from16 v20, v15

    move-object/from16 v21, v11

    invoke-static/range {v20 .. v26}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 82
    iget-object v3, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v15, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    const/4 v12, 0x3

    iput v12, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v3, v10, v11, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v11    # "results":[Ljava/lang/Object;
    if-ne v3, v0, :cond_9

    .line 22
    return-object v0

    .line 82
    :cond_9
    move-object v10, v5

    move-object v5, v7

    move v7, v8

    move v8, v9

    move-object v11, v15

    move-object v9, v4

    move v4, v14

    :goto_5
    move-object v3, v5

    .restart local v3    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v19    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v15, v11

    .restart local v15    # "latestValues":[Ljava/lang/Object;
    move-object v5, v9

    .restart local v5    # "lastReceivedEpoch":[B
    .local v7, "currentEpoch":B
    move v14, v4

    .restart local v14    # "size":I
    move v9, v8

    .restart local v9    # "remainingAbsentValues":I
    move-object v4, v10

    move v8, v7

    move-object v7, v3

    const/4 v3, 0x1

    move-object/from16 v27, v5

    move-object v5, v4

    move-object/from16 v4, v27

    .restart local v4    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    goto/16 :goto_0

    .line 72
    .end local v3    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v14    # "size":I
    .local v4, "lastReceivedEpoch":[B
    .local v5, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v7, "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v8    # "currentEpoch":B
    :cond_a
    const/4 v3, 0x1

    .restart local v14    # "size":I
    goto/16 :goto_0

    .line 68
    .end local v7    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v8    # "currentEpoch":B
    .end local v14    # "size":I
    .end local v19    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v10    # "element":Lkotlin/collections/IndexedValue;
    .local v11, "index":I
    .restart local v12    # "previous":Ljava/lang/Object;
    :cond_b
    move-object v10, v13

    const/4 v3, 0x1

    .end local v11    # "index":I
    .end local v12    # "previous":Ljava/lang/Object;
    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
