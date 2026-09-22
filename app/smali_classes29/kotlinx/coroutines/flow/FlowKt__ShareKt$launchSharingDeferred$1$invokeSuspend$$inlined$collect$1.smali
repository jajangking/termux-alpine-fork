.class public final Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n332#2:135\n333#2,5:137\n1#3:136\n*E\n"
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
.field final synthetic $$this$launch$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $result$inlined:Lkotlinx/coroutines/CompletableDeferred;

.field final synthetic $state$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$state$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$$this$launch$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$result$inlined:Lkotlinx/coroutines/CompletableDeferred;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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
    .local v2, "$i$a$-collect-FlowKt__ShareKt$launchSharingDeferred$1$1":I
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$state$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 136
    .local v3, "it":Lkotlinx/coroutines/flow/MutableStateFlow;
    :cond_0
    const/4 v4, 0x0

    .line 135
    .local v4, "$i$a$-let-FlowKt__ShareKt$launchSharingDeferred$1$1$1":I
    invoke-interface {v3, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .end local v3    # "it":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$a$-let-FlowKt__ShareKt$launchSharingDeferred$1$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v3, :cond_1

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$$this$launch$inlined:Lkotlinx/coroutines/CoroutineScope;

    .local v3, "$this$invokeSuspend_u24lambda_u2d3_u24lambda_u2d2":Lkotlinx/coroutines/CoroutineScope;
    const/4 v4, 0x0

    .line 137
    .local v4, "$i$a$-run-FlowKt__ShareKt$launchSharingDeferred$1$1$2":I
    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$state$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    move-object v7, v6

    .local v7, "it":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$a$-also-FlowKt__ShareKt$launchSharingDeferred$1$1$2$1":I
    iget-object v9, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;->$result$inlined:Lkotlinx/coroutines/CompletableDeferred;

    new-instance v10, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v11, v7

    check-cast v11, Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v12

    invoke-static {v12}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/Job;)V

    invoke-interface {v9, v10}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 139
    nop

    .end local v7    # "it":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v8    # "$i$a$-also-FlowKt__ShareKt$launchSharingDeferred$1$1$2$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 137
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    nop

    .line 135
    .end local v3    # "$this$invokeSuspend_u24lambda_u2d3_u24lambda_u2d2":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$a$-run-FlowKt__ShareKt$launchSharingDeferred$1$1$2":I
    nop

    .line 141
    :cond_1
    nop

    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-collect-FlowKt__ShareKt$launchSharingDeferred$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
