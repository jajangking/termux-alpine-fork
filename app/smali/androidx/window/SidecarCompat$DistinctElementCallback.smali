.class final Landroidx/window/SidecarCompat$DistinctElementCallback;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DistinctElementCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u001c\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/window/SidecarCompat$DistinctElementCallback;",
        "Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;",
        "callbackInterface",
        "(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V",
        "activityWindowLayoutInfo",
        "Ljava/util/WeakHashMap;",
        "Landroid/app/Activity;",
        "Landroidx/window/WindowLayoutInfo;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "onWindowLayoutChanged",
        "",
        "activity",
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
.field private final activityWindowLayoutInfo:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Landroidx/window/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackInterface:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V
    .locals 1
    .param p1, "callbackInterface"    # Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    const-string v0, "callbackInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->callbackInterface:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    .line 335
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 342
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->activityWindowLayoutInfo:Ljava/util/WeakHashMap;

    .line 332
    return-void
.end method


# virtual methods
.method public onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newLayout"    # Landroidx/window/WindowLayoutInfo;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 348
    .local v1, "$i$a$-withLock-SidecarCompat$DistinctElementCallback$onWindowLayoutChanged$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->activityWindowLayoutInfo:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/WindowLayoutInfo;

    .line 349
    .local v2, "lastInfo":Landroidx/window/WindowLayoutInfo;
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 350
    nop

    .end local v1    # "$i$a$-withLock-SidecarCompat$DistinctElementCallback$onWindowLayoutChanged$1":I
    .end local v2    # "lastInfo":Landroidx/window/WindowLayoutInfo;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 352
    .restart local v1    # "$i$a$-withLock-SidecarCompat$DistinctElementCallback$onWindowLayoutChanged$1":I
    .restart local v2    # "lastInfo":Landroidx/window/WindowLayoutInfo;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->activityWindowLayoutInfo:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/WindowLayoutInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v1    # "$i$a$-withLock-SidecarCompat$DistinctElementCallback$onWindowLayoutChanged$1":I
    .end local v2    # "lastInfo":Landroidx/window/WindowLayoutInfo;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 354
    iget-object v0, p0, Landroidx/window/SidecarCompat$DistinctElementCallback;->callbackInterface:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    invoke-interface {v0, p1, p2}, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V

    .line 355
    return-void

    .line 347
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
