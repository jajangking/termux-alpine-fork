.class public final Landroidx/window/ExtensionWindowBackend;
.super Ljava/lang/Object;
.source "ExtensionWindowBackend.kt"

# interfaces
.implements Landroidx/window/WindowBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;,
        Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;,
        Landroidx/window/ExtensionWindowBackend$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionWindowBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionWindowBackend.kt\nandroidx/window/ExtensionWindowBackend\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,263:1\n286#2,2:264\n1741#2,3:266\n1741#2,3:269\n*S KotlinDebug\n*F\n+ 1 ExtensionWindowBackend.kt\nandroidx/window/ExtensionWindowBackend\n*L\n78#1:264,2\n89#1:266,3\n126#1:269,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0011\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u0016\u0010\u001b\u001a\u00020\u00102\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/window/ExtensionWindowBackend;",
        "Landroidx/window/WindowBackend;",
        "windowExtension",
        "Landroidx/window/ExtensionInterfaceCompat;",
        "(Landroidx/window/ExtensionInterfaceCompat;)V",
        "getWindowExtension",
        "()Landroidx/window/ExtensionInterfaceCompat;",
        "setWindowExtension",
        "windowLayoutChangeCallbacks",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;",
        "getWindowLayoutChangeCallbacks$annotations",
        "()V",
        "getWindowLayoutChangeCallbacks",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "callbackRemovedForActivity",
        "",
        "activity",
        "Landroid/app/Activity;",
        "isActivityRegistered",
        "",
        "registerLayoutChangeCallback",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "callback",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/WindowLayoutInfo;",
        "unregisterLayoutChangeCallback",
        "Companion",
        "ExtensionListenerImpl",
        "WindowLayoutChangeCallbackWrapper",
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


# static fields
.field public static final Companion:Landroidx/window/ExtensionWindowBackend$Companion;

.field private static final TAG:Ljava/lang/String; = "WindowServer"

.field private static volatile globalInstance:Landroidx/window/ExtensionWindowBackend;

.field private static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private windowExtension:Landroidx/window/ExtensionInterfaceCompat;

.field private final windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/ExtensionWindowBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/ExtensionWindowBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/ExtensionWindowBackend;->Companion:Landroidx/window/ExtensionWindowBackend$Companion;

    .line 171
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/ExtensionWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/ExtensionInterfaceCompat;)V
    .locals 1
    .param p1, "windowExtension"    # Landroidx/window/ExtensionInterfaceCompat;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend;->windowExtension:Landroidx/window/ExtensionInterfaceCompat;

    .line 42
    nop

    .line 43
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;

    invoke-direct {v0, p0}, Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;-><init>(Landroidx/window/ExtensionWindowBackend;)V

    check-cast v0, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    invoke-interface {p1, v0}, Landroidx/window/ExtensionInterfaceCompat;->setExtensionCallback(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V

    .line 44
    :goto_0
    nop

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/ExtensionWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    return-void
.end method

.method public static final synthetic access$getGlobalInstance$cp()Landroidx/window/ExtensionWindowBackend;
    .locals 1

    .line 36
    sget-object v0, Landroidx/window/ExtensionWindowBackend;->globalInstance:Landroidx/window/ExtensionWindowBackend;

    return-object v0
.end method

.method public static final synthetic access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 36
    sget-object v0, Landroidx/window/ExtensionWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$setGlobalInstance$cp(Landroidx/window/ExtensionWindowBackend;)V
    .locals 0
    .param p0, "<set-?>"    # Landroidx/window/ExtensionWindowBackend;

    .line 36
    sput-object p0, Landroidx/window/ExtensionWindowBackend;->globalInstance:Landroidx/window/ExtensionWindowBackend;

    return-void
.end method

.method private final callbackRemovedForActivity(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 126
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 269
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .local v5, "wrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$a$-any-ExtensionWindowBackend$callbackRemovedForActivity$hasRegisteredCallback$1":I
    invoke-virtual {v5}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "wrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    .end local v6    # "$i$a$-any-ExtensionWindowBackend$callbackRemovedForActivity$hasRegisteredCallback$1":I
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 271
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 126
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    move v0, v3

    .line 129
    .local v0, "hasRegisteredCallback":Z
    if-eqz v0, :cond_3

    .line 130
    return-void

    .line 133
    :cond_3
    iget-object v1, p0, Landroidx/window/ExtensionWindowBackend;->windowExtension:Landroidx/window/ExtensionInterfaceCompat;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1, p1}, Landroidx/window/ExtensionInterfaceCompat;->onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V

    .line 134
    :goto_1
    return-void
.end method

.method public static synthetic getWindowLayoutChangeCallbacks$annotations()V
    .locals 0

    return-void
.end method

.method private final isActivityRegistered(Landroid/app/Activity;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 89
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 266
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .local v5, "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    const/4 v6, 0x0

    .line 90
    .local v6, "$i$a$-any-ExtensionWindowBackend$isActivityRegistered$1":I
    invoke-virtual {v5}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    .end local v6    # "$i$a$-any-ExtensionWindowBackend$isActivityRegistered$1":I
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 89
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    return v3
.end method


# virtual methods
.method public final getWindowExtension()Landroidx/window/ExtensionInterfaceCompat;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend;->windowExtension:Landroidx/window/ExtensionInterfaceCompat;

    return-object v0
.end method

.method public final getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public registerLayoutChangeCallback(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "activity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Landroidx/window/ExtensionWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$a$-withLock-ExtensionWindowBackend$registerLayoutChangeCallback$1":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/window/ExtensionWindowBackend;->getWindowExtension()Landroidx/window/ExtensionInterfaceCompat;

    move-result-object v5

    .line 60
    .local v5, "windowExtension":Landroidx/window/ExtensionInterfaceCompat;
    if-nez v5, :cond_0

    .line 61
    nop

    .line 64
    new-instance v6, Landroidx/window/WindowLayoutInfo;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v6}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    nop

    .end local v0    # "$i$a$-withLock-ExtensionWindowBackend$registerLayoutChangeCallback$1":I
    .end local v5    # "windowExtension":Landroidx/window/ExtensionInterfaceCompat;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 70
    .restart local v0    # "$i$a$-withLock-ExtensionWindowBackend$registerLayoutChangeCallback$1":I
    .restart local v5    # "windowExtension":Landroidx/window/ExtensionInterfaceCompat;
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroidx/window/ExtensionWindowBackend;->isActivityRegistered(Landroid/app/Activity;)Z

    move-result v6

    .line 71
    .local v6, "isActivityRegistered":Z
    new-instance v7, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-direct {v7, v1, v2, v3}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 72
    .local v7, "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    invoke-virtual/range {p0 .. p0}, Landroidx/window/ExtensionWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    if-nez v6, :cond_1

    .line 74
    invoke-interface {v5, v1}, Landroidx/window/ExtensionInterfaceCompat;->onWindowLayoutChangeListenerAdded(Landroid/app/Activity;)V

    goto :goto_2

    .line 78
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/window/ExtensionWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 264
    .local v9, "$i$f$firstOrNull":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v13, v11

    check-cast v13, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .local v13, "it":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    const/4 v14, 0x0

    .line 79
    .local v14, "$i$a$-firstOrNull-ExtensionWindowBackend$registerLayoutChangeCallback$1$lastInfo$1":I
    invoke-virtual {v13}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .end local v13    # "it":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    .end local v14    # "$i$a$-firstOrNull-ExtensionWindowBackend$registerLayoutChangeCallback$1$lastInfo$1":I
    if-eqz v15, :cond_2

    goto :goto_0

    .line 265
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object v11, v12

    .line 78
    .end local v8    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v11, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 80
    nop

    .line 78
    if-nez v11, :cond_4

    .line 80
    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getLastInfo()Landroidx/window/WindowLayoutInfo;

    move-result-object v12

    .line 78
    :goto_1
    move-object v8, v12

    .line 81
    .local v8, "lastInfo":Landroidx/window/WindowLayoutInfo;
    if-eqz v8, :cond_5

    .line 82
    invoke-virtual {v7, v8}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->accept(Landroidx/window/WindowLayoutInfo;)V

    .line 85
    .end local v8    # "lastInfo":Landroidx/window/WindowLayoutInfo;
    :cond_5
    :goto_2
    nop

    .end local v0    # "$i$a$-withLock-ExtensionWindowBackend$registerLayoutChangeCallback$1":I
    .end local v5    # "windowExtension":Landroidx/window/ExtensionInterfaceCompat;
    .end local v6    # "isActivityRegistered":Z
    .end local v7    # "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setWindowExtension(Landroidx/window/ExtensionInterfaceCompat;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/window/ExtensionInterfaceCompat;

    .line 39
    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend;->windowExtension:Landroidx/window/ExtensionInterfaceCompat;

    return-void
.end method

.method public unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 7
    .param p1, "callback"    # Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Landroidx/window/ExtensionWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    const/4 v1, 0x0

    .line 96
    .local v1, "$i$a$-synchronized-ExtensionWindowBackend$unregisterLayoutChangeCallback$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/window/ExtensionWindowBackend;->getWindowExtension()Landroidx/window/ExtensionInterfaceCompat;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 97
    nop

    .line 100
    nop

    .end local v1    # "$i$a$-synchronized-ExtensionWindowBackend$unregisterLayoutChangeCallback$1":I
    monitor-exit v0

    return-void

    .line 105
    .restart local v1    # "$i$a$-synchronized-ExtensionWindowBackend$unregisterLayoutChangeCallback$1":I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 106
    .local v2, "itemsToRemove":Ljava/util/List;
    invoke-virtual {p0}, Landroidx/window/ExtensionWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 107
    .local v4, "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    invoke-virtual {v4}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getCallback()Landroidx/core/util/Consumer;

    move-result-object v5

    .line 108
    .local v5, "registeredCallback":Landroidx/core/util/Consumer;
    if-ne v5, p1, :cond_1

    .line 109
    const-string v6, "callbackWrapper"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v4    # "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    .end local v5    # "registeredCallback":Landroidx/core/util/Consumer;
    :cond_2
    invoke-virtual {p0}, Landroidx/window/ExtensionWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 115
    .restart local v4    # "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    invoke-virtual {v4}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidx/window/ExtensionWindowBackend;->callbackRemovedForActivity(Landroid/app/Activity;)V

    .end local v4    # "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    goto :goto_1

    .line 117
    :cond_3
    nop

    .end local v1    # "$i$a$-synchronized-ExtensionWindowBackend$unregisterLayoutChangeCallback$1":I
    .end local v2    # "itemsToRemove":Ljava/util/List;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v0

    .line 118
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
