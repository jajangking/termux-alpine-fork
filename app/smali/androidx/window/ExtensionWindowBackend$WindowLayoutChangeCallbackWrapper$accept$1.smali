.class final Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;
.super Ljava/lang/Object;
.source "ExtensionWindowBackend.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->accept(Landroidx/window/WindowLayoutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $newLayoutInfo:Landroidx/window/WindowLayoutInfo;

.field final synthetic this$0:Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;


# direct methods
.method constructor <init>(Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/WindowLayoutInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;->this$0:Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    iput-object p2, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;->$newLayoutInfo:Landroidx/window/WindowLayoutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 164
    iget-object v0, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;->this$0:Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-virtual {v0}, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper;->getCallback()Landroidx/core/util/Consumer;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/ExtensionWindowBackend$WindowLayoutChangeCallbackWrapper$accept$1;->$newLayoutInfo:Landroidx/window/WindowLayoutInfo;

    invoke-interface {v0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
