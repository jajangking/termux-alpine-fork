.class final Lkotlinx/coroutines/flow/StateFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "StateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableStateFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/StateFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableStateFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,387:1\n16#2:388\n16#2:394\n20#3:389\n20#3:392\n13536#4,2:390\n329#5:393\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n267#1:388\n348#1:394\n276#1:389\n304#1:392\n300#1:390,2\n337#1:393\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u0010052\u0008\u0012\u0004\u0012\u00028\u0000062\u0008\u0012\u0004\u0012\u00028\u0000072\u0008\u0012\u0004\u0012\u00028\u000008B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001b\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ-\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008%\u0010&J!\u0010)\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00022\u0006\u0010(\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008)\u0010\u000fR\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000*8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0016\u0010.\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R*\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u00008V@VX\u0096\u000e\u00a2\u0006\u0012\u0012\u0004\u00083\u0010$\u001a\u0004\u00080\u00101\"\u0004\u00082\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00064"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/StateFlowImpl;",
        "T",
        "",
        "initialState",
        "<init>",
        "(Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expect",
        "update",
        "",
        "compareAndSet",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/flow/StateFlowSlot;",
        "createSlot",
        "()Lkotlinx/coroutines/flow/StateFlowSlot;",
        "",
        "size",
        "",
        "createSlotArray",
        "(I)[Lkotlinx/coroutines/flow/StateFlowSlot;",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/Flow;",
        "fuse",
        "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;",
        "resetReplayCache",
        "()V",
        "tryEmit",
        "(Ljava/lang/Object;)Z",
        "expectedState",
        "newState",
        "updateState",
        "",
        "getReplayCache",
        "()Ljava/util/List;",
        "replayCache",
        "sequence",
        "I",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "getValue$annotations",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;"
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
.field private volatile synthetic _state:Ljava/lang/Object;

.field private sequence:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initialState"    # Ljava/lang/Object;

    .line 261
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 262
    iput-object p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public static synthetic getValue$annotations()V
    .locals 0

    return-void
.end method

.method private final updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "expectedState"    # Ljava/lang/Object;
    .param p2, "newState"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "curSequence":I
    const/4 v1, 0x0

    .local v1, "curSlots":Ljava/lang/Object;
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v1

    .line 276
    const/4 v2, 0x0

    .line 389
    .local v2, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v3, 0x0

    .line 277
    .local v3, "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    :try_start_0
    iget-object v4, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 278
    .local v4, "oldState":Ljava/lang/Object;
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v4    # "oldState":Ljava/lang/Object;
    monitor-exit p0

    return v5

    .line 279
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v4    # "oldState":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v4    # "oldState":Ljava/lang/Object;
    monitor-exit p0

    return v7

    .line 280
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v4    # "oldState":Ljava/lang/Object;
    :cond_1
    :try_start_2
    iput-object p2, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 281
    iget v6, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    move v0, v6

    .line 282
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_6

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 284
    iput v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    .line 290
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    move-object v1, v6

    .line 291
    nop

    .end local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v4    # "oldState":Ljava/lang/Object;
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 389
    nop

    .line 298
    .end local v2    # "$i$f$synchronized":I
    :goto_0
    nop

    .line 300
    move-object v2, v1

    check-cast v2, [Lkotlinx/coroutines/flow/StateFlowSlot;

    if-nez v2, :cond_2

    goto :goto_3

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .line 390
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v8, v2, v6

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Lkotlinx/coroutines/flow/StateFlowSlot;
    const/4 v10, 0x0

    .line 301
    .local v10, "$i$a$-forEach-StateFlowImpl$updateState$2":I
    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowSlot;->makePending()V

    .line 302
    :goto_2
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "it":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v10    # "$i$a$-forEach-StateFlowImpl$updateState$2":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 391
    :cond_4
    nop

    .line 304
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    :goto_3
    const/4 v2, 0x0

    .line 392
    .local v2, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v3, 0x0

    .line 305
    .local v3, "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    :try_start_3
    iget v4, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    if-ne v4, v0, :cond_5

    .line 306
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    nop

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    monitor-exit p0

    return v7

    .line 310
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    :cond_5
    move v0, v4

    .line 311
    :try_start_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v4

    move-object v1, v4

    .line 312
    nop

    .end local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 392
    nop

    .end local v2    # "$i$f$synchronized":I
    goto :goto_0

    .line 312
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 287
    .local v3, "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v4    # "oldState":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v5, v0, 0x2

    :try_start_5
    iput v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 288
    nop

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v4    # "oldState":Ljava/lang/Object;
    monitor-exit p0

    return v7

    .line 291
    .restart local v2    # "$i$f$synchronized":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 333
    iget v2, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 357
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    move-object p1, v3

    .local p1, "oldState":Ljava/lang/Object;
    iget-object p1, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iget-object v2, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v4, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowImpl;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_8

    .end local p1    # "oldState":Ljava/lang/Object;
    :pswitch_1
    move-object p1, v3

    .restart local p1    # "oldState":Ljava/lang/Object;
    iget-object v2, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iget-object v4, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/Job;

    iget-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v6, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v7, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/StateFlowImpl;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    .line 353
    .end local p1    # "oldState":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    move-object v4, v5

    move-object v6, v7

    goto/16 :goto_9

    .line 333
    :pswitch_2
    move-object v2, p0

    .local v2, "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v4, v3

    .local v4, "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    iget-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowImpl;

    .end local v2    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .local v6, "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .end local v4    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v6    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    .line 334
    .restart local v6    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 335
    .restart local v4    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    nop

    .line 336
    :try_start_3
    instance-of v2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object v6, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 333
    return-object v1

    .line 337
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 393
    .local v2, "$i$f$currentCoroutineContext":I
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 337
    .end local v2    # "$i$f$currentCoroutineContext":I
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v5, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 338
    .local v2, "collectorJob":Lkotlinx/coroutines/Job;
    const/4 v5, 0x0

    move-object v10, v5

    move-object v5, p1

    move-object p1, v10

    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    .line 340
    .local v2, "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .local v4, "collectorJob":Lkotlinx/coroutines/Job;
    .local v5, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "oldState":Ljava/lang/Object;
    :goto_2
    nop

    .line 343
    :try_start_4
    iget-object v7, v6, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 345
    .local v7, "newState":Ljava/lang/Object;
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 347
    :goto_3
    if-eqz p1, :cond_4

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_7

    .line 348
    .end local v2    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v6    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :cond_4
    :goto_4
    sget-object v8, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v8, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    const/4 v9, 0x0

    .line 394
    .local v9, "$i$f$unbox":I
    if-ne v7, v8, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    move-object v8, v7

    .line 348
    .end local v8    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v9    # "$i$f$unbox":I
    :goto_5
    iput-object v6, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput-object v7, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    invoke-interface {v5, v8, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v4    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v7    # "newState":Ljava/lang/Object;
    if-ne v8, v1, :cond_6

    .line 333
    return-object v1

    .line 348
    :cond_6
    move-object v10, v5

    move-object v5, v2

    move-object v2, v7

    move-object v7, v6

    move-object v6, v10

    .line 349
    :goto_6
    move-object p1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 352
    :goto_7
    :try_start_5
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowSlot;->takePending()Z

    move-result v7

    if-nez v7, :cond_8

    .line 353
    iput-object v6, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    invoke-virtual {v4, p2}, Lkotlinx/coroutines/flow/StateFlowSlot;->awaitPending(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v7, v1, :cond_7

    .line 333
    return-object v1

    .line 353
    :cond_7
    :goto_8
    nop

    .local v2, "collectorJob":Lkotlinx/coroutines/Job;
    .restart local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v6    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    .local v4, "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    goto :goto_2

    .line 352
    .end local v4    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    :cond_8
    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    .restart local v4    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    goto :goto_2

    .line 353
    .end local v2    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local v4    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .end local p1    # "oldState":Ljava/lang/Object;
    :catchall_1
    move-exception p1

    move-object v4, v2

    goto :goto_9

    :catchall_2
    move-exception p1

    .line 357
    :goto_9
    check-cast v4, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    invoke-virtual {v6, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 271
    if-nez p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-nez p2, :cond_1

    sget-object v1, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createSlot()Lkotlinx/coroutines/flow/StateFlowSlot;
    .locals 1

    .line 361
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowSlot;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StateFlowSlot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->createSlot()Lkotlinx/coroutines/flow/StateFlowSlot;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method protected createSlotArray(I)[Lkotlinx/coroutines/flow/StateFlowSlot;
    .locals 1
    .param p1, "size"    # I

    .line 362
    new-array v0, p1, [Lkotlinx/coroutines/flow/StateFlowSlot;

    return-object v0
.end method

.method public bridge synthetic createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1
    .param p1, "size"    # I

    .line 259
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->createSlotArray(I)[Lkotlinx/coroutines/flow/StateFlowSlot;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
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

    .line 325
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 326
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "capacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 365
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/flow/StateFlowKt;->fuseStateFlow(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getReplayCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 267
    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    iget-object v1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 388
    .local v2, "$i$f$unbox":I
    if-ne v1, v0, :cond_0

    const/4 v3, 0x0

    move-object v1, v3

    .line 267
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$unbox":I
    :cond_0
    return-object v1
.end method

.method public resetReplayCache()V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 268
    if-nez p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public tryEmit(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 321
    const/4 v0, 0x1

    return v0
.end method
