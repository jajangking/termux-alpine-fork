.class public interface abstract Landroidx/window/WindowInfoRepo;
.super Ljava/lang/Object;
.source "WindowInfoRepo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/WindowInfoRepo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/window/WindowInfoRepo;",
        "",
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
        "Companion",
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
.field public static final Companion:Landroidx/window/WindowInfoRepo$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/window/WindowInfoRepo$Companion;->$$INSTANCE:Landroidx/window/WindowInfoRepo$Companion;

    sput-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    return-void
.end method

.method public static create(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/WindowInfoRepo$Companion;->create(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;

    move-result-object v0

    return-object v0
.end method

.method public static overrideDecorator(Landroidx/window/WindowInfoRepoDecorator;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/WindowInfoRepo$Companion;->overrideDecorator(Landroidx/window/WindowInfoRepoDecorator;)V

    return-void
.end method

.method public static reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowInfoRepo$Companion;->reset()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentWindowMetrics()Landroidx/window/WindowMetrics;
.end method

.method public abstract getMaximumWindowMetrics()Landroidx/window/WindowMetrics;
.end method

.method public abstract getWindowLayoutInfo()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end method
