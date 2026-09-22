.class public final Lkotlinx/coroutines/sync/MutexImpl;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/Mutex;
.implements Lkotlinx/coroutines/selects/SelectClause2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;,
        Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;,
        Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;,
        Lkotlinx/coroutines/sync/MutexImpl$LockCont;,
        Lkotlinx/coroutines/sync/MutexImpl$LockSelect;,
        Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        "Lkotlinx/coroutines/selects/SelectClause2<",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n1#1,401:1\n155#2,2:402\n155#2,2:404\n155#2,2:410\n155#2,2:432\n155#2,2:434\n1#3:406\n328#4,3:407\n331#4,2:421\n150#5:412\n87#5,3:413\n151#5,5:416\n150#5:423\n87#5,3:424\n151#5,5:427\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n150#1:402,2\n167#1:404,2\n195#1:410,2\n304#1:432,2\n336#1:434,2\n193#1:407,3\n193#1:421,2\n213#1:412\n213#1:413,3\n213#1:416,5\n255#1:423\n255#1:424,3\n255#1:427,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u00112\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110 :\u0006$%&\'()B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\n\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJT\u0010\u0014\u001a\u00020\t\"\u0004\u0008\u0000\u0010\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0010H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0008J\u0019\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\u00018V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00018@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001dR$\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110 8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/MutexImpl;",
        "",
        "locked",
        "<init>",
        "(Z)V",
        "",
        "owner",
        "holdsLock",
        "(Ljava/lang/Object;)Z",
        "",
        "lock",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "lockSuspend",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/sync/Mutex;",
        "Lkotlin/coroutines/Continuation;",
        "block",
        "registerSelectClause2",
        "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "tryLock",
        "unlock",
        "(Ljava/lang/Object;)V",
        "isLocked",
        "()Z",
        "isLockedEmptyQueueState$kotlinx_coroutines_core",
        "isLockedEmptyQueueState",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnLock",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "onLock",
        "LockCont",
        "LockSelect",
        "LockWaiter",
        "LockedQueue",
        "TryLockDesc",
        "UnlockOp",
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


# static fields
.field static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/sync/MutexImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public static final synthetic access$lockSuspend(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/MutexImpl;
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 144
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 407
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    move-object/from16 v3, p2

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 408
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v5

    .line 409
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    .local v6, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v7, 0x0

    .line 194
    .local v7, "$i$a$-suspendCancellableCoroutineReusable-MutexImpl$lockSuspend$2":I
    new-instance v8, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    invoke-direct {v8, v0, v1, v6}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 195
    .local v8, "waiter":Lkotlinx/coroutines/sync/MutexImpl$LockCont;
    move-object/from16 v9, p0

    .local v9, "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    const/4 v10, 0x0

    .line 410
    .local v10, "$i$f$loop":I
    :goto_0
    nop

    .line 411
    iget-object v11, v9, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .local v11, "state":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 196
    .local v12, "$i$a$-loop-MutexImpl$lockSuspend$2$1":I
    nop

    .line 197
    instance-of v13, v11, Lkotlinx/coroutines/sync/Empty;

    if-eqz v13, :cond_3

    .line 198
    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/sync/Empty;

    iget-object v13, v13, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v14

    if-eq v13, v14, :cond_0

    .line 199
    sget-object v13, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v14, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    move-object v15, v11

    check-cast v15, Lkotlinx/coroutines/sync/Empty;

    iget-object v15, v15, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-direct {v14, v15}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v11, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move/from16 v20, v2

    move-object/from16 v18, v3

    goto/16 :goto_6

    .line 202
    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v13

    goto :goto_1

    :cond_1
    new-instance v13, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v13, v1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 203
    .local v13, "update":Lkotlinx/coroutines/sync/Empty;
    :goto_1
    sget-object v14, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v14, v0, v11, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 205
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v15, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;

    invoke-direct {v15, v0, v1}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v14, v15}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 206
    move/from16 v20, v2

    move-object/from16 v18, v3

    goto :goto_5

    .line 203
    :cond_2
    move/from16 v20, v2

    move-object/from16 v18, v3

    goto/16 :goto_6

    .line 210
    .end local v13    # "update":Lkotlinx/coroutines/sync/Empty;
    :cond_3
    instance-of v13, v11, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v13, :cond_8

    .line 211
    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v13, v13, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 212
    .local v13, "curOwner":Ljava/lang/Object;
    if-eq v13, v1, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_7

    .line 213
    move-object v14, v11

    check-cast v14, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .local v14, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/16 v17, 0x0

    .line 412
    .local v17, "$i$f$addLastIf":I
    move-object/from16 v18, v14

    .local v18, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/16 v19, 0x0

    .line 413
    .local v19, "$i$f$makeCondAddOp":I
    new-instance v15, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$lambda-6$lambda-5$$inlined$addLastIf$1;

    move/from16 v20, v2

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .local v20, "$i$f$suspendCancellableCoroutineReusable":I
    move-object v2, v8

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v15, v2, v0, v11}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$lambda-6$lambda-5$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v15, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 415
    nop

    .line 412
    .end local v18    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v19    # "$i$f$makeCondAddOp":I
    move-object v2, v15

    .line 416
    .local v2, "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_3
    nop

    .line 417
    invoke-virtual {v14}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v15

    .line 418
    .local v15, "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object/from16 v18, v3

    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v18, "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object v3, v8

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v15, v3, v14, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 420
    .end local v15    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object/from16 v3, v18

    goto :goto_3

    .restart local v15    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :pswitch_0
    const/4 v14, 0x0

    goto :goto_4

    .line 419
    :pswitch_1
    const/4 v14, 0x1

    .line 213
    .end local v2    # "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .end local v14    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v15    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v17    # "$i$f$addLastIf":I
    :goto_4
    if-eqz v14, :cond_9

    .line 215
    move-object v2, v8

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {v6, v2}, Lkotlinx/coroutines/CancellableContinuationKt;->removeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 216
    nop

    .line 421
    .end local v6    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v7    # "$i$a$-suspendCancellableCoroutineReusable-MutexImpl$lockSuspend$2":I
    .end local v8    # "waiter":Lkotlinx/coroutines/sync/MutexImpl$LockCont;
    .end local v9    # "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    .end local v10    # "$i$f$loop":I
    .end local v11    # "state":Ljava/lang/Object;
    .end local v12    # "$i$a$-loop-MutexImpl$lockSuspend$2$1":I
    .end local v13    # "curOwner":Ljava/lang/Object;
    :goto_5
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 407
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v18    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_5

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 422
    :cond_5
    nop

    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_6

    return-object v2

    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 223
    return-object v2

    .line 406
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v6    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v7    # "$i$a$-suspendCancellableCoroutineReusable-MutexImpl$lockSuspend$2":I
    .restart local v8    # "waiter":Lkotlinx/coroutines/sync/MutexImpl$LockCont;
    .restart local v9    # "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    .restart local v10    # "$i$f$loop":I
    .restart local v11    # "state":Ljava/lang/Object;
    .restart local v12    # "$i$a$-loop-MutexImpl$lockSuspend$2$1":I
    .restart local v13    # "curOwner":Ljava/lang/Object;
    :cond_7
    move/from16 v20, v2

    move-object/from16 v18, v3

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v18    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    const/4 v2, 0x0

    .line 212
    .local v2, "$i$a$-check-MutexImpl$lockSuspend$2$1$2":I
    const-string v3, "Already locked by "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-check-MutexImpl$lockSuspend$2$1$2":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 219
    .end local v13    # "curOwner":Ljava/lang/Object;
    .end local v18    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :cond_8
    move/from16 v20, v2

    move-object/from16 v18, v3

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v18    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    instance-of v2, v11, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v2, :cond_a

    move-object v2, v11

    check-cast v2, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_9
    :goto_6
    nop

    .line 410
    .end local v11    # "state":Ljava/lang/Object;
    .end local v12    # "$i$a$-loop-MutexImpl$lockSuspend$2$1":I
    move-object/from16 v3, v18

    move/from16 v2, v20

    goto/16 :goto_0

    .line 220
    .restart local v11    # "state":Ljava/lang/Object;
    .restart local v12    # "$i$a$-loop-MutexImpl$lockSuspend$2$1":I
    :cond_a
    const-string v2, "Illegal state "

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getOnLock()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation

    .line 226
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause2;

    return-object v0
.end method

.method public holdsLock(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "owner"    # Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .local v0, "state":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$a$-let-MutexImpl$holdsLock$1":I
    nop

    .line 297
    instance-of v2, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Empty;

    iget-object v2, v2, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    .line 298
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v2, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 299
    :cond_3
    move v3, v4

    .line 296
    :goto_0
    nop

    .line 295
    .end local v0    # "state":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-MutexImpl$holdsLock$1":I
    nop

    .line 301
    return v3
.end method

.method public isLocked()Z
    .locals 7

    .line 150
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    const/4 v1, 0x0

    .line 402
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 403
    iget-object v2, v0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$a$-loop-MutexImpl$isLocked$1":I
    nop

    .line 152
    instance-of v4, v2, Lkotlinx/coroutines/sync/Empty;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v4, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 153
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v4, :cond_2

    return v5

    .line 154
    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    nop

    .line 402
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-MutexImpl$isLocked$1":I
    goto :goto_0

    .line 155
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-MutexImpl$isLocked$1":I
    :cond_3
    const-string v4, "Illegal state "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public final isLockedEmptyQueueState$kotlinx_coroutines_core()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 163
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 190
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public registerSelectClause2(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/sync/Mutex;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 231
    :cond_0
    :goto_0
    nop

    .line 232
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 234
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    if-eqz v1, :cond_7

    .line 235
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 236
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/sync/Empty;

    iget-object v3, v3, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_2
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

    invoke-direct {v1, p0, p2}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "failure":Ljava/lang/Object;
    nop

    .line 241
    if-nez v1, :cond_3

    .line 242
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-static {p3, p0, v2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 243
    return-void

    .line 245
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    return-void

    .line 246
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getLOCK_FAIL$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v1, v2, :cond_5

    goto :goto_0

    .line 247
    :cond_5
    sget-object v2, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 248
    :cond_6
    const-string v2, "performAtomicTrySelect(TryLockDesc) returned "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 252
    .end local v1    # "failure":Ljava/lang/Object;
    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_a

    .line 253
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p2, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_1
    if-eqz v1, :cond_9

    .line 254
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;

    invoke-direct {v1, p0, p2, p1, p3}, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 255
    .local v1, "node":Lkotlinx/coroutines/sync/MutexImpl$LockSelect;
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .local v4, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v5, 0x0

    .line 423
    .local v5, "$i$f$addLastIf":I
    move-object v6, v4

    .local v6, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v7, 0x0

    .line 424
    .local v7, "$i$f$makeCondAddOp":I
    new-instance v8, Lkotlinx/coroutines/sync/MutexImpl$registerSelectClause2$$inlined$addLastIf$1;

    move-object v9, v1

    check-cast v9, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v8, v9, p0, v0}, Lkotlinx/coroutines/sync/MutexImpl$registerSelectClause2$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v8, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 426
    nop

    .line 423
    .end local v6    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v7    # "$i$f$makeCondAddOp":I
    move-object v6, v8

    .line 427
    .local v6, "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_2
    nop

    .line 428
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v7

    .line 429
    .local v7, "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v7, v8, v4, v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 431
    .end local v7    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    goto :goto_2

    .restart local v7    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :pswitch_0
    move v2, v3

    goto :goto_3

    .line 430
    :pswitch_1
    nop

    .line 255
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v5    # "$i$f$addLastIf":I
    .end local v6    # "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .end local v7    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_3
    if-eqz v2, :cond_0

    .line 257
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 258
    return-void

    .line 406
    .end local v1    # "node":Lkotlinx/coroutines/sync/MutexImpl$LockSelect;
    :cond_9
    const/4 v1, 0x0

    .line 253
    .local v1, "$i$a$-check-MutexImpl$registerSelectClause2$1":I
    const-string v2, "Already locked by "

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-MutexImpl$registerSelectClause2$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 261
    :cond_a
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 262
    :cond_b
    const-string v1, "Illegal state "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 336
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    const/4 v1, 0x0

    .line 434
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 435
    iget-object v2, v0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 337
    .local v3, "$i$a$-loop-MutexImpl$toString$1":I
    nop

    .line 338
    instance-of v4, v2, Lkotlinx/coroutines/sync/Empty;

    const/16 v5, 0x5d

    const-string v6, "Mutex["

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/sync/Empty;

    iget-object v6, v6, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 339
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    nop

    .line 434
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-MutexImpl$toString$1":I
    goto :goto_0

    .line 340
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-MutexImpl$toString$1":I
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v6, v6, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 341
    :cond_2
    const-string v4, "Illegal state "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "owner"    # Ljava/lang/Object;

    .line 167
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    const/4 v1, 0x0

    .line 404
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 405
    iget-object v2, v0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 168
    .local v3, "$i$a$-loop-MutexImpl$tryLock$1":I
    nop

    .line 169
    instance-of v4, v2, Lkotlinx/coroutines/sync/Empty;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 170
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v4, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-eq v4, v7, :cond_0

    return v6

    .line 171
    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v4, Lkotlinx/coroutines/sync/Empty;

    .line 172
    nop

    .line 171
    invoke-direct {v4, p1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 174
    .local v4, "update":Lkotlinx/coroutines/sync/Empty;
    :goto_1
    sget-object v6, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return v5

    .line 176
    .end local v4    # "update":Lkotlinx/coroutines/sync/Empty;
    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v4, :cond_5

    .line 177
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v4, v4, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v4, p1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_4

    .line 178
    return v6

    .line 406
    :cond_4
    const/4 v4, 0x0

    .line 177
    .local v4, "$i$a$-check-MutexImpl$tryLock$1$1":I
    const-string v5, "Already locked by "

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-check-MutexImpl$tryLock$1$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 180
    :cond_5
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v4, :cond_7

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_6
    nop

    .line 404
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-MutexImpl$tryLock$1":I
    goto :goto_0

    .line 181
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-MutexImpl$tryLock$1":I
    :cond_7
    const-string v4, "Illegal state "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 9
    .param p1, "owner"    # Ljava/lang/Object;

    .line 304
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/sync/MutexImpl;
    const/4 v1, 0x0

    .line 432
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 433
    iget-object v2, v0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 305
    .local v3, "$i$a$-loop-MutexImpl$unlock$1":I
    nop

    .line 306
    instance-of v4, v2, Lkotlinx/coroutines/sync/Empty;

    const-string v5, " but expected "

    const-string v6, "Mutex is locked by "

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    .line 307
    if-nez p1, :cond_2

    .line 308
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v4, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    if-eqz v7, :cond_1

    goto :goto_3

    .line 406
    :cond_1
    const/4 v4, 0x0

    .line 308
    .local v4, "$i$a$-check-MutexImpl$unlock$1$1":I
    nop

    .end local v4    # "$i$a$-check-MutexImpl$unlock$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Mutex is not locked"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 310
    :cond_2
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v4, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    if-ne v4, p1, :cond_3

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    if-eqz v7, :cond_4

    .line 311
    :goto_3
    sget-object v4, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v5

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    return-void

    .line 406
    :cond_4
    const/4 v4, 0x0

    .line 310
    .local v4, "$i$a$-check-MutexImpl$unlock$1$2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/sync/Empty;

    iget-object v7, v7, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-check-MutexImpl$unlock$1$2":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 313
    :cond_5
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v4, :cond_6

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 314
    :cond_6
    instance-of v4, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v4, :cond_d

    .line 315
    if-eqz p1, :cond_9

    .line 316
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v4, v4, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne v4, p1, :cond_7

    goto :goto_4

    :cond_7
    move v7, v8

    :goto_4
    if-eqz v7, :cond_8

    goto :goto_5

    .line 406
    :cond_8
    const/4 v4, 0x0

    .line 316
    .local v4, "$i$a$-check-MutexImpl$unlock$1$3":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v7, v7, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-check-MutexImpl$unlock$1$3":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 317
    :cond_9
    :goto_5
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v4}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->removeFirstOrNull()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    .line 318
    .local v4, "waiter":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    if-nez v4, :cond_a

    .line 319
    new-instance v5, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-direct {v5, v6}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;-><init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V

    .line 320
    .local v5, "op":Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
    sget-object v6, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, p0}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    return-void

    .line 322
    .end local v5    # "op":Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
    :cond_a
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    invoke-virtual {v5}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->tryResumeLockWaiter()Ljava/lang/Object;

    move-result-object v5

    .line 323
    .local v5, "token":Ljava/lang/Object;
    if-eqz v5, :cond_c

    .line 324
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    move-object v7, v4

    check-cast v7, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    iget-object v7, v7, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    if-nez v7, :cond_b

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    :cond_b
    iput-object v7, v6, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 325
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    invoke-virtual {v6, v5}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->completeResumeLockWaiter(Ljava/lang/Object;)V

    .line 326
    return-void

    .line 332
    .end local v4    # "waiter":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v5    # "token":Ljava/lang/Object;
    :cond_c
    :goto_6
    nop

    .line 432
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-MutexImpl$unlock$1":I
    goto/16 :goto_0

    .line 330
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-MutexImpl$unlock$1":I
    :cond_d
    const-string v4, "Illegal state "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method
