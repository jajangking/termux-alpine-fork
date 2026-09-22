.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$lambda-7$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__TransformKt;->withIndex(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
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
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 FlowExceptions.common.kt\nkotlinx/coroutines/flow/internal/FlowExceptions_commonKt\n*L\n1#1,134:1\n65#2:135\n66#2:140\n32#3,4:136\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n65#1:136,4\n*E\n"
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
.field final synthetic $index$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$lambda-7$$inlined$collect$1;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$lambda-7$$inlined$collect$1;->$index$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 73
    move-object v0, p1

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p2

    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 135
    .local v2, "$i$a$-collect-FlowKt__TransformKt$withIndex$1$1":I
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$lambda-7$$inlined$collect$1;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    new-instance v4, Lkotlin/collections/IndexedValue;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$lambda-7$$inlined$collect$1;->$index$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$lambda-7$$inlined$collect$1;->$index$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 v7, v5, 0x1

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .local v5, "index$iv":I
    const/4 v6, 0x0

    .line 136
    .local v6, "$i$f$checkIndexOverflow":I
    if-ltz v5, :cond_1

    .line 139
    nop

    .line 135
    .end local v5    # "index$iv":I
    .end local v6    # "$i$f$checkIndexOverflow":I
    invoke-direct {v4, v5, v0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    return-object v3

    .line 140
    :cond_0
    nop

    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-collect-FlowKt__TransformKt$withIndex$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 137
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-collect-FlowKt__TransformKt$withIndex$1$1":I
    .restart local v5    # "index$iv":I
    .restart local v6    # "$i$f$checkIndexOverflow":I
    :cond_1
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Index overflow has happened"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
