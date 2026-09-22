.class public final Landroidx/window/WindowMetrics;
.super Ljava/lang/Object;
.source "WindowMetrics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/window/WindowMetrics;",
        "",
        "bounds",
        "Landroid/graphics/Rect;",
        "(Landroid/graphics/Rect;)V",
        "_bounds",
        "Landroidx/window/Bounds;",
        "(Landroidx/window/Bounds;)V",
        "getBounds",
        "()Landroid/graphics/Rect;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final _bounds:Landroidx/window/Bounds;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/window/Bounds;

    invoke-direct {v0, p1}, Landroidx/window/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroidx/window/WindowMetrics;-><init>(Landroidx/window/Bounds;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/Bounds;)V
    .locals 1
    .param p1, "_bounds"    # Landroidx/window/Bounds;

    const-string v0, "_bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/WindowMetrics;->_bounds:Landroidx/window/Bounds;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 49
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/window/WindowMetrics;

    .line 52
    .local v0, "that":Landroidx/window/WindowMetrics;
    iget-object v1, p0, Landroidx/window/WindowMetrics;->_bounds:Landroidx/window/Bounds;

    iget-object v2, v0, Landroidx/window/WindowMetrics;->_bounds:Landroidx/window/Bounds;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 50
    .end local v0    # "that":Landroidx/window/WindowMetrics;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/window/WindowMetrics;->_bounds:Landroidx/window/Bounds;

    invoke-virtual {v0}, Landroidx/window/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/window/WindowMetrics;->_bounds:Landroidx/window/Bounds;

    invoke-virtual {v0}, Landroidx/window/Bounds;->hashCode()I

    move-result v0

    return v0
.end method
