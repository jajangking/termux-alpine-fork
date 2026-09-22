.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->map(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
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
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,407:1\n103#2:408\n80#2,6:409\n104#2,2:415\n90#2:417\n86#2,3:418\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n*L\n287#1:408\n287#1:409,6\n287#1:415,2\n287#1:417\n287#1:418,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
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
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x19f,
        0x120,
        0x120
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$consume$iv$iv",
        "$this$produce",
        "$this$consume$iv$iv",
        "$this$produce",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$2",
        "L$0",
        "L$2",
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $this_map:Lkotlinx/coroutines/channels/ReceiveChannel;
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
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 286
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object v5, v4

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v6, v4

    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v7, v3

    .local v7, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    move-object v8, v4

    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    move v9, v3

    .local v9, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    move-object/from16 v10, p1

    .local v10, "$result":Ljava/lang/Object;
    move v11, v3

    .local v3, "$i$f$consumeEach":I
    .local v11, "$i$f$consume":I
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v8, 0x0

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    move-object v6, v13

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    move-object v5, v14

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_0
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v4

    move-object/from16 v17, v13

    move v13, v9

    move-object v9, v12

    move-object/from16 v12, v17

    goto/16 :goto_3

    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$i$f$consumeEach":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v9    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$consume":I
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object v5, v4

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v6, v4

    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v7, v3

    .restart local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    move-object v8, v4

    .restart local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    move v9, v3

    .restart local v9    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    move v11, v3

    .restart local v3    # "$i$f$consumeEach":I
    .restart local v11    # "$i$f$consume":I
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v8, 0x0

    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    move-object v6, v14

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function2;

    iget-object v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    move-object v5, v15

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v4

    move-object v1, v12

    move v12, v11

    move-object v11, v10

    goto/16 :goto_2

    .line 418
    .end local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .end local v9    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 286
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$i$f$consumeEach":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$consume":I
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object v5, v4

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v6, v4

    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v7, v4

    .local v7, "cause$iv$iv":Ljava/lang/Throwable;
    move v8, v3

    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    move v9, v3

    .restart local v3    # "$i$f$consumeEach":I
    .local v9, "$i$f$consume":I
    const/4 v3, 0x0

    const/4 v11, 0x0

    .end local v9    # "$i$f$consume":I
    .restart local v11    # "$i$f$consume":I
    const/4 v8, 0x0

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v7, 0x0

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    move-object v6, v12

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    move-object v5, v13

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_2
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v4

    move-object v15, v10

    move-object v13, v12

    move v12, v11

    move-object v10, v9

    move-object v11, v15

    move-object v9, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v14

    goto :goto_1

    .line 418
    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto/16 :goto_4

    .line 286
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$i$f$consumeEach":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$consume":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    iget-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .line 287
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v3, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    .line 408
    .local v7, "$i$f$consumeEach":I
    move-object v8, v3

    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v11, 0x0

    .line 409
    .restart local v11    # "$i$f$consume":I
    nop

    .line 412
    const/4 v9, 0x0

    .line 413
    .local v9, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 414
    move-object v12, v8

    .local v12, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v13, 0x0

    .line 415
    .local v13, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_3
    invoke-interface {v12}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v17, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v9

    move-object v9, v14

    move-object/from16 v14, v17

    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    .local v14, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_0
    :try_start_4
    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    const/4 v15, 0x1

    iput v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    invoke-interface {v9, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .end local v3    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    if-ne v15, v0, :cond_0

    .line 286
    return-object v0

    .line 415
    :cond_0
    move-object/from16 v17, v5

    move-object v5, v3

    move v3, v7

    move-object v7, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move v8, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v10

    move-object/from16 v10, v18

    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v13    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v3, "$i$f$consumeEach":I
    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v11, "$result":Ljava/lang/Object;
    .local v12, "$i$f$consume":I
    :goto_1
    :try_start_5
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "e$iv":Ljava/lang/Object;
    move-object/from16 p1, v15

    .local p1, "it":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 288
    .local v16, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    move-object/from16 v4, p1

    .end local p1    # "it":Ljava/lang/Object;
    .local v4, "it":Ljava/lang/Object;
    invoke-interface {v13, v4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v4    # "it":Ljava/lang/Object;
    .end local v15    # "e$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_1

    .line 286
    return-object v0

    .line 288
    :cond_1
    move-object v4, v5

    move-object v5, v6

    move-object v15, v14

    move-object v14, v13

    move-object v6, v7

    move-object v13, v10

    move/from16 v7, v16

    move-object v10, v1

    move-object v1, v5

    move-object/from16 v17, v9

    move v9, v8

    move-object/from16 v8, v17

    .end local v16    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    .local v9, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :goto_2
    :try_start_6
    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 p1, v3

    const/4 v3, 0x0

    .end local v3    # "$i$f$consumeEach":I
    .local p1, "$i$f$consumeEach":I
    :try_start_7
    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    invoke-interface {v1, v10, v2}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v1, v0, :cond_2

    .line 286
    return-object v0

    .line 288
    :cond_2
    move/from16 v3, p1

    move-object v10, v11

    move v11, v12

    move-object v12, v14

    move-object/from16 v17, v13

    move v13, v9

    move-object/from16 v9, v17

    .line 289
    .end local v9    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v12    # "$i$f$consume":I
    .end local p1    # "$i$f$consumeEach":I
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v10    # "$result":Ljava/lang/Object;
    .local v11, "$i$f$consume":I
    .restart local v13    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :goto_3
    move-object v14, v15

    .end local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .restart local v14    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v1, v4

    move v7, v3

    const/4 v4, 0x0

    move-object v3, v1

    move-object/from16 v1, p0

    .local v1, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto :goto_0

    .line 418
    .end local v1    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v3    # "$i$f$consumeEach":I
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v13    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v14    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v11, "$result":Ljava/lang/Object;
    .restart local v12    # "$i$f$consume":I
    .restart local p1    # "$i$f$consumeEach":I
    :catchall_2
    move-exception v0

    move/from16 v3, p1

    move-object v10, v11

    move v11, v12

    goto :goto_4

    .end local p1    # "$i$f$consumeEach":I
    .restart local v3    # "$i$f$consumeEach":I
    :catchall_3
    move-exception v0

    move/from16 p1, v3

    move-object v10, v11

    move v11, v12

    .end local v3    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consumeEach":I
    goto :goto_4

    .line 416
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$i$f$consumeEach":I
    .restart local v3    # "$i$f$consumeEach":I
    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v9, "cause$iv$iv":Ljava/lang/Throwable;
    :cond_3
    nop

    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 417
    invoke-static {v7, v9}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 414
    nop

    .line 416
    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$i$f$consume":I
    nop

    .line 290
    .end local v3    # "$i$f$consumeEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 418
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v12    # "$i$f$consume":I
    :catchall_4
    move-exception v0

    move-object v5, v6

    move-object v6, v7

    move-object v8, v9

    move-object v10, v11

    move v11, v12

    goto :goto_4

    .end local v3    # "$i$f$consumeEach":I
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$i$f$consume":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$f$consumeEach":I
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v10    # "$result":Ljava/lang/Object;
    .local v11, "$i$f$consume":I
    :catchall_5
    move-exception v0

    move v3, v7

    goto :goto_4

    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    :catchall_6
    move-exception v0

    move v3, v7

    move-object v6, v8

    move-object v8, v9

    .line 419
    .end local v7    # "$i$f$consumeEach":I
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    :goto_4
    move-object v1, v0

    .line 420
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v1    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$i$f$consumeEach":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$consume":I
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v10    # "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$consume":I
    :catchall_7
    move-exception v0

    move-object v4, v0

    .line 417
    invoke-static {v6, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
