.class public final Landroidx/window/WindowInfoRepoImp;
.super Ljava/lang/Object;
.source "WindowInfoRepoImp.kt"

# interfaces
.implements Landroidx/window/WindowInfoRepo;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/window/WindowInfoRepoImp;",
        "Landroidx/window/WindowInfoRepo;",
        "activity",
        "Landroid/app/Activity;",
        "windowMetricsCalculator",
        "Landroidx/window/WindowMetricsCalculator;",
        "windowBackend",
        "Landroidx/window/WindowBackend;",
        "(Landroid/app/Activity;Landroidx/window/WindowMetricsCalculator;Landroidx/window/WindowBackend;)V",
        "currentWindowMetrics",
        "Landroidx/window/WindowMetrics;",
        "getCurrentWindowMetrics",
        "()Landroidx/window/WindowMetrics;",
        "maximumWindowMetrics",
        "getMaximumWindowMetrics",
        "windowLayoutInfo",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/window/WindowLayoutInfo;",
        "getWindowLayoutInfo",
        "()Lkotlinx/coroutines/flow/Flow;",
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

.field private final windowBackend:Landroidx/window/WindowBackend;

.field private final windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/window/WindowMetricsCalculator;Landroidx/window/WindowBackend;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "windowMetricsCalculator"    # Landroidx/window/WindowMetricsCalculator;
    .param p3, "windowBackend"    # Landroidx/window/WindowBackend;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowMetricsCalculator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBackend"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/window/WindowInfoRepoImp;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Landroidx/window/WindowInfoRepoImp;->windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;

    .line 41
    iput-object p3, p0, Landroidx/window/WindowInfoRepoImp;->windowBackend:Landroidx/window/WindowBackend;

    .line 38
    return-void
.end method

.method public static final synthetic access$getActivity$p(Landroidx/window/WindowInfoRepoImp;)Landroid/app/Activity;
    .locals 1
    .param p0, "$this"    # Landroidx/window/WindowInfoRepoImp;

    .line 37
    iget-object v0, p0, Landroidx/window/WindowInfoRepoImp;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static final synthetic access$getWindowBackend$p(Landroidx/window/WindowInfoRepoImp;)Landroidx/window/WindowBackend;
    .locals 1
    .param p0, "$this"    # Landroidx/window/WindowInfoRepoImp;

    .line 37
    iget-object v0, p0, Landroidx/window/WindowInfoRepoImp;->windowBackend:Landroidx/window/WindowBackend;

    return-object v0
.end method


# virtual methods
.method public getCurrentWindowMetrics()Landroidx/window/WindowMetrics;
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/window/WindowInfoRepoImp;->windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;

    iget-object v1, p0, Landroidx/window/WindowInfoRepoImp;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroidx/window/WindowMetricsCalculator;->computeCurrentWindowMetrics(Landroid/app/Activity;)Landroidx/window/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumWindowMetrics()Landroidx/window/WindowMetrics;
    .locals 2

    .line 93
    iget-object v0, p0, Landroidx/window/WindowInfoRepoImp;->windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;

    iget-object v1, p0, Landroidx/window/WindowInfoRepoImp;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroidx/window/WindowMetricsCalculator;->computeMaximumWindowMetrics(Landroid/app/Activity;)Landroidx/window/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getWindowLayoutInfo()Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;-><init>(Landroidx/window/WindowInfoRepoImp;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 106
    const v2, 0x7fffffff

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
