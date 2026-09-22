.class public final Landroidx/window/ExtensionTranslatingCallback;
.super Ljava/lang/Object;
.source "ExtensionTranslatingCallback.kt"

# interfaces
.implements Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/window/ExtensionTranslatingCallback;",
        "Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;",
        "callback",
        "Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;",
        "adapter",
        "Landroidx/window/ExtensionAdapter;",
        "(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;Landroidx/window/ExtensionAdapter;)V",
        "onWindowLayoutChanged",
        "",
        "activity",
        "Landroid/app/Activity;",
        "newLayout",
        "Landroidx/window/extensions/ExtensionWindowLayoutInfo;",
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
.field private final adapter:Landroidx/window/ExtensionAdapter;

.field private final callback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;


# direct methods
.method public constructor <init>(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;Landroidx/window/ExtensionAdapter;)V
    .locals 1
    .param p1, "callback"    # Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;
    .param p2, "adapter"    # Landroidx/window/ExtensionAdapter;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/window/ExtensionTranslatingCallback;->callback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    .line 28
    iput-object p2, p0, Landroidx/window/ExtensionTranslatingCallback;->adapter:Landroidx/window/ExtensionAdapter;

    .line 26
    return-void
.end method


# virtual methods
.method public onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/extensions/ExtensionWindowLayoutInfo;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newLayout"    # Landroidx/window/extensions/ExtensionWindowLayoutInfo;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Landroidx/window/ExtensionTranslatingCallback;->callback:Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    iget-object v1, p0, Landroidx/window/ExtensionTranslatingCallback;->adapter:Landroidx/window/ExtensionAdapter;

    invoke-virtual {v1, p1, p2}, Landroidx/window/ExtensionAdapter;->translate(Landroid/app/Activity;Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Landroidx/window/WindowLayoutInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V

    .line 36
    return-void
.end method
