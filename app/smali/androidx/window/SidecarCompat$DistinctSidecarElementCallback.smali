.class final Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DistinctSidecarElementCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;",
        "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;",
        "sidecarAdapter",
        "Landroidx/window/SidecarAdapter;",
        "callbackInterface",
        "(Landroidx/window/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V",
        "lastDeviceState",
        "Landroidx/window/sidecar/SidecarDeviceState;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "mActivityWindowLayoutInfo",
        "Ljava/util/WeakHashMap;",
        "Landroid/os/IBinder;",
        "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
        "onDeviceStateChanged",
        "",
        "newDeviceState",
        "onWindowLayoutChanged",
        "token",
        "newLayout",
        "window_release"
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
.field private final callbackInterface:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

.field private lastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mActivityWindowLayoutInfo:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sidecarAdapter:Landroidx/window/SidecarAdapter;


# direct methods
.method public constructor <init>(Landroidx/window/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V
    .locals 1
    .param p1, "sidecarAdapter"    # Landroidx/window/SidecarAdapter;
    .param p2, "callbackInterface"    # Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    const-string v0, "sidecarAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    .line 365
    iput-object p2, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->callbackInterface:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 367
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 377
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->mActivityWindowLayoutInfo:Ljava/util/WeakHashMap;

    .line 363
    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 4
    .param p1, "newDeviceState"    # Landroidx/window/sidecar/SidecarDeviceState;

    const-string v0, "newDeviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 380
    .local v1, "$i$a$-withLock-SidecarCompat$DistinctSidecarElementCallback$onDeviceStateChanged$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    iget-object v3, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->lastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

    invoke-virtual {v2, v3, p1}, Landroidx/window/SidecarAdapter;->isEqualSidecarDeviceState(Landroidx/window/sidecar/SidecarDeviceState;Landroidx/window/sidecar/SidecarDeviceState;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 381
    nop

    .end local v1    # "$i$a$-withLock-SidecarCompat$DistinctSidecarElementCallback$onDeviceStateChanged$1":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 383
    .restart local v1    # "$i$a$-withLock-SidecarCompat$DistinctSidecarElementCallback$onDeviceStateChanged$1":I
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->lastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

    .line 384
    iget-object v2, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->callbackInterface:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    invoke-interface {v2, p1}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V

    .line 385
    nop

    .end local v1    # "$i$a$-withLock-SidecarCompat$DistinctSidecarElementCallback$onDeviceStateChanged$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    return-void

    .line 379
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "newLayout"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    const/4 v1, 0x0

    .line 393
    .local v1, "$i$a$-synchronized-SidecarCompat$DistinctSidecarElementCallback$onWindowLayoutChanged$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->mActivityWindowLayoutInfo:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 394
    .local v2, "lastInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    iget-object v3, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    invoke-virtual {v3, v2, p2}, Landroidx/window/SidecarAdapter;->isEqualSidecarWindowLayoutInfo(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 395
    nop

    .end local v1    # "$i$a$-synchronized-SidecarCompat$DistinctSidecarElementCallback$onWindowLayoutChanged$1":I
    .end local v2    # "lastInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    monitor-exit v0

    return-void

    .line 397
    .restart local v1    # "$i$a$-synchronized-SidecarCompat$DistinctSidecarElementCallback$onWindowLayoutChanged$1":I
    .restart local v2    # "lastInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->mActivityWindowLayoutInfo:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    .end local v1    # "$i$a$-synchronized-SidecarCompat$DistinctSidecarElementCallback$onWindowLayoutChanged$1":I
    .end local v2    # "lastInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    monitor-exit v0

    .line 399
    iget-object v0, p0, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;->callbackInterface:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    invoke-interface {v0, p1, p2}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V

    .line 400
    return-void

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
