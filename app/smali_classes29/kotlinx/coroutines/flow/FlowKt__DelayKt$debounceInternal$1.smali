.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->debounceInternal$FlowKt__DelayKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,351:1\n16#2:352\n16#2:354\n1#3:353\n201#4,11:355\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n221#1:352\n224#1:354\n231#1:355,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downstream",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    i = {}
    l = {
        0xe0,
        0x166
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_debounceInternal:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $timeoutMillisSelector:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1, v2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 210
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    move v9, v6

    .local v9, "$i$f$select":I
    const/4 v9, 0x0

    iget-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v7

    goto/16 :goto_a

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$select":I
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    iget-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v7

    goto/16 :goto_2

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v8    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    iget-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .local v9, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    iget-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    move-object/from16 v16, v10

    check-cast v16, Lkotlinx/coroutines/flow/FlowCollector;

    .line 212
    .local v16, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;

    iget-object v13, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v10, v13, v7}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    move-object v13, v10

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v10, v9

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v10

    .line 216
    .local v10, "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v12, v16

    move-object/from16 v18, v11

    move-object v11, v10

    move-object/from16 v10, v18

    .line 217
    .end local v16    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v10, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v11, "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v12, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_0
    iget-object v13, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v14, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->DONE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v13, v14, :cond_d

    .line 218
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 220
    .local v13, "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v14, :cond_5

    .line 221
    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    sget-object v15, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v15, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    iget-object v6, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .local v6, "value$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 352
    .local v17, "$i$f$unbox":I
    if-ne v6, v15, :cond_0

    move-object v6, v7

    .line 221
    .end local v6    # "value$iv":Ljava/lang/Object;
    .end local v15    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v17    # "$i$f$unbox":I
    :cond_0
    invoke-interface {v14, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    iput-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 222
    iget-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v6, v14, v3

    if-ltz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    .line 223
    iget-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v6, v14, v3

    if-nez v6, :cond_5

    .line 224
    sget-object v6, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    iget-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .local v14, "value$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 354
    .local v15, "$i$f$unbox":I
    if-ne v14, v6, :cond_2

    move-object v14, v7

    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v14    # "value$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$unbox":I
    :cond_2
    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 224
    iput-object v12, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    invoke-interface {v12, v14, v6}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v13    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    if-ne v6, v0, :cond_3

    .line 210
    return-object v0

    .line 224
    :cond_3
    move-object v6, v9

    move-object v9, v13

    .line 225
    :goto_2
    iput-object v7, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v6

    move-object v6, v2

    move-object v2, v0

    goto :goto_3

    .line 353
    .restart local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v10    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v13    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_4
    const/4 v0, 0x0

    .line 222
    .local v0, "$i$a$-require-FlowKt__DelayKt$debounceInternal$1$1":I
    nop

    .end local v0    # "$i$a$-require-FlowKt__DelayKt$debounceInternal$1$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Debounce timeout should not be negative"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 229
    .end local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v13    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_5
    move-object v6, v2

    move-object v2, v0

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .local v6, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    const/4 v0, 0x0

    .line 229
    .local v0, "$i$a$-assert-FlowKt__DelayKt$debounceInternal$1$2":I
    iget-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v14, :cond_7

    iget-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v14, v14, v3

    if-lez v14, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v5

    .end local v0    # "$i$a$-assert-FlowKt__DelayKt$debounceInternal$1$2":I
    :goto_5
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_9
    :goto_6
    const/4 v14, 0x0

    .line 355
    .local v14, "$i$f$select":I
    nop

    .line 358
    iput-object v12, v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v11, v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v10, v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v13, v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    move-object v15, v6

    check-cast v15, Lkotlin/coroutines/Continuation;

    .local v15, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v17, 0x0

    .line 359
    .local v17, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v0, v15}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 p1, v0

    .line 360
    .local p1, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 361
    move-object/from16 v3, p1

    .end local p1    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v3, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    :try_start_0
    move-object v0, v3

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilder;

    .local v0, "$this$invokeSuspend_u24lambda_u2d2":Lkotlinx/coroutines/selects/SelectBuilder;
    const/4 v4, 0x0

    .line 233
    .local v4, "$i$a$-select-FlowKt__DelayKt$debounceInternal$1$3":I
    iget-object v5, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_a

    .line 234
    move-object/from16 p1, v8

    .end local v8    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_1
    iget-wide v7, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1;

    const/4 v5, 0x0

    invoke-direct {v13, v12, v10, v5}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v7, v8, v13}, Lkotlinx/coroutines/selects/SelectBuilder;->onTimeout(JLkotlin/jvm/functions/Function1;)V

    goto :goto_7

    .line 233
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    :cond_a
    move-object/from16 p1, v8

    .line 239
    .end local v8    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_7
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v7

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    :try_start_2
    invoke-direct {v8, v10, v12, v5}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v7, v8}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    nop

    .end local v0    # "$this$invokeSuspend_u24lambda_u2d2":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v4    # "$i$a$-select-FlowKt__DelayKt$debounceInternal$1$3":I
    goto :goto_9

    .line 362
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_8

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v5, v7

    move-object/from16 p1, v8

    .line 363
    .end local v8    # "$result":Ljava/lang/Object;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_8
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 365
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :goto_9
    invoke-virtual {v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 358
    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v15    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v17    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_b

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_b
    if-ne v0, v2, :cond_c

    .line 210
    return-object v2

    .line 358
    :cond_c
    move-object/from16 v8, p1

    move-object v0, v2

    move-object v2, v6

    move-object v7, v9

    move v9, v14

    .end local v6    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v14    # "$i$f$select":I
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v8    # "$result":Ljava/lang/Object;
    .local v9, "$i$f$select":I
    :goto_a
    nop

    .end local v9    # "$i$f$select":I
    move-object v9, v7

    .local v9, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v11    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v7, v5

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .restart local v10    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto/16 :goto_0

    .line 251
    .end local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
