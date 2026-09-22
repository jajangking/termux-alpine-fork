.class public final synthetic Lkotlinx/coroutines/-$$Lambda$ThreadPoolDispatcher$W24uUimg9kaJilc37Etkfwyjyfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/ThreadPoolDispatcher;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/ThreadPoolDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/-$$Lambda$ThreadPoolDispatcher$W24uUimg9kaJilc37Etkfwyjyfs;->f$0:Lkotlinx/coroutines/ThreadPoolDispatcher;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/-$$Lambda$ThreadPoolDispatcher$W24uUimg9kaJilc37Etkfwyjyfs;->f$0:Lkotlinx/coroutines/ThreadPoolDispatcher;

    invoke-static {v0, p1}, Lkotlinx/coroutines/ThreadPoolDispatcher;->lambda$W24uUimg9kaJilc37Etkfwyjyfs(Lkotlinx/coroutines/ThreadPoolDispatcher;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
