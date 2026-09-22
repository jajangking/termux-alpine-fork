.class public final Landroidx/window/ExtensionAdapter;
.super Ljava/lang/Object;
.source "ExtensionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/ExtensionAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionAdapter.kt\nandroidx/window/ExtensionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1601#2,9:110\n1849#2:119\n1850#2:121\n1610#2:122\n1#3:120\n*S KotlinDebug\n*F\n+ 1 ExtensionAdapter.kt\nandroidx/window/ExtensionAdapter\n*L\n42#1:110,9\n42#1:119\n42#1:121\n42#1:122\n42#1:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/window/ExtensionAdapter;",
        "",
        "windowMetricsCalculator",
        "Landroidx/window/WindowMetricsCalculator;",
        "(Landroidx/window/WindowMetricsCalculator;)V",
        "translate",
        "Landroidx/window/DisplayFeature;",
        "activity",
        "Landroid/app/Activity;",
        "displayFeature",
        "Landroidx/window/extensions/ExtensionDisplayFeature;",
        "Landroidx/window/WindowLayoutInfo;",
        "layoutInfo",
        "Landroidx/window/extensions/ExtensionWindowLayoutInfo;",
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
.field public static final Companion:Landroidx/window/ExtensionAdapter$Companion;

.field private static final TAG:Ljava/lang/String; = "ExtensionAdapter"


# instance fields
.field private final windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/ExtensionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/ExtensionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/ExtensionAdapter;->Companion:Landroidx/window/ExtensionAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/window/WindowMetricsCalculator;)V
    .locals 1
    .param p1, "windowMetricsCalculator"    # Landroidx/window/WindowMetricsCalculator;

    const-string v0, "windowMetricsCalculator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/ExtensionAdapter;->windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;

    return-void
.end method


# virtual methods
.method public final translate(Landroid/app/Activity;Landroidx/window/extensions/ExtensionDisplayFeature;)Landroidx/window/DisplayFeature;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "displayFeature"    # Landroidx/window/extensions/ExtensionDisplayFeature;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayFeature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p2, Landroidx/window/extensions/ExtensionFoldingFeature;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Landroidx/window/ExtensionAdapter;->windowMetricsCalculator:Landroidx/window/WindowMetricsCalculator;

    invoke-interface {v0, p1}, Landroidx/window/WindowMetricsCalculator;->computeCurrentWindowMetrics(Landroid/app/Activity;)Landroidx/window/WindowMetrics;

    move-result-object v0

    .line 51
    .local v0, "windowMetrics":Landroidx/window/WindowMetrics;
    sget-object v1, Landroidx/window/ExtensionAdapter;->Companion:Landroidx/window/ExtensionAdapter$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Landroidx/window/extensions/ExtensionFoldingFeature;

    invoke-virtual {v1, v2, v3}, Landroidx/window/ExtensionAdapter$Companion;->translateFoldFeature$window_release(Landroid/graphics/Rect;Landroidx/window/extensions/ExtensionFoldingFeature;)Landroidx/window/DisplayFeature;

    move-result-object v1

    return-object v1
.end method

.method public final translate(Landroid/app/Activity;Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Landroidx/window/WindowLayoutInfo;
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutInfo"    # Landroidx/window/extensions/ExtensionWindowLayoutInfo;

    move-object/from16 v0, p1

    const-string v1, "activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layoutInfo"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroidx/window/extensions/ExtensionWindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object v1

    const-string v3, "layoutInfo.displayFeatures"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 110
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 118
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 119
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 118
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/window/extensions/ExtensionDisplayFeature;

    .local v13, "it":Landroidx/window/extensions/ExtensionDisplayFeature;
    const/4 v14, 0x0

    .line 42
    .local v14, "$i$a$-mapNotNull-ExtensionAdapter$translate$featureList$1":I
    const-string v15, "it"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p0

    invoke-virtual {v15, v0, v13}, Landroidx/window/ExtensionAdapter;->translate(Landroid/app/Activity;Landroidx/window/extensions/ExtensionDisplayFeature;)Landroidx/window/DisplayFeature;

    move-result-object v13

    .end local v13    # "it":Landroidx/window/extensions/ExtensionDisplayFeature;
    .end local v14    # "$i$a$-mapNotNull-ExtensionAdapter$translate$featureList$1":I
    if-eqz v13, :cond_0

    .line 120
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 118
    .local v14, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1

    :cond_0
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :goto_1
    goto :goto_0

    .line 121
    :cond_1
    move-object/from16 v15, p0

    .line 122
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 110
    nop

    .line 42
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    move-object v1, v4

    .line 43
    .local v1, "featureList":Ljava/util/List;
    new-instance v3, Landroidx/window/WindowLayoutInfo;

    invoke-direct {v3, v1}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v3
.end method
