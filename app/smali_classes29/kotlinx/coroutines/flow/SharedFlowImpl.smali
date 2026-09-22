.class final Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;,
        Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,701:1\n20#2:702\n20#2:704\n20#2:722\n20#2:725\n20#2:733\n20#2:743\n20#2:753\n329#3:703\n1#4:705\n96#5,2:706\n98#5,2:709\n100#5:712\n96#5,2:726\n98#5,2:729\n100#5:732\n96#5,2:746\n98#5,2:749\n100#5:752\n13536#6:708\n13537#6:711\n13536#6:728\n13537#6:731\n13536#6:748\n13537#6:751\n310#7,9:713\n319#7,2:723\n310#7,9:734\n319#7,2:744\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n327#1:702\n360#1:704\n454#1:722\n475#1:725\n595#1:733\n630#1:743\n658#1:753\n342#1:703\n422#1:706,2\n422#1:709,2\n422#1:712\n498#1:726,2\n498#1:729,2\n498#1:732\n645#1:746,2\n645#1:749,2\n645#1:752\n422#1:708\n422#1:711\n498#1:728\n498#1:731\n645#1:748\n645#1:751\n452#1:713,9\n452#1:723,2\n629#1:734,9\n629#1:744,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u0008\u0012\u0004\u0012\u0002H\u00010\u0006:\u0001bB\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0019\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)J\u0010\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0002J\u0008\u0010-\u001a\u00020\'H\u0002J\u001f\u0010.\u001a\u00020\'2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u000000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J\u0010\u00102\u001a\u00020\'2\u0006\u00103\u001a\u00020\u0012H\u0002J\u0008\u00104\u001a\u00020\u0003H\u0014J\u001d\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000e2\u0006\u00106\u001a\u00020\u0008H\u0014\u00a2\u0006\u0002\u00107J\u0008\u00108\u001a\u00020\'H\u0002J\u0019\u00109\u001a\u00020\'2\u0006\u0010:\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;J\u0019\u0010<\u001a\u00020\'2\u0006\u0010:\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;J\u0012\u0010=\u001a\u00020\'2\u0008\u0010>\u001a\u0004\u0018\u00010\u000fH\u0002J1\u0010?\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\'\u0018\u00010@0\u000e2\u0014\u0010A\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\'\u0018\u00010@0\u000eH\u0002\u00a2\u0006\u0002\u0010BJ&\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000D2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010H\u001a\u0004\u0018\u00010\u000f2\u0006\u0010I\u001a\u00020\u0012H\u0002J7\u0010J\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0010\u0010K\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010L\u001a\u00020\u00082\u0006\u0010M\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010NJ\u0008\u0010O\u001a\u00020\'H\u0016J\u0015\u0010P\u001a\u00020Q2\u0006\u0010:\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010RJ\u0015\u0010S\u001a\u00020Q2\u0006\u0010:\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010RJ\u0015\u0010T\u001a\u00020Q2\u0006\u0010:\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010RJ\u0010\u0010U\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u0003H\u0002J\u0012\u0010V\u001a\u0004\u0018\u00010\u000f2\u0006\u0010(\u001a\u00020\u0003H\u0002J(\u0010W\u001a\u00020\'2\u0006\u0010X\u001a\u00020\u00122\u0006\u0010Y\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u00122\u0006\u0010[\u001a\u00020\u0012H\u0002J%\u0010\\\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\'\u0018\u00010@0\u000e2\u0006\u0010]\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008^\u0010_J\r\u0010`\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008aR\u001a\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0014R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0014R\u000e\u0010\u001b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010#\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006c"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "T",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;",
        "replay",
        "",
        "bufferCapacity",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "(IILkotlinx/coroutines/channels/BufferOverflow;)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "bufferEndIndex",
        "",
        "getBufferEndIndex",
        "()J",
        "bufferSize",
        "head",
        "getHead",
        "minCollectorIndex",
        "queueEndIndex",
        "getQueueEndIndex",
        "queueSize",
        "replayCache",
        "",
        "getReplayCache",
        "()Ljava/util/List;",
        "replayIndex",
        "replaySize",
        "getReplaySize",
        "()I",
        "totalSize",
        "getTotalSize",
        "awaitValue",
        "",
        "slot",
        "(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelEmitter",
        "emitter",
        "Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;",
        "cleanupTailLocked",
        "collect",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "correctCollectorIndexesOnDropOldest",
        "newHead",
        "createSlot",
        "createSlotArray",
        "size",
        "(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "dropOldestLocked",
        "emit",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitSuspend",
        "enqueueLocked",
        "item",
        "findSlotsToResumeLocked",
        "Lkotlin/coroutines/Continuation;",
        "resumesIn",
        "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;",
        "fuse",
        "Lkotlinx/coroutines/flow/Flow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "getPeekedValueLockedAt",
        "index",
        "growBuffer",
        "curBuffer",
        "curSize",
        "newSize",
        "([Ljava/lang/Object;II)[Ljava/lang/Object;",
        "resetReplayCache",
        "tryEmit",
        "",
        "(Ljava/lang/Object;)Z",
        "tryEmitLocked",
        "tryEmitNoCollectorsLocked",
        "tryPeekLocked",
        "tryTakeValue",
        "updateBufferLocked",
        "newReplayIndex",
        "newMinCollectorIndex",
        "newBufferEndIndex",
        "newQueueEndIndex",
        "updateCollectorIndexLocked",
        "oldIndex",
        "updateCollectorIndexLocked$kotlinx_coroutines_core",
        "(J)[Lkotlin/coroutines/Continuation;",
        "updateNewCollectorIndexLocked",
        "updateNewCollectorIndexLocked$kotlinx_coroutines_core",
        "Emitter",
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
.field private buffer:[Ljava/lang/Object;

.field private final bufferCapacity:I

.field private bufferSize:I

.field private minCollectorIndex:J

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field private queueSize:I

.field private final replay:I

.field private replayIndex:J


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0
    .param p1, "replay"    # I
    .param p2, "bufferCapacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;

    .line 282
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 279
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 280
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 281
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 278
    return-void
.end method

.method public static final synthetic access$awaitValue(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 278
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "emitter"    # Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V

    return-void
.end method

.method public static final synthetic access$emitSuspend(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 278
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "item"    # Ljava/lang/Object;

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "resumesIn"    # [Lkotlin/coroutines/Continuation;

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 278
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    return v0
.end method

.method public static final synthetic access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 278
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 278
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return v0
.end method

.method public static final synthetic access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 278
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "<set-?>"    # I

    .line 278
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return-void
.end method

.method public static final synthetic access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "value"    # Ljava/lang/Object;

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlowSlot;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 629
    const/4 v0, 0x0

    .line 734
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 735
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 741
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 742
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 630
    .local v5, "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$awaitValue$2":I
    const/4 v6, 0x0

    .line 743
    .local v6, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v7, 0x0

    .line 631
    .local v7, "$i$a$-synchronized-SharedFlowImpl$awaitValue$2$1":I
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v8

    .line 632
    .local v8, "index":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_0

    .line 633
    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v10, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 638
    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v10, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 639
    goto :goto_0

    .line 635
    :cond_0
    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v11}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 636
    nop

    .line 639
    .end local v7    # "$i$a$-synchronized-SharedFlowImpl$awaitValue$2$1":I
    .end local v8    # "index":J
    :goto_0
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 743
    nop

    .line 640
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 744
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$awaitValue$2":I
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 734
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 745
    :cond_1
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 640
    return-object v0

    .line 639
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v5    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$awaitValue$2":I
    .restart local v6    # "$i$f$synchronized":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private final cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .locals 6
    .param p1, "emitter"    # Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 475
    const/4 v0, 0x0

    .line 725
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 476
    .local v1, "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    :try_start_0
    iget-wide v2, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    monitor-exit p0

    return-void

    .line 477
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 478
    .local v2, "buffer":[Ljava/lang/Object;
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, p1, :cond_1

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    .end local v2    # "buffer":[Ljava/lang/Object;
    monitor-exit p0

    return-void

    .line 479
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    .restart local v2    # "buffer":[Ljava/lang/Object;
    :cond_1
    :try_start_2
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v2, v3, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 480
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 481
    nop

    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    .end local v2    # "buffer":[Ljava/lang/Object;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 725
    nop

    .line 481
    .end local v0    # "$i$f$synchronized":I
    return-void

    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final cleanupTailLocked()V
    .locals 5

    .line 584
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 586
    .local v0, "buffer":[Ljava/lang/Object;
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_1

    .line 587
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 588
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 590
    :cond_1
    return-void
.end method

.method private final correctCollectorIndexesOnDropOldest(J)V
    .locals 18
    .param p1, "newHead"    # J

    .line 422
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .local v3, "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    const/4 v4, 0x0

    .line 706
    .local v4, "$i$f$forEachSlotLocked":I
    invoke-static {v3}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 707
    :cond_0
    invoke-static {v3}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .local v5, "$this$forEach$iv$iv":[Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    .line 708
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v5, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v11, 0x0

    .line 709
    .local v11, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    if-eqz v10, :cond_3

    move-object v12, v10

    check-cast v12, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local v12, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    const/4 v13, 0x0

    .line 424
    .local v13, "$i$a$-forEachSlotLocked-SharedFlowImpl$correctCollectorIndexesOnDropOldest$1":I
    iget-wide v14, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_2

    iget-wide v14, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    cmp-long v14, v14, v1

    if-gez v14, :cond_2

    .line 425
    iput-wide v1, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 427
    :cond_2
    nop

    .line 710
    .end local v12    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v13    # "$i$a$-forEachSlotLocked-SharedFlowImpl$correctCollectorIndexesOnDropOldest$1":I
    :cond_3
    nop

    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v11    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 711
    :cond_4
    nop

    .line 712
    .end local v5    # "$this$forEach$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    :goto_1
    nop

    .line 428
    .end local v3    # "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    .end local v4    # "$i$f$forEachSlotLocked":I
    :goto_2
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 429
    return-void
.end method

.method private final dropOldestLocked()V
    .locals 5

    .line 413
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 414
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 415
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 416
    .local v0, "newHead":J
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 417
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->correctCollectorIndexesOnDropOldest(J)V

    .line 418
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 705
    const/4 v2, 0x0

    .line 418
    .local v2, "$i$a$-assert-SharedFlowImpl$dropOldestLocked$1":I
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .end local v2    # "$i$a$-assert-SharedFlowImpl$dropOldestLocked$1":I
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 419
    :cond_4
    :goto_1
    return-void
.end method

.method private final emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
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

    .line 452
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 713
    .local v8, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v9, p2

    .local v9, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v10, 0x0

    .line 714
    .local v10, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v9}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v11, 0x1

    invoke-direct {v0, v1, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v12, v0

    .line 720
    .local v12, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 721
    move-object v13, v12

    check-cast v13, Lkotlinx/coroutines/CancellableContinuation;

    .local v13, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v14, 0x0

    .line 453
    .local v14, "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$emitSuspend$2":I
    const/4 v0, 0x0

    .local v0, "resumes":Ljava/lang/Object;
    sget-object v15, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 454
    .end local v0    # "resumes":Ljava/lang/Object;
    .local v15, "resumes":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 722
    .local v16, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v0, 0x0

    .line 456
    .local v0, "$i$a$-synchronized-SharedFlowImpl$emitSuspend$2$emitter$1":I
    :try_start_0
    invoke-static/range {p0 .. p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    move-object v1, v13

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 458
    invoke-static {v7, v15}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v1

    .line 459
    .end local v15    # "resumes":Ljava/lang/Object;
    .local v1, "resumes":Ljava/lang/Object;
    const/4 v2, 0x0

    goto :goto_0

    .line 462
    .end local v1    # "resumes":Ljava/lang/Object;
    .restart local v15    # "resumes":Ljava/lang/Object;
    :cond_0
    new-instance v17, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    move-object v6, v13

    check-cast v6, Lkotlin/coroutines/Continuation;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v17

    .local v1, "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    const/4 v2, 0x0

    .line 463
    .local v2, "$i$a$-also-SharedFlowImpl$emitSuspend$2$emitter$1$1":I
    invoke-static {v7, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V

    .line 464
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v7, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V

    .line 466
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v7, v15}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v3

    .line 467
    :cond_1
    nop

    .line 462
    .end local v1    # "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    .end local v2    # "$i$a$-also-SharedFlowImpl$emitSuspend$2$emitter$1$1":I
    move-object v1, v15

    move-object/from16 v2, v17

    .end local v0    # "$i$a$-synchronized-SharedFlowImpl$emitSuspend$2$emitter$1":I
    .end local v15    # "resumes":Ljava/lang/Object;
    .local v1, "resumes":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    .line 722
    nop

    .line 454
    .end local v16    # "$i$f$synchronized":I
    move-object v0, v2

    .line 470
    .local v0, "emitter":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 705
    .local v2, "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    const/4 v3, 0x0

    .line 470
    .local v3, "$i$a$-let-SharedFlowImpl$emitSuspend$2$1":I
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/DisposableHandle;

    invoke-static {v13, v4}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 472
    .end local v2    # "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    .end local v3    # "$i$a$-let-SharedFlowImpl$emitSuspend$2$1":I
    :goto_1
    const/4 v2, 0x0

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .local v4, "cont":Lkotlin/coroutines/Continuation;
    add-int/lit8 v2, v2, 0x1

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 473
    .end local v4    # "cont":Lkotlin/coroutines/Continuation;
    :cond_4
    nop

    .line 723
    .end local v0    # "emitter":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    .end local v1    # "resumes":Ljava/lang/Object;
    .end local v13    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v14    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$emitSuspend$2":I
    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 713
    .end local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v10    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v12    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 724
    :cond_5
    nop

    .end local v8    # "$i$f$suspendCancellableCoroutine":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-object v0

    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 473
    return-object v0

    .line 462
    .restart local v8    # "$i$f$suspendCancellableCoroutine":I
    .restart local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v10    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v12    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v13    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v14    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$emitSuspend$2":I
    .restart local v15    # "resumes":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final enqueueLocked(Ljava/lang/Object;)V
    .locals 6
    .param p1, "item"    # Ljava/lang/Object;

    .line 433
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v0

    .line 434
    .local v0, "curSize":I
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 435
    .local v1, "curBuffer":[Ljava/lang/Object;
    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 436
    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 434
    .end local v1    # "curBuffer":[Ljava/lang/Object;
    :cond_1
    :goto_0
    nop

    .line 438
    .local v1, "buffer":[Ljava/lang/Object;
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 439
    return-void
.end method

.method private final findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 20
    .param p1, "resumesIn"    # [Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 643
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "resumes":Ljava/lang/Object;
    move-object/from16 v1, p1

    .line 644
    const/4 v2, 0x0

    move-object/from16 v3, p1

    .local v2, "resumeCount":I
    array-length v2, v3

    .line 645
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .local v4, "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    const/4 v5, 0x0

    .line 746
    .local v5, "$i$f$forEachSlotLocked":I
    invoke-static {v4}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_5

    .line 747
    :cond_0
    invoke-static {v4}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_4

    .local v6, "$this$forEach$iv$iv":[Ljava/lang/Object;
    :cond_1
    const/4 v7, 0x0

    .line 748
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_6

    aget-object v10, v6, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v12, 0x0

    .line 749
    .local v12, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    if-eqz v11, :cond_5

    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local v13, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    const/4 v14, 0x0

    .line 646
    .local v14, "$i$a$-forEachSlotLocked-SharedFlowImpl$findSlotsToResumeLocked$1":I
    iget-object v15, v13, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    if-nez v15, :cond_2

    move-object/from16 v16, v1

    goto :goto_2

    .line 647
    .local v15, "cont":Lkotlin/coroutines/Continuation;
    :cond_2
    invoke-direct {v0, v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    move-object/from16 v16, v1

    goto :goto_2

    .line 648
    :cond_3
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-lt v2, v0, :cond_4

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    move-object/from16 v16, v1

    .end local v1    # "resumes":Ljava/lang/Object;
    .local v16, "resumes":Ljava/lang/Object;
    const/4 v1, 0x2

    mul-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .end local v16    # "resumes":Ljava/lang/Object;
    .restart local v1    # "resumes":Ljava/lang/Object;
    goto :goto_1

    :cond_4
    move-object/from16 v16, v1

    .line 649
    :goto_1
    move-object v0, v1

    check-cast v0, [Lkotlin/coroutines/Continuation;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "resumeCount":I
    .local v3, "resumeCount":I
    aput-object v15, v0, v2

    .line 650
    const/4 v0, 0x0

    iput-object v0, v13, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 651
    move v2, v3

    goto :goto_3

    .line 749
    .end local v3    # "resumeCount":I
    .end local v13    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v14    # "$i$a$-forEachSlotLocked-SharedFlowImpl$findSlotsToResumeLocked$1":I
    .end local v15    # "cont":Lkotlin/coroutines/Continuation;
    .restart local v2    # "resumeCount":I
    :cond_5
    move-object/from16 v16, v1

    .line 750
    .end local v1    # "resumes":Ljava/lang/Object;
    .restart local v16    # "resumes":Ljava/lang/Object;
    :goto_2
    move-object/from16 v1, v16

    .end local v16    # "resumes":Ljava/lang/Object;
    .restart local v1    # "resumes":Ljava/lang/Object;
    :goto_3
    nop

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v12    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    goto :goto_0

    .line 751
    :cond_6
    move-object/from16 v16, v1

    .line 752
    .end local v6    # "$this$forEach$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    :goto_4
    nop

    .line 652
    .end local v4    # "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    .end local v5    # "$i$f$forEachSlotLocked":I
    :goto_5
    move-object v0, v1

    check-cast v0, [Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method private final getBufferEndIndex()J
    .locals 4

    .line 323
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getHead()J
    .locals 4

    .line 320
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getPeekedValueLockedAt(J)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # J

    .line 624
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 625
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object v1, v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 626
    :cond_0
    nop

    .line 627
    .end local v0    # "item":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method

.method private final getQueueEndIndex()J
    .locals 4

    .line 324
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getReplaySize()I
    .locals 4

    .line 321
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final getTotalSize()I
    .locals 2

    .line 322
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method private final growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 10
    .param p1, "curBuffer"    # [Ljava/lang/Object;
    .param p2, "curSize"    # I
    .param p3, "newSize"    # I

    .line 442
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 443
    new-array v2, p3, [Ljava/lang/Object;

    move-object v3, v2

    .line 705
    .local v3, "it":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 443
    .local v4, "$i$a$-also-SharedFlowImpl$growBuffer$newBuffer$1":I
    iput-object v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 444
    .end local v3    # "it":[Ljava/lang/Object;
    .end local v4    # "$i$a$-also-SharedFlowImpl$growBuffer$newBuffer$1":I
    .local v2, "newBuffer":[Ljava/lang/Object;
    if-nez p1, :cond_1

    return-object v2

    .line 445
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v3

    .line 446
    .local v3, "head":J
    if-lez p2, :cond_3

    :cond_2
    move v5, v1

    .local v5, "i":I
    add-int/2addr v1, v0

    .line 447
    int-to-long v6, v5

    add-long/2addr v6, v3

    int-to-long v8, v5

    add-long/2addr v8, v3

    invoke-static {p1, v8, v9}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 446
    if-lt v1, p2, :cond_2

    .line 449
    .end local v5    # "i":I
    :cond_3
    return-object v2

    .line 705
    .end local v2    # "newBuffer":[Ljava/lang/Object;
    .end local v3    # "head":J
    :cond_4
    const/4 v0, 0x0

    .line 442
    .local v0, "$i$a$-check-SharedFlowImpl$growBuffer$1":I
    nop

    .end local v0    # "$i$a$-check-SharedFlowImpl$growBuffer$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer size overflow"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final tryEmitLocked(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    .line 384
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferOverflow;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    return v2

    .line 385
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 391
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 393
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 395
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result v0

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le v0, v1, :cond_3

    .line 396
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 398
    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 402
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 705
    const/4 v0, 0x0

    .line 402
    .local v0, "$i$a$-assert-SharedFlowImpl$tryEmitNoCollectorsLocked$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowImpl$tryEmitNoCollectorsLocked$1":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 403
    :cond_2
    :goto_1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-nez v0, :cond_3

    return v1

    .line 404
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 405
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 407
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le v0, v2, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 408
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 409
    return v1
.end method

.method private final tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .locals 7
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 614
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 615
    .local v0, "index":J
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-wide v0

    .line 616
    :cond_0
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v3, -0x1

    if-lez v2, :cond_1

    return-wide v3

    .line 618
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    return-wide v3

    .line 619
    :cond_2
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-nez v2, :cond_3

    return-wide v3

    .line 620
    :cond_3
    return-wide v0
.end method

.method private final tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .locals 10
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 594
    const/4 v0, 0x0

    .local v0, "resumes":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 595
    const/4 v1, 0x0

    .line 733
    .local v1, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 596
    .local v2, "$i$a$-synchronized-SharedFlowImpl$tryTakeValue$value$1":I
    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v3

    .line 597
    .local v3, "index":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 598
    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    .line 600
    :cond_0
    iget-wide v5, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 601
    .local v5, "oldIndex":J
    invoke-direct {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getPeekedValueLockedAt(J)Ljava/lang/Object;

    move-result-object v7

    .line 602
    .local v7, "newValue":Ljava/lang/Object;
    const-wide/16 v8, 0x1

    add-long/2addr v8, v3

    iput-wide v8, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 603
    invoke-virtual {p0, v5, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    .line 604
    move-object v5, v7

    .line 597
    .end local v5    # "oldIndex":J
    .end local v7    # "newValue":Ljava/lang/Object;
    :goto_0
    nop

    .end local v2    # "$i$a$-synchronized-SharedFlowImpl$tryTakeValue$value$1":I
    .end local v3    # "index":J
    monitor-exit p0

    .line 733
    nop

    .line 595
    .end local v1    # "$i$f$synchronized":I
    move-object v1, v5

    .line 607
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .local v4, "resume":Lkotlin/coroutines/Continuation;
    add-int/lit8 v2, v2, 0x1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 608
    .end local v4    # "resume":Lkotlin/coroutines/Continuation;
    :cond_2
    return-object v1

    .line 597
    .local v1, "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final updateBufferLocked(JJJJ)V
    .locals 16
    .param p1, "newReplayIndex"    # J
    .param p3, "newMinCollectorIndex"    # J
    .param p5, "newBufferEndIndex"    # J
    .param p7, "newQueueEndIndex"    # J

    .line 566
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 567
    .local v5, "newHead":J
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 705
    const/4 v7, 0x0

    .line 567
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$1":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v10

    cmp-long v10, v5, v10

    if-ltz v10, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$1":I
    :goto_0
    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 569
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v10

    cmp-long v7, v10, v5

    if-gez v7, :cond_4

    :cond_3
    move-wide v12, v10

    .local v12, "index":J
    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iget-object v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    invoke-static {v7, v12, v13, v14}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    cmp-long v7, v10, v5

    if-ltz v7, :cond_3

    .line 571
    .end local v12    # "index":J
    :cond_4
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 572
    iput-wide v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 573
    sub-long v10, p5, v5

    long-to-int v7, v10

    iput v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 574
    sub-long v10, p7, p5

    long-to-int v7, v10

    iput v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 576
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 705
    const/4 v7, 0x0

    .line 576
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$2":I
    iget v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    if-ltz v10, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    move v7, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$2":I
    :goto_2
    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 577
    :cond_7
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 705
    const/4 v7, 0x0

    .line 577
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$3":I
    iget v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-ltz v10, :cond_8

    move v7, v8

    goto :goto_4

    :cond_8
    move v7, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$3":I
    :goto_4
    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 578
    :cond_a
    :goto_5
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 705
    const/4 v7, 0x0

    .line 578
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$4":I
    iget-wide v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v12

    iget v14, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_b

    goto :goto_6

    :cond_b
    move v8, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$4":I
    :goto_6
    if-eqz v8, :cond_c

    goto :goto_7

    :cond_c
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 579
    :cond_d
    :goto_7
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 338
    iget v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 354
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Job;

    iget-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_5

    :pswitch_1
    move-object p1, v3

    .local p1, "newValue":Ljava/lang/Object;
    iget-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    .line 351
    .end local p1    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    move-object v2, v3

    move-object v4, v5

    goto/16 :goto_7

    .line 338
    :pswitch_2
    move-object v2, p0

    .local v2, "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .local v3, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .end local v2    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .local v4, "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 351
    .end local v3    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v4    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :catchall_1
    move-exception p1

    move-object v2, v3

    goto/16 :goto_7

    .line 338
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .line 339
    .restart local v4    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 340
    .local v2, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    nop

    .line 341
    :try_start_3
    instance-of v3, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-virtual {v3, p2}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 338
    return-object v1

    .line 341
    :cond_1
    move-object v3, v2

    .line 342
    .end local v2    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .restart local v3    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    :goto_1
    move-object v2, v3

    .end local v3    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .restart local v2    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    :cond_2
    const/4 v3, 0x0

    .line 703
    .local v3, "$i$f$currentCoroutineContext":I
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 342
    .end local v3    # "$i$f$currentCoroutineContext":I
    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v5, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    .line 343
    .local v3, "collectorJob":Lkotlinx/coroutines/Job;
    :goto_2
    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    .line 345
    .local v3, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "collectorJob":Lkotlinx/coroutines/Job;
    :goto_3
    nop

    .line 346
    invoke-direct {v4, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    move-result-object v5

    .line 347
    .local v5, "newValue":Ljava/lang/Object;
    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v5, v6, :cond_5

    .line 350
    .end local v2    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v3    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v4    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .end local p1    # "collectorJob":Lkotlinx/coroutines/Job;
    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 351
    :goto_4
    iput-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-interface {v3, v5, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v5    # "newValue":Ljava/lang/Object;
    if-ne v6, v1, :cond_4

    .line 338
    return-object v1

    .line 351
    :cond_4
    :goto_5
    nop

    .restart local v3    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v4    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .restart local p1    # "collectorJob":Lkotlinx/coroutines/Job;
    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    .restart local v2    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    goto :goto_2

    .line 348
    .end local v2    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v4    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .restart local v5    # "newValue":Ljava/lang/Object;
    :cond_5
    iput-object v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-direct {v4, v2, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "collectorJob":Lkotlinx/coroutines/Job;
    if-ne v6, v1, :cond_6

    .line 338
    return-object v1

    .line 348
    :cond_6
    move-object v7, v2

    move-object v2, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v7

    .end local v5    # "newValue":Ljava/lang/Object;
    .local p1, "newValue":Ljava/lang/Object;
    :goto_6
    move-object p1, v5

    .local v2, "collectorJob":Lkotlinx/coroutines/Job;
    .local v4, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    move-object v7, v4

    move-object v4, p1

    move-object p1, v2

    move-object v2, v3

    move-object v3, v7

    .local v3, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    goto :goto_3

    .line 351
    .end local v2    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local v3    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v4    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    :catchall_2
    move-exception p1

    .line 354
    :goto_7
    check-cast v2, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;
    .locals 1

    .line 655
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharedFlowSlot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method protected createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;
    .locals 1
    .param p1, "size"    # I

    .line 656
    new-array v0, p1, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    return-object v0
.end method

.method public bridge synthetic createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1
    .param p1, "size"    # I

    .line 278
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 373
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 374
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 375
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

    .line 669
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->fuseSharedFlow(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getReplayCache()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    .line 702
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 328
    .local v1, "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result v2

    .line 329
    .local v2, "replaySize":I
    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    .end local v2    # "replaySize":I
    monitor-exit p0

    return-object v3

    .line 330
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    .restart local v2    # "replaySize":I
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "result":Ljava/util/ArrayList;
    iget-object v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 333
    .local v4, "buffer":[Ljava/lang/Object;
    const/4 v5, 0x0

    if-lez v2, :cond_2

    :cond_1
    move v6, v5

    .local v6, "i":I
    add-int/lit8 v5, v5, 0x1

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    invoke-static {v4, v8, v9}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v5, v2, :cond_1

    .line 334
    .end local v6    # "i":I
    :cond_2
    nop

    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    .end local v2    # "replaySize":I
    .end local v3    # "result":Ljava/util/ArrayList;
    .end local v4    # "buffer":[Ljava/lang/Object;
    monitor-exit p0

    .line 702
    nop

    .end local v0    # "$i$f$synchronized":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 335
    return-object v0

    .line 334
    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resetReplayCache()V
    .locals 11

    .line 658
    const/4 v0, 0x0

    .line 753
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 660
    .local v1, "$i$a$-synchronized-SharedFlowImpl$resetReplayCache$1":I
    nop

    .line 661
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v3

    .line 662
    iget-wide v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 663
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v7

    .line 664
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v9

    .line 660
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 666
    nop

    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$resetReplayCache$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 753
    nop

    .line 666
    .end local v0    # "$i$f$synchronized":I
    return-void

    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tryEmit(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    .local v0, "resumes":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 360
    const/4 v1, 0x0

    .line 704
    .local v1, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 361
    .local v2, "$i$a$-synchronized-SharedFlowImpl$tryEmit$emitted$1":I
    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 362
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 363
    const/4 v3, 0x1

    goto :goto_0

    .line 365
    :cond_0
    move v3, v4

    .line 361
    :goto_0
    nop

    .end local v2    # "$i$a$-synchronized-SharedFlowImpl$tryEmit$emitted$1":I
    monitor-exit p0

    .line 704
    nop

    .line 360
    .end local v1    # "$i$f$synchronized":I
    move v1, v3

    .line 368
    .local v1, "emitted":Z
    array-length v2, v0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v3, v0, v4

    .local v3, "cont":Lkotlin/coroutines/Continuation;
    add-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 369
    .end local v3    # "cont":Lkotlin/coroutines/Continuation;
    :cond_2
    return v1

    .line 361
    .local v1, "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;
    .locals 26
    .param p1, "oldIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 491
    move-object/from16 v9, p0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    const/4 v0, 0x0

    .line 491
    .local v0, "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$1":I
    iget-wide v1, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 492
    :cond_2
    :goto_1
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 494
    :cond_3
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v12

    .line 495
    .local v12, "head":J
    const-wide/16 v0, 0x0

    .local v0, "newMinCollectorIndex":J
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v2, v12

    .line 497
    .end local v0    # "newMinCollectorIndex":J
    .local v2, "newMinCollectorIndex":J
    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v4, 0x1

    if-nez v0, :cond_4

    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v0, :cond_4

    add-long/2addr v2, v4

    .line 498
    :cond_4
    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .local v0, "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    const/4 v1, 0x0

    .line 726
    .local v1, "$i$f$forEachSlotLocked":I
    invoke-static {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v6

    if-nez v6, :cond_5

    move-wide/from16 v20, v12

    goto :goto_5

    .line 727
    :cond_5
    invoke-static {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    if-nez v6, :cond_6

    move-wide/from16 v20, v12

    goto :goto_4

    .local v6, "$this$forEach$iv$iv":[Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    .line 728
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_9

    aget-object v15, v6, v14

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/16 v17, 0x0

    .line 729
    .local v17, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    if-eqz v16, :cond_8

    move-object/from16 v10, v16

    check-cast v10, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local v10, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    const/16 v19, 0x0

    .line 500
    .local v19, "$i$a$-forEachSlotLocked-SharedFlowImpl$updateCollectorIndexLocked$2":I
    move-wide/from16 v20, v12

    .end local v12    # "head":J
    .local v20, "head":J
    iget-wide v11, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v22, 0x0

    cmp-long v11, v11, v22

    if-ltz v11, :cond_7

    iget-wide v11, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    cmp-long v11, v11, v2

    if-gez v11, :cond_7

    iget-wide v2, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 501
    :cond_7
    goto :goto_3

    .line 729
    .end local v10    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v19    # "$i$a$-forEachSlotLocked-SharedFlowImpl$updateCollectorIndexLocked$2":I
    .end local v20    # "head":J
    .restart local v12    # "head":J
    :cond_8
    move-wide/from16 v20, v12

    .line 730
    .end local v12    # "head":J
    .restart local v20    # "head":J
    :goto_3
    nop

    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    .end local v16    # "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v17    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v12, v20

    goto :goto_2

    .line 731
    .end local v20    # "head":J
    .restart local v12    # "head":J
    :cond_9
    move-wide/from16 v20, v12

    .line 732
    .end local v6    # "$this$forEach$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v12    # "head":J
    .restart local v20    # "head":J
    :goto_4
    nop

    .line 502
    .end local v0    # "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    .end local v1    # "$i$f$forEachSlotLocked":I
    :goto_5
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 705
    const/4 v0, 0x0

    .line 502
    .local v0, "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$3":I
    iget-wide v6, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$3":I
    :goto_6
    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 503
    :cond_c
    :goto_7
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_d

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 506
    :cond_d
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v0

    .line 507
    .local v0, "newBufferEndIndex":J
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v6

    if-lez v6, :cond_e

    .line 511
    sub-long v6, v0, v2

    long-to-int v6, v6

    .line 512
    .local v6, "newBufferSize0":I
    iget v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    iget v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v6    # "newBufferSize0":I
    goto :goto_8

    .line 515
    :cond_e
    iget v6, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 507
    :goto_8
    move v10, v6

    .line 517
    .local v10, "maxResumeCount":I
    sget-object v6, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 518
    .local v6, "resumes":[Lkotlin/coroutines/Continuation;
    iget v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v7, v7

    add-long v11, v0, v7

    .line 519
    .local v11, "newQueueEndIndex":J
    if-lez v10, :cond_14

    .line 520
    new-array v6, v10, [Lkotlin/coroutines/Continuation;

    .line 521
    const/4 v7, 0x0

    .line 522
    .local v7, "resumeCount":I
    iget-object v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    .local v8, "buffer":[Ljava/lang/Object;
    cmp-long v13, v0, v11

    if-gez v13, :cond_13

    move-wide v13, v0

    .end local v0    # "newBufferEndIndex":J
    .local v13, "newBufferEndIndex":J
    :goto_9
    move-wide v15, v0

    .local v15, "curEmitterIndex":J
    add-long/2addr v0, v4

    .line 524
    move-wide v4, v15

    .end local v15    # "curEmitterIndex":J
    .local v4, "curEmitterIndex":J
    invoke-static {v8, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    .line 525
    .local v15, "emitter":Ljava/lang/Object;
    move-wide/from16 v16, v2

    .end local v2    # "newMinCollectorIndex":J
    .local v16, "newMinCollectorIndex":J
    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v15, v2, :cond_11

    .line 526
    if-eqz v15, :cond_10

    move-object v2, v15

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 527
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "resumeCount":I
    .local v2, "resumeCount":I
    move-object v3, v15

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object v3, v3, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->cont:Lkotlin/coroutines/Continuation;

    aput-object v3, v6, v7

    .line 528
    sget-object v3, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v8, v4, v5, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 529
    move-object v3, v15

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object v3, v3, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    invoke-static {v8, v13, v14, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 530
    const-wide/16 v22, 0x1

    add-long v13, v13, v22

    .line 531
    if-lt v2, v10, :cond_f

    move-wide v0, v13

    move-object v13, v6

    goto :goto_b

    :cond_f
    move v7, v2

    goto :goto_a

    .line 526
    .end local v2    # "resumeCount":I
    .restart local v7    # "resumeCount":I
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    .end local v15    # "emitter":Ljava/lang/Object;
    :cond_11
    :goto_a
    cmp-long v2, v0, v11

    if-ltz v2, :cond_12

    move-wide v0, v13

    move-object v13, v6

    goto :goto_b

    :cond_12
    move-wide/from16 v2, v16

    const-wide/16 v4, 0x1

    goto :goto_9

    .end local v4    # "curEmitterIndex":J
    .end local v13    # "newBufferEndIndex":J
    .end local v16    # "newMinCollectorIndex":J
    .restart local v0    # "newBufferEndIndex":J
    .local v2, "newMinCollectorIndex":J
    :cond_13
    move-wide/from16 v16, v2

    .end local v2    # "newMinCollectorIndex":J
    .restart local v16    # "newMinCollectorIndex":J
    move-object v13, v6

    goto :goto_b

    .line 519
    .end local v7    # "resumeCount":I
    .end local v8    # "buffer":[Ljava/lang/Object;
    .end local v16    # "newMinCollectorIndex":J
    .restart local v2    # "newMinCollectorIndex":J
    :cond_14
    move-wide/from16 v16, v2

    .end local v2    # "newMinCollectorIndex":J
    .restart local v16    # "newMinCollectorIndex":J
    move-object v13, v6

    .line 536
    .end local v6    # "resumes":[Lkotlin/coroutines/Continuation;
    .local v13, "resumes":[Lkotlin/coroutines/Continuation;
    :goto_b
    sub-long v2, v0, v20

    long-to-int v14, v2

    .line 542
    .local v14, "newBufferSize1":I
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v2

    if-nez v2, :cond_15

    move-wide v2, v0

    move-wide/from16 v16, v2

    .line 544
    :cond_15
    iget-wide v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 546
    .local v2, "newReplayIndex":J
    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v4, :cond_16

    cmp-long v4, v2, v11

    if-gez v4, :cond_16

    iget-object v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 547
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 548
    add-long/2addr v2, v4

    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    goto :goto_c

    .line 551
    :cond_16
    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    .end local v0    # "newBufferEndIndex":J
    .end local v2    # "newReplayIndex":J
    .local v22, "newBufferEndIndex":J
    .local v24, "newReplayIndex":J
    :goto_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v16

    move-wide/from16 v5, v22

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 553
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 555
    array-length v0, v13

    if-nez v0, :cond_17

    const/16 v18, 0x1

    goto :goto_d

    :cond_17
    const/16 v18, 0x0

    :goto_d
    const/4 v0, 0x1

    xor-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_18

    invoke-direct {v9, v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v13

    .line 556
    :cond_18
    return-object v13
.end method

.method public final updateNewCollectorIndexLocked$kotlinx_coroutines_core()J
    .locals 4

    .line 484
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 485
    .local v0, "index":J
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 486
    :cond_0
    return-wide v0
.end method
