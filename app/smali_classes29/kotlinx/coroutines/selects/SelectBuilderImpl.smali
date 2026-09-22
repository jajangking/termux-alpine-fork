.class public final Lkotlinx/coroutines/selects/SelectBuilderImpl;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.source "Select.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectBuilder;
.implements Lkotlinx/coroutines/selects/SelectInstance;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;,
        Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;,
        Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;,
        Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "Lkotlinx/coroutines/selects/SelectBuilder<",
        "TR;>;",
        "Lkotlinx/coroutines/selects/SelectInstance<",
        "TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "TR;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 7 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 8 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,660:1\n280#1:664\n281#1:666\n282#1,7:669\n289#1,5:680\n280#1:685\n281#1:687\n282#1,3:690\n285#1,9:695\n1#2:661\n1#2:665\n1#2:686\n155#3,2:662\n155#3,2:667\n155#3,2:688\n155#3,2:706\n155#3,2:714\n219#4:676\n220#4:679\n57#5,2:677\n57#5,2:693\n161#5:705\n13#6:704\n641#7,6:708\n17#8:716\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl\n*L\n298#1:664\n298#1:666\n298#1:669,7\n298#1:680,5\n309#1:685\n309#1:687\n309#1:690,3\n309#1:695,9\n298#1:665\n309#1:686\n281#1:662,2\n298#1:667,2\n309#1:688,2\n364#1:706,2\n486#1:714,2\n300#1:676\n300#1:679\n300#1:677,2\n309#1:693,2\n358#1:705\n332#1:704\n386#1:708,6\n647#1:716\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0001\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020Y2\u0008\u0012\u0004\u0012\u00028\u00000Z2\u0008\u0012\u0004\u0012\u00028\u00000[2\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u00060Bj\u0002`C:\u0004TUVWB\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ.\u0010\u0011\u001a\u00020\u00082\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rH\u0082\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\n\u0018\u00010\u0015j\u0004\u0018\u0001`\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u000cJ8\u0010!\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u001e2\u001c\u0010\u0010\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0 H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010%\u001a\u0004\u0018\u00010\u000e2\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008(\u0010\u001cJ \u0010+\u001a\u00020\u00082\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000)H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00081\u00102J\u001b\u00105\u001a\u0004\u0018\u00010\u000e2\u0008\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00085\u00106J5\u00108\u001a\u00020\u0008*\u0002072\u001c\u0010\u0010\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0 H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109JG\u00108\u001a\u00020\u0008\"\u0004\u0008\u0001\u0010:*\u0008\u0012\u0004\u0012\u00028\u00010;2\"\u0010\u0010\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0<H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010=J[\u00108\u001a\u00020\u0008\"\u0004\u0008\u0001\u0010>\"\u0004\u0008\u0002\u0010:*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020?2\u0006\u0010@\u001a\u00028\u00012\"\u0010\u0010\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0<H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010AR\u001e\u0010F\u001a\n\u0018\u00010Bj\u0004\u0018\u0001`C8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u001c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0016\u0010M\u001a\u00020J8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010LR\u0016\u0010N\u001a\u0002008V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u00102R(\u0010R\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00068B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010\nR\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010S\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006X"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectBuilderImpl;",
        "R",
        "Lkotlin/coroutines/Continuation;",
        "uCont",
        "<init>",
        "(Lkotlin/coroutines/Continuation;)V",
        "Lkotlinx/coroutines/DisposableHandle;",
        "handle",
        "",
        "disposeOnSelect",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
        "doAfterSelect",
        "()V",
        "Lkotlin/Function0;",
        "",
        "value",
        "block",
        "doResume",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "getResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "",
        "e",
        "handleBuilderException",
        "(Ljava/lang/Throwable;)V",
        "initCancellability",
        "",
        "timeMillis",
        "Lkotlin/Function1;",
        "onTimeout",
        "(JLkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/internal/AtomicDesc;",
        "desc",
        "performAtomicTrySelect",
        "(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;",
        "exception",
        "resumeSelectWithException",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "trySelect",
        "()Z",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "otherOp",
        "trySelectOther",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "invoke",
        "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V",
        "Q",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "Lkotlin/Function2;",
        "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V",
        "P",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "param",
        "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "getCompletion",
        "()Lkotlin/coroutines/Continuation;",
        "completion",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "context",
        "isSelected",
        "getParentHandle",
        "()Lkotlinx/coroutines/DisposableHandle;",
        "setParentHandle",
        "parentHandle",
        "Lkotlin/coroutines/Continuation;",
        "AtomicSelectOp",
        "DisposeNode",
        "PairSelectOp",
        "SelectOnCancelling",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "Lkotlinx/coroutines/selects/SelectBuilder;",
        "Lkotlinx/coroutines/selects/SelectInstance;"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic _result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field volatile synthetic _result:Ljava/lang/Object;

.field volatile synthetic _state:Ljava/lang/Object;

.field private final uCont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "uCont"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    .line 238
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 248
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getNOT_SELECTED()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    .line 251
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public static final synthetic access$doAfterSelect(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 236
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->doAfterSelect()V

    return-void
.end method

.method private final doAfterSelect()V
    .locals 6

    .line 385
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 386
    :goto_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v1, 0x0

    .line 708
    .local v1, "$i$f$forEach":I
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 709
    .local v2, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 710
    instance-of v3, v2, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    .local v3, "it":Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;
    const/4 v4, 0x0

    .line 387
    .local v4, "$i$a$-forEach-SelectBuilderImpl$doAfterSelect$1":I
    iget-object v5, v3, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;->handle:Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {v5}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 388
    nop

    .line 711
    .end local v3    # "it":Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;
    .end local v4    # "$i$a$-forEach-SelectBuilderImpl$doAfterSelect$1":I
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    goto :goto_1

    .line 713
    :cond_2
    nop

    .line 389
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    return-void
.end method

.method private final doResume(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1, "value"    # Lkotlin/jvm/functions/Function0;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 280
    .local v0, "$i$f$doResume":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    const/4 v1, 0x0

    .line 280
    .local v1, "$i$a$-assert-SelectBuilderImpl$doResume$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v1

    .end local v1    # "$i$a$-assert-SelectBuilderImpl$doResume$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 281
    :cond_1
    :goto_0
    move-object v1, p0

    .local v1, "$this$loop$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v2, 0x0

    .line 662
    .local v2, "$i$f$loop":I
    :goto_1
    nop

    .line 663
    iget-object v3, v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .local v3, "result":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 282
    .local v4, "$i$a$-loop-SelectBuilderImpl$doResume$2":I
    nop

    .line 283
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 284
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    .line 285
    .local v5, "update":Ljava/lang/Object;
    sget-object v6, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p0, v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    .line 287
    .end local v5    # "update":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_4

    sget-object v5, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getRESUMED$p()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 289
    return-void

    .line 293
    :cond_3
    nop

    .line 662
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "$i$a$-loop-SelectBuilderImpl$doResume$2":I
    goto :goto_1

    .line 291
    .restart local v3    # "result":Ljava/lang/Object;
    .restart local v4    # "$i$a$-loop-SelectBuilderImpl$doResume$2":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Already resumed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private final getParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 256
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method private final initCancellability()V
    .locals 7

    .line 330
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    if-nez v1, :cond_0

    return-void

    .line 331
    .local v1, "parent":Lkotlinx/coroutines/Job;
    :cond_0
    nop

    .line 332
    const/4 v2, 0x1

    .line 331
    const/4 v3, 0x0

    .line 332
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v0, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v4, 0x0

    .line 704
    .local v4, "$i$f$getAsHandler":I
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 331
    .end local v0    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v4    # "$i$f$getAsHandler":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 333
    .local v0, "newRegistration":Lkotlinx/coroutines/DisposableHandle;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    .line 335
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 336
    :cond_1
    return-void
.end method

.method private final setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0
    .param p1, "value"    # Lkotlinx/coroutines/DisposableHandle;

    .line 257
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 2
    .param p1, "handle"    # Lkotlinx/coroutines/DisposableHandle;

    .line 373
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 375
    .local v0, "node":Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 378
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 382
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 243
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompletion()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .line 277
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 275
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 4

    .line 316
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->initCancellability()V

    .line 317
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 318
    .local v0, "result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 319
    sget-object v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 320
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 322
    :cond_2
    nop

    .line 323
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getRESUMED$p()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 324
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_3

    .line 325
    return-object v0

    .line 324
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    throw v1

    .line 323
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleBuilderException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 348
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 350
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    .line 357
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 358
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v1, "exception$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 705
    .local v2, "$i$f$unwrap":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    move-object v1, v3

    .line 358
    .end local v1    # "exception$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$unwrap":I
    :goto_0
    const/4 v2, 0x0

    .line 705
    .restart local v2    # "$i$f$unwrap":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 358
    .end local v2    # "$i$f$unwrap":I
    :goto_1
    if-eq v1, v3, :cond_4

    .line 359
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 362
    .end local v0    # "result":Ljava/lang/Object;
    :cond_4
    :goto_2
    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause0;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectClause0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 630
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/selects/SelectClause0;->registerSelectClause0(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    .line 631
    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause1;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 634
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/selects/SelectClause1;->registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 635
    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause2;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "-TP;+TQ;>;TP;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 638
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {p1, v0, p2, p3}, Lkotlinx/coroutines/selects/SelectClause2;->registerSelectClause2(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 639
    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause2;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "-TP;+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectBuilder$DefaultImpls;->invoke(Lkotlinx/coroutines/selects/SelectBuilder;Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public isSelected()Z
    .locals 5

    .line 364
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v1, 0x0

    .line 706
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 707
    iget-object v2, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 365
    .local v3, "$i$a$-loop-SelectBuilderImpl$isSelected$1":I
    nop

    .line 366
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getNOT_SELECTED()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_0

    const/4 v4, 0x0

    return v4

    .line 367
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    nop

    .line 706
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-SelectBuilderImpl$isSelected$1":I
    goto :goto_0

    .line 368
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-SelectBuilderImpl$isSelected$1":I
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public onTimeout(JLkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "timeMillis"    # J
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 642
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 645
    :cond_0
    return-void

    .line 647
    :cond_1
    const/4 v0, 0x0

    .line 716
    .local v0, "$i$f$Runnable":I
    new-instance v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$onTimeout$$inlined$Runnable$1;

    invoke-direct {v1, p0, p3}, Lkotlinx/coroutines/selects/SelectBuilderImpl$onTimeout$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 647
    .end local v0    # "$i$f$Runnable":I
    move-object v0, v1

    .line 653
    .local v0, "action":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-interface {v1, p1, p2, v0, v2}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 654
    return-void
.end method

.method public performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;
    .locals 2
    .param p1, "desc"    # Lkotlinx/coroutines/internal/AtomicDesc;

    .line 562
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resumeSelectWithException(Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 309
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v1, 0x0

    .line 685
    .local v1, "$i$f$doResume":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    const/4 v2, 0x0

    .line 685
    .local v2, "$i$a$-assert-SelectBuilderImpl$doResume$1$iv":I
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v2

    .end local v2    # "$i$a$-assert-SelectBuilderImpl$doResume$1$iv":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 687
    :cond_1
    :goto_0
    move-object v2, v0

    .local v2, "$this$loop$iv$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v3, 0x0

    .line 688
    .local v3, "$i$f$loop":I
    :goto_1
    nop

    .line 689
    iget-object v4, v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .local v4, "result$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 690
    .local v5, "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    nop

    .line 691
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_4

    .line 692
    const/4 v6, 0x0

    .line 309
    .local v6, "$i$a$-doResume-SelectBuilderImpl$resumeSelectWithException$1":I
    new-instance v7, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v8, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .local v8, "continuation$iv":Lkotlin/coroutines/Continuation;
    const/4 v9, 0x0

    .line 693
    .local v9, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v10

    if-eqz v10, :cond_3

    instance-of v10, v8, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v10, :cond_2

    goto :goto_2

    .line 694
    :cond_2
    move-object v10, v8

    check-cast v10, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v10}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v10

    goto :goto_3

    .line 693
    :cond_3
    :goto_2
    move-object v10, p1

    .line 309
    .end local v8    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$f$recoverStackTrace":I
    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-direct {v7, v10, v8, v9, v11}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v6    # "$i$a$-doResume-SelectBuilderImpl$resumeSelectWithException$1":I
    move-object v6, v7

    .line 695
    .local v6, "update$iv":Ljava/lang/Object;
    sget-object v7, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 697
    .end local v6    # "update$iv":Ljava/lang/Object;
    :cond_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_6

    sget-object v6, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getRESUMED$p()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 698
    const/4 v6, 0x0

    .line 310
    .local v6, "$i$a$-doResume-SelectBuilderImpl$resumeSelectWithException$2":I
    iget-object v7, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v7

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 311
    nop

    .line 699
    .end local v6    # "$i$a$-doResume-SelectBuilderImpl$resumeSelectWithException$2":I
    nop

    .line 312
    .end local v0    # "this_$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v1    # "$i$f$doResume":I
    .end local v2    # "$this$loop$iv$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v3    # "$i$f$loop":I
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    :goto_4
    return-void

    .line 703
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v1    # "$i$f$doResume":I
    .restart local v2    # "$this$loop$iv$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v3    # "$i$f$loop":I
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    :cond_5
    nop

    .line 688
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    goto :goto_1

    .line 701
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Already resumed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Object;

    .line 298
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v1, 0x0

    .line 664
    .local v1, "$i$f$doResume":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    const/4 v2, 0x0

    .line 664
    .local v2, "$i$a$-assert-SelectBuilderImpl$doResume$1$iv":I
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v2

    .end local v2    # "$i$a$-assert-SelectBuilderImpl$doResume$1$iv":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 666
    :cond_1
    :goto_0
    move-object v2, v0

    .local v2, "$this$loop$iv$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v3, 0x0

    .line 667
    .local v3, "$i$f$loop":I
    :goto_1
    nop

    .line 668
    iget-object v4, v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .local v4, "result$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 669
    .local v5, "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    nop

    .line 670
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 671
    const/4 v6, 0x0

    .line 298
    .local v6, "$i$a$-doResume-SelectBuilderImpl$resumeWith$1":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v8, v7, v8}, Lkotlinx/coroutines/CompletionStateKt;->toState$default(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 672
    .local v6, "update$iv":Ljava/lang/Object;
    sget-object v7, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getUNDECIDED$p()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_5

    .line 674
    .end local v6    # "update$iv":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_7

    sget-object v6, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getRESUMED$p()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 675
    const/4 v6, 0x0

    .line 299
    .local v6, "$i$a$-doResume-SelectBuilderImpl$resumeWith$2":I
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 300
    iget-object v7, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .local v7, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v8, "exception$iv":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 676
    .local v9, "$i$f$resumeWithStackTrace":I
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v10, 0x0

    .line 677
    .local v10, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v11

    if-eqz v11, :cond_4

    instance-of v11, v7, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v11, :cond_3

    goto :goto_2

    .line 678
    :cond_3
    move-object v11, v7

    check-cast v11, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v8, v11}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v11

    goto :goto_3

    .line 677
    :cond_4
    :goto_2
    move-object v11, v8

    .line 676
    .end local v10    # "$i$f$recoverStackTrace":I
    :goto_3
    invoke-static {v11}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 679
    nop

    .end local v7    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v8    # "exception$iv":Ljava/lang/Throwable;
    .end local v9    # "$i$f$resumeWithStackTrace":I
    goto :goto_4

    .line 302
    :cond_5
    iget-object v7, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {v7, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 304
    :goto_4
    nop

    .line 680
    .end local v6    # "$i$a$-doResume-SelectBuilderImpl$resumeWith$2":I
    nop

    .line 305
    .end local v0    # "this_$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v1    # "$i$f$doResume":I
    .end local v2    # "$this$loop$iv$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v3    # "$i$f$loop":I
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    :goto_5
    return-void

    .line 684
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v1    # "$i$f$doResume":I
    .restart local v2    # "$this$loop$iv$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v3    # "$i$f$loop":I
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    :cond_6
    nop

    .line 667
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    goto :goto_1

    .line 682
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "$i$a$-loop-SelectBuilderImpl$doResume$2$iv":I
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Already resumed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectInstance(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trySelect()Z
    .locals 3

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelectOther(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 394
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 395
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 393
    :goto_0
    return v1

    .line 396
    :cond_1
    const-string v1, "Unexpected trySelectIdempotent result "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public trySelectOther(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;
    .locals 7
    .param p1, "otherOp"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;

    .line 486
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    const/4 v1, 0x0

    .line 714
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 715
    iget-object v2, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 487
    .local v3, "$i$a$-loop-SelectBuilderImpl$trySelectOther$1":I
    nop

    .line 489
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getNOT_SELECTED()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_3

    .line 490
    if-nez p1, :cond_0

    .line 492
    sget-object v4, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getNOT_SELECTED()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, p0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 495
    :cond_0
    new-instance v4, Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;

    invoke-direct {v4, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V

    .line 496
    .local v4, "pairSelectOp":Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;
    sget-object v5, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getNOT_SELECTED()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p0, v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 497
    :cond_1
    invoke-virtual {v4, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 498
    .local v5, "decision":Ljava/lang/Object;
    if-eqz v5, :cond_2

    return-object v5

    .line 500
    .end local v4    # "pairSelectOp":Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;
    .end local v5    # "decision":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->doAfterSelect()V

    .line 501
    sget-object v4, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v4

    .line 503
    :cond_3
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v4, :cond_7

    .line 505
    if-eqz p1, :cond_6

    .line 506
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object v4

    .line 507
    .local v4, "otherAtomicOp":Lkotlinx/coroutines/internal/AtomicOp;
    nop

    .line 509
    instance-of v5, v4, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    iget-object v5, v5, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    if-eq v5, p0, :cond_4

    goto :goto_1

    .line 517
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot use matching select clauses on the same object"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 520
    :cond_5
    :goto_1
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/internal/AtomicOp;->isEarlierThan(Lkotlinx/coroutines/internal/OpDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 527
    sget-object v5, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    return-object v5

    .line 532
    .end local v4    # "otherAtomicOp":Lkotlinx/coroutines/internal/AtomicOp;
    :cond_6
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    nop

    .line 714
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-SelectBuilderImpl$trySelectOther$1":I
    :goto_2
    goto :goto_0

    .line 535
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-SelectBuilderImpl$trySelectOther$1":I
    :cond_7
    if-nez p1, :cond_8

    return-object v5

    .line 536
    :cond_8
    iget-object v4, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    if-ne v2, v4, :cond_9

    sget-object v4, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v4

    .line 537
    :cond_9
    return-object v5
.end method
