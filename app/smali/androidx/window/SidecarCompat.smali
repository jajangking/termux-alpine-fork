.class public final Landroidx/window/SidecarCompat;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/ExtensionInterfaceCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/SidecarCompat$FirstAttachAdapter;,
        Landroidx/window/SidecarCompat$TranslatingCallback;,
        Landroidx/window/SidecarCompat$DistinctElementCallback;,
        Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;,
        Landroidx/window/SidecarCompat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0005\u001d\u001e\u001f !B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0007\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\u0016\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0011J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0017R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/window/SidecarCompat;",
        "Landroidx/window/ExtensionInterfaceCompat;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "sidecar",
        "Landroidx/window/sidecar/SidecarInterface;",
        "sidecarAdapter",
        "Landroidx/window/SidecarAdapter;",
        "(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/SidecarAdapter;)V",
        "extensionCallback",
        "Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;",
        "getSidecar",
        "()Landroidx/window/sidecar/SidecarInterface;",
        "windowListenerRegisteredContexts",
        "",
        "Landroid/os/IBinder;",
        "Landroid/app/Activity;",
        "getWindowLayoutInfo",
        "Landroidx/window/WindowLayoutInfo;",
        "activity",
        "onWindowLayoutChangeListenerAdded",
        "",
        "onWindowLayoutChangeListenerRemoved",
        "register",
        "windowToken",
        "setExtensionCallback",
        "validateExtensionInterface",
        "",
        "Companion",
        "DistinctElementCallback",
        "DistinctSidecarElementCallback",
        "FirstAttachAdapter",
        "TranslatingCallback",
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
.field public static final Companion:Landroidx/window/SidecarCompat$Companion;

.field private static final TAG:Ljava/lang/String; = "SidecarCompat"


# instance fields
.field private extensionCallback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

.field private final sidecar:Landroidx/window/sidecar/SidecarInterface;

.field private final sidecarAdapter:Landroidx/window/SidecarAdapter;

.field private final windowListenerRegisteredContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/SidecarCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/SidecarCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/SidecarCompat;->Companion:Landroidx/window/SidecarCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    invoke-static {p1}, Landroidx/window/sidecar/SidecarProvider;->getSidecarImpl(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    move-result-object v0

    .line 57
    new-instance v1, Landroidx/window/SidecarAdapter;

    invoke-direct {v1}, Landroidx/window/SidecarAdapter;-><init>()V

    .line 55
    invoke-direct {p0, v0, v1}, Landroidx/window/SidecarCompat;-><init>(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/SidecarAdapter;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/SidecarAdapter;)V
    .locals 1
    .param p1, "sidecar"    # Landroidx/window/sidecar/SidecarInterface;
    .param p2, "sidecarAdapter"    # Landroidx/window/SidecarAdapter;

    const-string v0, "sidecarAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    .line 48
    iput-object p2, p0, Landroidx/window/SidecarCompat;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/window/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public static final synthetic access$getExtensionCallback$p(Landroidx/window/SidecarCompat;)Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;
    .locals 1
    .param p0, "$this"    # Landroidx/window/SidecarCompat;

    .line 45
    iget-object v0, p0, Landroidx/window/SidecarCompat;->extensionCallback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    return-object v0
.end method

.method public static final synthetic access$getSidecarAdapter$p(Landroidx/window/SidecarCompat;)Landroidx/window/SidecarAdapter;
    .locals 1
    .param p0, "$this"    # Landroidx/window/SidecarCompat;

    .line 45
    iget-object v0, p0, Landroidx/window/SidecarCompat;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    return-object v0
.end method

.method public static final synthetic access$getWindowListenerRegisteredContexts$p(Landroidx/window/SidecarCompat;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/window/SidecarCompat;

    .line 45
    iget-object v0, p0, Landroidx/window/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getSidecar()Landroidx/window/sidecar/SidecarInterface;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    return-object v0
.end method

.method public final getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/WindowLayoutInfo;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Landroidx/window/ActivityExtKt;->getActivityWindowToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/window/WindowLayoutInfo;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v0

    .line 73
    .local v0, "windowToken":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object v1

    .line 74
    .local v1, "windowLayoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    :goto_0
    iget-object v3, p0, Landroidx/window/SidecarCompat;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    .line 75
    nop

    .line 76
    iget-object v4, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    new-instance v2, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v2}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 74
    :cond_3
    invoke-virtual {v3, v1, v2}, Landroidx/window/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/WindowLayoutInfo;

    move-result-object v2

    return-object v2
.end method

.method public onWindowLayoutChangeListenerAdded(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p1}, Landroidx/window/ActivityExtKt;->getActivityWindowToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, "windowToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0, p1}, Landroidx/window/SidecarCompat;->register(Landroid/os/IBinder;Landroid/app/Activity;)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Landroidx/window/SidecarCompat$FirstAttachAdapter;

    invoke-direct {v1, p0, p1}, Landroidx/window/SidecarCompat$FirstAttachAdapter;-><init>(Landroidx/window/SidecarCompat;Landroid/app/Activity;)V

    .line 86
    .local v1, "attachAdapter":Landroidx/window/SidecarCompat$FirstAttachAdapter;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 88
    .end local v1    # "attachAdapter":Landroidx/window/SidecarCompat$FirstAttachAdapter;
    :goto_0
    return-void
.end method

.method public onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Landroidx/window/ActivityExtKt;->getActivityWindowToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    .local v0, "windowToken":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    .line 110
    :goto_0
    iget-object v1, p0, Landroidx/window/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 111
    .local v1, "isLast":Z
    :goto_1
    iget-object v3, p0, Landroidx/window/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    if-eqz v1, :cond_4

    .line 113
    iget-object v3, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3, v2}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 115
    :cond_4
    :goto_2
    return-void
.end method

.method public final register(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "activity"    # Landroid/app/Activity;

    const-string v0, "windowToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroidx/window/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    .line 101
    :goto_0
    iget-object v0, p0, Landroidx/window/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 104
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/window/SidecarCompat;->extensionCallback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Landroidx/window/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/WindowLayoutInfo;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V

    .line 105
    :goto_2
    return-void
.end method

.method public setExtensionCallback(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V
    .locals 4
    .param p1, "extensionCallback"    # Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    const-string v0, "extensionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroidx/window/SidecarCompat$DistinctElementCallback;

    invoke-direct {v0, p1}, Landroidx/window/SidecarCompat$DistinctElementCallback;-><init>(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V

    check-cast v0, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    iput-object v0, p0, Landroidx/window/SidecarCompat;->extensionCallback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    .line 62
    iget-object v0, p0, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;

    .line 64
    iget-object v2, p0, Landroidx/window/SidecarCompat;->sidecarAdapter:Landroidx/window/SidecarAdapter;

    .line 65
    new-instance v3, Landroidx/window/SidecarCompat$TranslatingCallback;

    invoke-direct {v3, p0}, Landroidx/window/SidecarCompat$TranslatingCallback;-><init>(Landroidx/window/SidecarCompat;)V

    check-cast v3, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 63
    invoke-direct {v1, v2, v3}, Landroidx/window/SidecarCompat$DistinctSidecarElementCallback;-><init>(Landroidx/window/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    check-cast v1, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 62
    invoke-interface {v0, v1}, Landroidx/window/sidecar/SidecarInterface;->setSidecarCallback(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    .line 68
    :goto_0
    return-void
.end method

.method public validateExtensionInterface()Z
    .locals 21

    move-object/from16 v1, p0

    .line 119
    nop

    .line 121
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    const-string v5, "setSidecarCallback"

    .line 123
    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    aput-object v7, v6, v3

    .line 121
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_1
    move-object v5, v0

    .line 125
    .local v5, "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    if-nez v5, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 126
    .local v6, "rSetSidecarCallback":Ljava/lang/Class;
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 135
    iget-object v0, v1, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object v0

    .line 134
    :goto_3
    nop

    .line 138
    .local v0, "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    iget-object v7, v1, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v7, v2}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 141
    :goto_4
    iget-object v7, v1, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v7, :cond_5

    .line 142
    :goto_5
    move-object v7, v4

    goto :goto_6

    .line 141
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_6

    .line 142
    goto :goto_5

    :cond_6
    const-string v8, "getWindowLayoutInfo"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 141
    :goto_6
    nop

    .line 143
    .local v7, "methodGetWindowLayoutInfo":Ljava/lang/reflect/Method;
    if-nez v7, :cond_7

    move-object v8, v4

    goto :goto_7

    :cond_7
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 144
    .local v8, "rtGetWindowLayoutInfo":Ljava/lang/Class;
    :goto_7
    const-class v9, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 151
    iget-object v9, v1, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v9, :cond_8

    .line 152
    :goto_8
    move-object v9, v4

    goto :goto_9

    .line 151
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_9

    .line 152
    goto :goto_8

    :cond_9
    const-string v10, "onWindowLayoutChangeListenerAdded"

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 151
    :goto_9
    nop

    .line 154
    .local v9, "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    if-nez v9, :cond_a

    move-object v10, v4

    goto :goto_a

    :cond_a
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 153
    :goto_a
    nop

    .line 155
    .local v10, "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 163
    iget-object v11, v1, Landroidx/window/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v11, :cond_b

    .line 164
    :goto_b
    move-object v11, v4

    goto :goto_c

    .line 163
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_c

    .line 164
    goto :goto_b

    :cond_c
    const-string v12, "onWindowLayoutChangeListenerRemoved"

    new-array v13, v2, [Ljava/lang/Class;

    const-class v14, Landroid/os/IBinder;

    aput-object v14, v13, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 163
    :goto_c
    nop

    .line 166
    .local v11, "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    if-nez v11, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 165
    :goto_d
    nop

    .line 167
    .local v4, "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 175
    new-instance v12, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v12}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v0    # "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    .local v12, "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    nop

    .line 180
    const/4 v13, 0x3

    :try_start_1
    iput v13, v12, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    .line 181
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 182
    .local v0, "error":Ljava/lang/NoSuchFieldError;
    :try_start_2
    const-class v14, Landroidx/window/sidecar/SidecarDeviceState;

    .line 191
    const-string v15, "setPosture"

    .line 192
    new-array v13, v2, [Ljava/lang/Class;

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v3

    .line 190
    invoke-virtual {v14, v15, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 194
    .local v13, "methodSetPosture":Ljava/lang/reflect/Method;
    new-array v14, v2, [Ljava/lang/Object;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v3

    invoke-virtual {v13, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v14, Landroidx/window/sidecar/SidecarDeviceState;

    .line 195
    const-string v15, "getPosture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 196
    .local v2, "methodGetPosture":Ljava/lang/reflect/Method;
    new-array v14, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_11

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 197
    .local v14, "posture":I
    const/4 v15, 0x3

    if-ne v14, v15, :cond_10

    .line 203
    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local v2    # "methodGetPosture":Ljava/lang/reflect/Method;
    .end local v13    # "methodSetPosture":Ljava/lang/reflect/Method;
    .end local v14    # "posture":I
    :goto_e
    new-instance v0, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    move-object v2, v0

    .line 206
    .local v2, "displayFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    invoke-virtual {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v13, "displayFeature.rect"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    .line 207
    .local v13, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    .line 210
    move v14, v0

    .line 212
    .local v14, "tmpType":I
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    .line 215
    new-instance v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v0

    .line 218
    .local v15, "windowLayoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    nop

    .line 220
    :try_start_3
    iget-object v0, v15, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    goto :goto_f

    .line 222
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 223
    .restart local v0    # "error":Ljava/lang/NoSuchFieldError;
    nop

    .line 231
    :try_start_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/List;

    move-object/from16 v18, v16

    .line 232
    .local v18, "featureList":Ljava/util/List;
    move-object/from16 v3, v18

    .end local v18    # "featureList":Ljava/util/List;
    .local v3, "featureList":Ljava/util/List;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v0

    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .local v18, "error":Ljava/lang/NoSuchFieldError;
    const-class v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 234
    const-string v1, "setDisplayFeatures"

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/4 v2, 0x1

    .end local v2    # "displayFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .local v19, "displayFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .local v20, "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    const/16 v16, 0x0

    aput-object v2, v5, v16

    .line 233
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 236
    .local v0, "methodSetFeatures":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v16

    invoke-virtual {v0, v15, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 238
    const-string v5, "getDisplayFeatures"

    move-object/from16 v16, v0

    const/4 v1, 0x0

    .end local v0    # "methodSetFeatures":Ljava/lang/reflect/Method;
    .local v16, "methodSetFeatures":Ljava/lang/reflect/Method;
    new-array v0, v1, [Ljava/lang/Class;

    .line 237
    invoke-virtual {v2, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    .local v0, "methodGetFeatures":Ljava/lang/reflect/Method;
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    check-cast v2, Ljava/util/List;

    .line 240
    nop

    .line 243
    .local v2, "resultDisplayFeatures":Ljava/util/List;
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 247
    .end local v0    # "methodGetFeatures":Ljava/lang/reflect/Method;
    .end local v2    # "resultDisplayFeatures":Ljava/util/List;
    .end local v3    # "featureList":Ljava/util/List;
    .end local v16    # "methodSetFeatures":Ljava/lang/reflect/Method;
    .end local v18    # "error":Ljava/lang/NoSuchFieldError;
    :goto_f
    const/4 v2, 0x1

    .end local v4    # "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v6    # "rSetSidecarCallback":Ljava/lang/Class;
    .end local v7    # "methodGetWindowLayoutInfo":Ljava/lang/reflect/Method;
    .end local v8    # "rtGetWindowLayoutInfo":Ljava/lang/Class;
    .end local v9    # "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v10    # "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v11    # "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v12    # "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    .end local v13    # "tmpRect":Landroid/graphics/Rect;
    .end local v14    # "tmpType":I
    .end local v15    # "windowLayoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .end local v19    # "displayFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    goto :goto_10

    .line 244
    .restart local v0    # "methodGetFeatures":Ljava/lang/reflect/Method;
    .restart local v2    # "resultDisplayFeatures":Ljava/util/List;
    .restart local v3    # "featureList":Ljava/util/List;
    .restart local v4    # "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    .restart local v6    # "rSetSidecarCallback":Ljava/lang/Class;
    .restart local v7    # "methodGetWindowLayoutInfo":Ljava/lang/reflect/Method;
    .restart local v8    # "rtGetWindowLayoutInfo":Ljava/lang/Class;
    .restart local v9    # "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .restart local v10    # "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    .restart local v11    # "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .restart local v12    # "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    .restart local v13    # "tmpRect":Landroid/graphics/Rect;
    .restart local v14    # "tmpType":I
    .restart local v15    # "windowLayoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .restart local v16    # "methodSetFeatures":Ljava/lang/reflect/Method;
    .restart local v18    # "error":Ljava/lang/NoSuchFieldError;
    .restart local v19    # "displayFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :cond_e
    new-instance v5, Ljava/lang/Exception;

    const-string v1, "Invalid display feature getter/setter"

    invoke-direct {v5, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 242
    .end local v2    # "resultDisplayFeatures":Ljava/util/List;
    :cond_f
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v3    # "featureList":Ljava/util/List;
    .end local v15    # "windowLayoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .end local v16    # "methodSetFeatures":Ljava/lang/reflect/Method;
    .end local v18    # "error":Ljava/lang/NoSuchFieldError;
    .end local v19    # "displayFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .local v0, "error":Ljava/lang/NoSuchFieldError;
    .local v2, "methodGetPosture":Ljava/lang/reflect/Method;
    .restart local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .local v13, "methodSetPosture":Ljava/lang/reflect/Method;
    .local v14, "posture":I
    :cond_10
    move-object/from16 v20, v5

    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Invalid device posture getter/setter"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v14    # "posture":I
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :cond_11
    move-object/from16 v20, v5

    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v2    # "methodGetPosture":Ljava/lang/reflect/Method;
    .end local v12    # "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    .end local v13    # "methodSetPosture":Ljava/lang/reflect/Method;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .local v0, "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    .restart local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :cond_12
    move-object/from16 v20, v5

    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 169
    const-string v2, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    .line 170
    nop

    .line 169
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v4    # "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v11    # "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :cond_13
    move-object/from16 v20, v5

    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 157
    const-string v2, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    .line 158
    nop

    .line 157
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    .end local v9    # "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v10    # "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :cond_14
    move-object/from16 v20, v5

    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 146
    const-string v2, "Illegal return type for \'getWindowLayoutInfo\': "

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .end local v0    # "tmpDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    .end local v7    # "methodGetWindowLayoutInfo":Ljava/lang/reflect/Method;
    .end local v8    # "rtGetWindowLayoutInfo":Ljava/lang/Class;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :cond_15
    move-object/from16 v20, v5

    .end local v5    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    .restart local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 128
    const-string v1, "Illegal return type for \'setSidecarCallback\': "

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    .end local v6    # "rSetSidecarCallback":Ljava/lang/Class;
    .end local v20    # "methodSetSidecarCallback":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 249
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 256
    const/4 v2, 0x0

    .line 119
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_10
    return v2
.end method
