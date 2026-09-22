.class public final Landroidx/window/SidecarAdapter;
.super Ljava/lang/Object;
.source "SidecarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/SidecarAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidecarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidecarAdapter.kt\nandroidx/window/SidecarAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1601#2,9:346\n1849#2:355\n1850#2:357\n1610#2:358\n1#3:356\n*S KotlinDebug\n*F\n+ 1 SidecarAdapter.kt\nandroidx/window/SidecarAdapter\n*L\n37#1:346,9\n37#1:355\n37#1:357\n37#1:358\n37#1:356\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001c\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\tH\u0002J(\u0010\n\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bH\u0002J\u001a\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\rJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0006J\"\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b2\u0006\u0010\u0014\u001a\u00020\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/SidecarAdapter;",
        "",
        "()V",
        "isEqualSidecarDeviceState",
        "",
        "first",
        "Landroidx/window/sidecar/SidecarDeviceState;",
        "second",
        "isEqualSidecarDisplayFeature",
        "Landroidx/window/sidecar/SidecarDisplayFeature;",
        "isEqualSidecarDisplayFeatures",
        "",
        "isEqualSidecarWindowLayoutInfo",
        "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
        "translate",
        "Landroidx/window/WindowLayoutInfo;",
        "extensionInfo",
        "state",
        "Landroidx/window/DisplayFeature;",
        "sidecarDisplayFeatures",
        "deviceState",
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
.field public static final Companion:Landroidx/window/SidecarAdapter$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/SidecarAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/SidecarAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/SidecarAdapter;->Companion:Landroidx/window/SidecarAdapter$Companion;

    .line 143
    const-class v0, Landroidx/window/SidecarAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/SidecarAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Landroidx/window/SidecarAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final isEqualSidecarDisplayFeature(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z
    .locals 4
    .param p1, "first"    # Landroidx/window/sidecar/SidecarDisplayFeature;
    .param p2, "second"    # Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 123
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 127
    return v0

    .line 129
    :cond_1
    if-nez p2, :cond_2

    .line 130
    return v0

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 133
    return v0

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 136
    move v1, v0

    goto :goto_0

    .line 138
    :cond_4
    nop

    .line 135
    :goto_0
    return v1
.end method

.method private final isEqualSidecarDisplayFeatures(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .param p1, "first"    # Ljava/util/List;
    .param p2, "second"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/window/sidecar/SidecarDisplayFeature;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/window/sidecar/SidecarDisplayFeature;",
            ">;)Z"
        }
    .end annotation

    .line 97
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 101
    return v1

    .line 103
    :cond_1
    if-nez p2, :cond_2

    .line 104
    return v1

    .line 106
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 107
    return v1

    .line 109
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    move v3, v1

    :cond_4
    move v4, v3

    .local v4, "i":I
    add-int/2addr v3, v0

    .line 110
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 111
    .local v5, "firstFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 112
    .local v6, "secondFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    invoke-direct {p0, v5, v6}, Landroidx/window/SidecarAdapter;->isEqualSidecarDisplayFeature(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 113
    return v1

    .line 109
    .end local v5    # "firstFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .end local v6    # "secondFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    :cond_5
    if-le v3, v2, :cond_4

    .line 116
    .end local v4    # "i":I
    :cond_6
    return v0
.end method


# virtual methods
.method public final isEqualSidecarDeviceState(Landroidx/window/sidecar/SidecarDeviceState;Landroidx/window/sidecar/SidecarDeviceState;)Z
    .locals 4
    .param p1, "first"    # Landroidx/window/sidecar/SidecarDeviceState;
    .param p2, "second"    # Landroidx/window/sidecar/SidecarDeviceState;

    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    return v1

    .line 64
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 65
    return v0

    .line 67
    :cond_1
    if-nez p2, :cond_2

    .line 68
    return v0

    .line 70
    :cond_2
    sget-object v2, Landroidx/window/SidecarAdapter;->Companion:Landroidx/window/SidecarAdapter$Companion;

    invoke-virtual {v2, p1}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v3

    .line 71
    .local v3, "firstPosture":I
    invoke-virtual {v2, p2}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v2

    .line 72
    .local v2, "secondPosture":I
    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1
.end method

.method public final isEqualSidecarWindowLayoutInfo(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z
    .locals 3
    .param p1, "first"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .param p2, "second"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 79
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 83
    return v0

    .line 85
    :cond_1
    if-nez p2, :cond_2

    .line 86
    return v0

    .line 88
    :cond_2
    sget-object v0, Landroidx/window/SidecarAdapter;->Companion:Landroidx/window/SidecarAdapter$Companion;

    invoke-virtual {v0, p1}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDisplayFeatures(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "firstDisplayFeatures":Ljava/util/List;
    invoke-virtual {v0, p2}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDisplayFeatures(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "secondDisplayFeatures":Ljava/util/List;
    invoke-direct {p0, v1, v0}, Landroidx/window/SidecarAdapter;->isEqualSidecarDisplayFeatures(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method public final translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/WindowLayoutInfo;
    .locals 5
    .param p1, "extensionInfo"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .param p2, "state"    # Landroidx/window/sidecar/SidecarDeviceState;

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Landroidx/window/WindowLayoutInfo;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 50
    .local v0, "deviceState":Landroidx/window/sidecar/SidecarDeviceState;
    sget-object v1, Landroidx/window/SidecarAdapter;->Companion:Landroidx/window/SidecarAdapter$Companion;

    invoke-virtual {v1, p2}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v2

    .line 51
    .local v2, "devicePosture":I
    invoke-virtual {v1, v0, v2}, Landroidx/window/SidecarAdapter$Companion;->setSidecarDevicePosture(Landroidx/window/sidecar/SidecarDeviceState;I)V

    .line 52
    invoke-virtual {v1, p1}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDisplayFeatures(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "sidecarDisplayFeatures":Ljava/util/List;
    invoke-virtual {p0, v1, v0}, Landroidx/window/SidecarAdapter;->translate(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, "displayFeatures":Ljava/util/List;
    new-instance v4, Landroidx/window/WindowLayoutInfo;

    invoke-direct {v4, v3}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v4
.end method

.method public final translate(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/List;
    .locals 16
    .param p1, "sidecarDisplayFeatures"    # Ljava/util/List;
    .param p2, "deviceState"    # Landroidx/window/sidecar/SidecarDeviceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/window/sidecar/SidecarDisplayFeature;",
            ">;",
            "Landroidx/window/sidecar/SidecarDeviceState;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/DisplayFeature;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "sidecarDisplayFeatures"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deviceState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 346
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 354
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 355
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

    .line 354
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/window/sidecar/SidecarDisplayFeature;

    .local v13, "sidecarFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    const/4 v14, 0x0

    .line 38
    .local v14, "$i$a$-mapNotNull-SidecarAdapter$translate$1":I
    sget-object v15, Landroidx/window/SidecarAdapter;->Companion:Landroidx/window/SidecarAdapter$Companion;

    invoke-virtual {v15, v13, v1}, Landroidx/window/SidecarAdapter$Companion;->translate$window_release(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/DisplayFeature;

    move-result-object v13

    .end local v13    # "sidecarFeature":Landroidx/window/sidecar/SidecarDisplayFeature;
    .end local v14    # "$i$a$-mapNotNull-SidecarAdapter$translate$1":I
    if-eqz v13, :cond_0

    .line 356
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 354
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

    .line 357
    :cond_1
    nop

    .line 358
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 346
    nop

    .line 37
    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    return-object v4
.end method
