.class public final Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
.super Ljava/lang/Object;
.source "ExtensionWindowBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/ExtensionWindowBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowLayoutChangeCallbackWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "callback",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/WindowLayoutInfo;",
        "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getCallback",
        "()Landroidx/core/util/Consumer;",
        "lastInfo",
        "getLastInfo",
        "()Landroidx/window/WindowLayoutInfo;",
        "setLastInfo",
        "(Landroidx/window/WindowLayoutInfo;)V",
        "accept",
        "",
        "newLayoutInfo",
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
.field private final activity:Landroid/app/Activity;

.field private final callback:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private lastInfo:Landroidx/window/WindowLayoutInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
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

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    .line 158
    iput-object p2, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 159
    iput-object p3, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Landroidx/core/util/Consumer;

    .line 156
    return-void
.end method


# virtual methods
.method public final accept(Landroidx/window/WindowLayoutInfo;)V
    .locals 2
    .param p1, "newLayoutInfo"    # Landroidx/window/WindowLayoutInfo;

    const-string v0, "newLayoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/WindowLayoutInfo;

    .line 164
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;

    invoke-direct {v1, p0, p1}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;-><init>(Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/WindowLayoutInfo;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getCallback()Landroidx/core/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getLastInfo()Landroidx/window/WindowLayoutInfo;
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/WindowLayoutInfo;

    return-object v0
.end method

.method public final setLastInfo(Landroidx/window/WindowLayoutInfo;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/window/WindowLayoutInfo;

    .line 161
    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/WindowLayoutInfo;

    return-void
.end method
