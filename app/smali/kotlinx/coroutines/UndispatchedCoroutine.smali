.class public final Lkotlinx/coroutines/UndispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/ScopeCoroutine<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,182:1\n55#2,13:183\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n141#1:183,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "T",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "savedContext",
        "savedOldValue",
        "",
        "afterResume",
        "",
        "state",
        "clearThreadContext",
        "",
        "saveThreadContext",
        "oldValue",
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
.field private savedContext:Lkotlin/coroutines/CoroutineContext;

.field private savedOldValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "uCont"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 116
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected afterResume(Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .local v0, "context":Lkotlin/coroutines/CoroutineContext;
    :cond_0
    const/4 v2, 0x0

    .line 135
    .local v2, "$i$a$-let-UndispatchedCoroutine$afterResume$1":I
    iget-object v3, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    invoke-static {v0, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 136
    iput-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 137
    iput-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    .line 138
    nop

    .line 134
    .end local v0    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "$i$a$-let-UndispatchedCoroutine$afterResume$1":I
    nop

    .line 140
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "result":Ljava/lang/Object;
    iget-object v2, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .local v2, "continuation$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .local v3, "countOrElement$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 183
    .local v4, "$i$f$withContinuationContext":I
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 184
    .local v5, "context$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v5, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 185
    .local v6, "oldValue$iv":Ljava/lang/Object;
    sget-object v7, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v6, v7, :cond_1

    .line 187
    invoke-static {v2, v5, v6}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v1

    goto :goto_1

    .line 189
    :cond_1
    check-cast v1, Lkotlinx/coroutines/UndispatchedCoroutine;

    .line 185
    :goto_1
    nop

    .line 191
    .local v1, "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    nop

    .line 192
    const/4 v7, 0x0

    .line 142
    .local v7, "$i$a$-withContinuationContext-UndispatchedCoroutine$afterResume$2":I
    :try_start_0
    iget-object v8, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {v8, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 143
    nop

    .end local v7    # "$i$a$-withContinuationContext-UndispatchedCoroutine$afterResume$2":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    :cond_2
    invoke-static {v5, v6}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 192
    :cond_3
    nop

    .line 144
    .end local v1    # "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    .end local v2    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "countOrElement$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$withContinuationContext":I
    .end local v5    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v6    # "oldValue$iv":Ljava/lang/Object;
    return-void

    .line 192
    .restart local v1    # "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    .restart local v2    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .restart local v3    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$withContinuationContext":I
    .restart local v5    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v6    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    .line 194
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 195
    :cond_4
    invoke-static {v5, v6}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_5
    throw v7
.end method

.method public final clearThreadContext()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 129
    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public final saveThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "oldValue"    # Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 123
    iput-object p2, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    .line 124
    return-void
.end method
