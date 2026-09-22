.class public final Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;
.super Ljava/lang/Object;
.source "ExtensionWindowBackend.kt"

# interfaces
.implements Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/ExtensionWindowBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtensionListenerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0081\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0017\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;",
        "Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;",
        "(Landroidx/window/ExtensionWindowBackend;)V",
        "onWindowLayoutChanged",
        "",
        "activity",
        "Landroid/app/Activity;",
        "newLayout",
        "Landroidx/window/WindowLayoutInfo;",
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
.field final synthetic this$0:Landroidx/window/ExtensionWindowBackend;


# direct methods
.method public constructor <init>(Landroidx/window/ExtensionWindowBackend;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/window/ExtensionWindowBackend;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;->this$0:Landroidx/window/ExtensionWindowBackend;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method


# virtual methods
.method public onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newLayout"    # Landroidx/window/WindowLayoutInfo;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend$ExtensionListenerImpl;->this$0:Landroidx/window/ExtensionWindowBackend;

    invoke-virtual {v0}, Landroidx/window/ExtensionWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 144
    .local v1, "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    invoke-virtual {v1}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v1, p2}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->accept(Landroidx/window/WindowLayoutInfo;)V

    .end local v1    # "callbackWrapper":Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;
    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method
