.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
.super Ljava/lang/Object;
.source "Limit.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__LimitKt;->takeWhile(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
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
    value = "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,143:1\n86#2,5:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1",
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
.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 135
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

    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
    move v1, v5

    .line 145
    .local v1, "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    const/4 v1, 0x0

    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 0
    .end local v1    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
    :pswitch_1
    move-object p1, p0

    .restart local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
    move v2, v5

    .local v2, "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    move-object v6, v4

    .line 144
    .local v6, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    iget-object v6, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$1:Ljava/lang/Object;

    iget-object v7, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$0:Ljava/lang/Object;

    move-object p1, v7

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v0

    goto :goto_1

    .line 0
    .end local v2    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    .end local v6    # "value":Ljava/lang/Object;
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 132
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
    .local p1, "value":Ljava/lang/Object;
    move-object v6, p2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .local v6, "$completion":Lkotlin/coroutines/Continuation;
    move-object v7, p1

    .local v7, "value":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 144
    .local v6, "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    iget-object v8, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$0:Ljava/lang/Object;

    iput-object v7, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$1:Ljava/lang/Object;

    iput v3, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->label:I

    const/4 v9, 0x6

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v8, v7, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .end local p1    # "value":Ljava/lang/Object;
    if-ne v8, v1, :cond_1

    return-object v1

    :cond_1
    move-object p1, v2

    move v2, v6

    move-object v6, v7

    .end local v7    # "value":Ljava/lang/Object;
    .local v2, "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    .local v6, "value":Ljava/lang/Object;
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;
    :goto_1
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 145
    iget-object v5, p1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-9$$inlined$collectWhile$1$1;->label:I

    invoke-interface {v5, v6, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v6    # "value":Ljava/lang/Object;
    if-ne v4, v1, :cond_2

    return-object v1

    :cond_2
    move v1, v2

    .line 146
    .end local v2    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    .restart local v1    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    :goto_2
    move v2, v1

    goto :goto_3

    .line 148
    .end local v1    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    .restart local v2    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    :cond_3
    move v3, v5

    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 144
    nop

    .end local v2    # "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1":I
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 133
    :cond_4
    new-instance v1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
