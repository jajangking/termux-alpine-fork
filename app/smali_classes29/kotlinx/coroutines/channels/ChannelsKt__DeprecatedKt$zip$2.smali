.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->zip(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TV;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,407:1\n103#2:408\n80#2,6:409\n104#2,2:415\n90#2:417\n86#2,3:418\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n*L\n396#1:408\n396#1:409,6\n396#1:415,2\n396#1:417\n396#1:418,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
        "V",
        "Lkotlinx/coroutines/channels/ProducerScope;"
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
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x19f,
        0x18d,
        0x18f
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv",
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv",
        "element1"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "L$0",
        "L$1",
        "L$3",
        "L$5"
    }
.end annotation


# instance fields
.field final synthetic $other:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;TR;TV;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TR;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-TR;+TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p3, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 394
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move v5, v3

    .local v5, "$i$f$consumeEach":I
    move v6, v3

    .local v6, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    move v7, v3

    .local v3, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v7, "$i$f$consume":I
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_0
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v4

    move-object v14, v9

    move-object v1, v12

    move-object v12, v15

    move v9, v7

    move v7, v5

    goto/16 :goto_3

    .line 418
    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v6    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 394
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v5    # "$i$f$consumeEach":I
    .end local v7    # "$i$f$consume":I
    .end local v8    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object v5, v4

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move v6, v3

    .local v6, "$i$f$consumeEach":I
    move v7, v3

    .local v7, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    move-object v8, v4

    .local v8, "element1":Ljava/lang/Object;
    move v9, v3

    .local v9, "$i$f$consume":I
    move-object v10, v4

    .restart local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    move-object/from16 v11, p1

    .local v11, "$result":Ljava/lang/Object;
    move-object v12, v4

    .local v12, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    move-object v13, v4

    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v10, 0x0

    iget-object v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    move-object v13, v15

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/functions/Function2;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    .end local v12    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v4, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    move-object v5, v12

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 p1, v3

    move-object v1, v11

    move-object v3, v15

    const/4 v12, 0x0

    move-object v15, v10

    move-object v10, v4

    const/4 v4, 0x0

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto/16 :goto_2

    .line 418
    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .end local v8    # "element1":Ljava/lang/Object;
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_1
    move-exception v0

    move v5, v6

    move v7, v9

    move-object v8, v11

    move-object v10, v13

    goto/16 :goto_4

    .line 394
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v6    # "$i$f$consumeEach":I
    .end local v9    # "$i$f$consume":I
    .end local v11    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v2, p0

    const/4 v4, 0x0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object v5, v4

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move v6, v3

    .restart local v6    # "$i$f$consumeEach":I
    move v7, v3

    .local v7, "$i$f$consume":I
    move-object v8, v4

    .restart local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    move-object/from16 v9, p1

    .local v9, "$result":Ljava/lang/Object;
    move-object v10, v4

    .local v10, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    move-object v11, v4

    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v4, 0x0

    .end local v6    # "$i$f$consumeEach":I
    .local v4, "$i$f$consumeEach":I
    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v8, 0x0

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    move-object v11, v12

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    move-object v10, v13

    check-cast v10, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    move-object v5, v13

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_2
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v15, v9

    move-object v13, v11

    move-object v14, v12

    const/4 v12, 0x0

    move v9, v7

    move-object v11, v10

    move v7, v4

    move-object v10, v8

    move-object v8, v15

    const/4 v4, 0x0

    goto :goto_1

    .line 418
    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_2
    move-exception v0

    move v5, v4

    move-object v8, v9

    move-object v10, v11

    goto/16 :goto_4

    .line 394
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v4    # "$i$f$consumeEach":I
    .end local v7    # "$i$f$consume":I
    .end local v9    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    iget-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 395
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    .line 396
    .local v4, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    .line 408
    .local v7, "$i$f$consumeEach":I
    move-object v10, v5

    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v9, 0x0

    .line 409
    .local v9, "$i$f$consume":I
    nop

    .line 412
    const/4 v11, 0x0

    .line 413
    .local v11, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 414
    move-object v12, v10

    .local v12, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v13, 0x0

    .line 415
    .local v13, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_3
    invoke-interface {v12}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v18, v5

    move-object v5, v3

    move v3, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v14

    move-object v14, v6

    move-object/from16 v6, v19

    .local v3, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v4, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v10, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    :goto_0
    :try_start_4
    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    const/4 v15, 0x1

    iput v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .end local v4    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    if-ne v15, v0, :cond_0

    .line 394
    return-object v0

    .line 415
    :cond_0
    move-object/from16 v18, v11

    move-object v11, v10

    move-object v10, v13

    move-object/from16 v13, v18

    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    .local v11, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_1
    :try_start_5
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "e$iv":Ljava/lang/Object;
    move-object/from16 p1, v15

    .local p1, "element1":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 397
    .local v16, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    move-object/from16 v1, p1

    .end local p1    # "element1":Ljava/lang/Object;
    .local v1, "element1":Ljava/lang/Object;
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    move-object/from16 p1, v1

    .end local v1    # "element1":Ljava/lang/Object;
    .restart local p1    # "element1":Ljava/lang/Object;
    const/4 v1, 0x2

    iput v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    invoke-interface {v11, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v15    # "e$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_1

    .line 394
    return-object v0

    .line 397
    :cond_1
    move-object v15, v10

    move-object v10, v11

    move-object v11, v8

    move-object/from16 v8, p1

    move/from16 p1, v3

    move-object v3, v14

    move-object v14, v6

    move/from16 v6, v16

    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v16    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .local v6, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .local v8, "element1":Ljava/lang/Object;
    .local v10, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v11, "$result":Ljava/lang/Object;
    .local v15, "cause$iv$iv":Ljava/lang/Throwable;
    .local p1, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :goto_2
    :try_start_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .end local v6    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .end local v8    # "element1":Ljava/lang/Object;
    .restart local v4    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v1, p0

    move-object v8, v11

    move-object v11, v13

    move-object v6, v14

    move-object v13, v15

    move-object v14, v3

    move/from16 v3, p1

    .restart local v12    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto :goto_0

    .line 398
    .end local v4    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .restart local v8    # "element1":Ljava/lang/Object;
    :cond_2
    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, "element2":Ljava/lang/Object;
    move-object/from16 v16, v4

    invoke-interface {v3, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "element2":Ljava/lang/Object;
    .local v17, "element2":Ljava/lang/Object;
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    invoke-interface {v5, v4, v2}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v8    # "element1":Ljava/lang/Object;
    .end local v10    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v15    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v17    # "element2":Ljava/lang/Object;
    if-ne v1, v0, :cond_3

    .line 394
    return-object v0

    .line 399
    :cond_3
    move-object v1, v10

    move-object v8, v11

    move-object v10, v13

    move-object/from16 v4, v16

    move-object v11, v3

    move-object v13, v5

    move/from16 v3, p1

    .line 400
    .end local v11    # "$result":Ljava/lang/Object;
    .end local p1    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v8, "$result":Ljava/lang/Object;
    :goto_3
    move-object v5, v13

    .end local v6    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .restart local v4    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v13, v15

    .local v1, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v12    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v6, v10

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v11

    move-object v11, v6

    move-object v6, v14

    move-object/from16 v14, v18

    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_0

    .line 418
    .end local v1    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v12    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v11    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move v5, v7

    move v7, v9

    move-object v8, v11

    move-object v10, v13

    goto :goto_4

    .line 416
    .end local v11    # "$result":Ljava/lang/Object;
    .restart local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v8    # "$result":Ljava/lang/Object;
    :cond_4
    nop

    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 417
    invoke-static {v13, v10}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 414
    nop

    .line 416
    .end local v9    # "$i$f$consume":I
    nop

    .line 401
    .end local v7    # "$i$f$consumeEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 418
    .restart local v7    # "$i$f$consumeEach":I
    .restart local v9    # "$i$f$consume":I
    :catchall_4
    move-exception v0

    move v5, v7

    move v7, v9

    move-object v10, v13

    goto :goto_4

    :catchall_5
    move-exception v0

    move v5, v7

    move v7, v9

    move-object v10, v11

    goto :goto_4

    :catchall_6
    move-exception v0

    move v5, v7

    move v7, v9

    .end local v9    # "$i$f$consume":I
    .local v5, "$i$f$consumeEach":I
    .local v7, "$i$f$consume":I
    :goto_4
    move-object v1, v0

    .line 419
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    nop

    .line 420
    nop

    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v5    # "$i$f$consumeEach":I
    .end local v7    # "$i$f$consume":I
    .end local v8    # "$result":Ljava/lang/Object;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .restart local v5    # "$i$f$consumeEach":I
    .restart local v7    # "$i$f$consume":I
    .restart local v8    # "$result":Ljava/lang/Object;
    :catchall_7
    move-exception v0

    move-object v3, v0

    .line 417
    invoke-static {v10, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
