.class public final Landroidx/window/WindowLayoutInfo$Builder;
.super Ljava/lang/Object;
.source "WindowLayoutInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/WindowLayoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/window/WindowLayoutInfo$Builder;",
        "",
        "()V",
        "displayFeatures",
        "",
        "Landroidx/window/DisplayFeature;",
        "build",
        "Landroidx/window/WindowLayoutInfo;",
        "setDisplayFeatures",
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
.field private displayFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/window/DisplayFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/WindowLayoutInfo$Builder;->displayFeatures:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/WindowLayoutInfo;
    .locals 2

    .line 72
    new-instance v0, Landroidx/window/WindowLayoutInfo;

    iget-object v1, p0, Landroidx/window/WindowLayoutInfo$Builder;->displayFeatures:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final setDisplayFeatures(Ljava/util/List;)Landroidx/window/WindowLayoutInfo$Builder;
    .locals 1
    .param p1, "displayFeatures"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/DisplayFeature;",
            ">;)",
            "Landroidx/window/WindowLayoutInfo$Builder;"
        }
    .end annotation

    const-string v0, "displayFeatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/WindowLayoutInfo$Builder;->displayFeatures:Ljava/util/List;

    .line 64
    return-object p0
.end method
