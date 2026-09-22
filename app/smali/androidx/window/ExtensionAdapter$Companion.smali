.class public final Landroidx/window/ExtensionAdapter$Companion;
.super Ljava/lang/Object;
.source "ExtensionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/ExtensionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001f\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/window/ExtensionAdapter$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "hasMatchingDimension",
        "",
        "lhs",
        "Landroid/graphics/Rect;",
        "rhs",
        "isValid",
        "windowBounds",
        "feature",
        "Landroidx/window/extensions/ExtensionFoldingFeature;",
        "translateFoldFeature",
        "Landroidx/window/DisplayFeature;",
        "translateFoldFeature$window_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/ExtensionAdapter$Companion;-><init>()V

    return-void
.end method

.method private final hasMatchingDimension(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "lhs"    # Landroid/graphics/Rect;
    .param p2, "rhs"    # Landroid/graphics/Rect;

    .line 104
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 105
    .local v0, "matchesWidth":Z
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ne v1, v4, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 106
    .local v1, "matchesHeight":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method

.method private final isValid(Landroid/graphics/Rect;Landroidx/window/extensions/ExtensionFoldingFeature;)Z
    .locals 3
    .param p1, "windowBounds"    # Landroid/graphics/Rect;
    .param p2, "feature"    # Landroidx/window/extensions/ExtensionFoldingFeature;

    .line 87
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    return v1

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getType()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 94
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    nop

    .line 98
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "feature.bounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    nop

    .line 97
    invoke-direct {p0, v0, p1}, Landroidx/window/ExtensionAdapter$Companion;->hasMatchingDimension(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 93
    :goto_0
    return v1
.end method


# virtual methods
.method public final translateFoldFeature$window_release(Landroid/graphics/Rect;Landroidx/window/extensions/ExtensionFoldingFeature;)Landroidx/window/DisplayFeature;
    .locals 6
    .param p1, "windowBounds"    # Landroid/graphics/Rect;
    .param p2, "feature"    # Landroidx/window/extensions/ExtensionFoldingFeature;

    const-string v0, "windowBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/window/ExtensionAdapter$Companion;->isValid(Landroid/graphics/Rect;Landroidx/window/extensions/ExtensionFoldingFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return-object v1

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    nop

    .line 70
    return-object v1

    .line 65
    :pswitch_0
    sget-object v0, Landroidx/window/FoldingFeature$Type;->HINGE:Landroidx/window/FoldingFeature$Type;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Landroidx/window/FoldingFeature$Type;->FOLD:Landroidx/window/FoldingFeature$Type;

    .line 63
    :goto_0
    nop

    .line 73
    .local v0, "type":Landroidx/window/FoldingFeature$Type;
    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 77
    nop

    .line 80
    return-object v1

    .line 75
    :pswitch_2
    sget-object v1, Landroidx/window/FoldingFeature$State;->HALF_OPENED:Landroidx/window/FoldingFeature$State;

    goto :goto_1

    .line 74
    :pswitch_3
    sget-object v1, Landroidx/window/FoldingFeature$State;->FLAT:Landroidx/window/FoldingFeature$State;

    .line 73
    :goto_1
    nop

    .line 83
    .local v1, "state":Landroidx/window/FoldingFeature$State;
    new-instance v2, Landroidx/window/FoldingFeature;

    new-instance v3, Landroidx/window/Bounds;

    invoke-virtual {p2}, Landroidx/window/extensions/ExtensionFoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const-string v5, "feature.bounds"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/window/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, v3, v0, v1}, Landroidx/window/FoldingFeature;-><init>(Landroidx/window/Bounds;Landroidx/window/FoldingFeature$Type;Landroidx/window/FoldingFeature$State;)V

    check-cast v2, Landroidx/window/DisplayFeature;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
