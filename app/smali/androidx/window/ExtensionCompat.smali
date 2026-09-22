.class public final Landroidx/window/ExtensionCompat;
.super Ljava/lang/Object;
.source "ExtensionCompat.kt"

# interfaces
.implements Landroidx/window/ExtensionInterfaceCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/ExtensionCompat$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionCompat.kt\nandroidx/window/ExtensionCompat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0007\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/window/ExtensionCompat;",
        "Landroidx/window/ExtensionInterfaceCompat;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "windowExtension",
        "Landroidx/window/extensions/ExtensionInterface;",
        "adapter",
        "Landroidx/window/ExtensionAdapter;",
        "(Landroidx/window/extensions/ExtensionInterface;Landroidx/window/ExtensionAdapter;)V",
        "getWindowExtension",
        "()Landroidx/window/extensions/ExtensionInterface;",
        "onWindowLayoutChangeListenerAdded",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onWindowLayoutChangeListenerRemoved",
        "setExtensionCallback",
        "extensionCallback",
        "Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;",
        "validateExtensionInterface",
        "",
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
.field public static final Companion:Landroidx/window/ExtensionCompat$Companion;

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtensionVersionCompat"


# instance fields
.field private final adapter:Landroidx/window/ExtensionAdapter;

.field private final windowExtension:Landroidx/window/extensions/ExtensionInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/ExtensionCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/ExtensionCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/ExtensionCompat;->Companion:Landroidx/window/ExtensionCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    nop

    .line 39
    invoke-static {p1}, Landroidx/window/extensions/ExtensionProvider;->getExtensionImpl(Landroid/content/Context;)Landroidx/window/extensions/ExtensionInterface;

    move-result-object v0

    .line 40
    new-instance v1, Landroidx/window/ExtensionAdapter;

    sget-object v2, Landroidx/window/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/WindowMetricsCalculatorCompat;

    check-cast v2, Landroidx/window/WindowMetricsCalculator;

    invoke-direct {v1, v2}, Landroidx/window/ExtensionAdapter;-><init>(Landroidx/window/WindowMetricsCalculator;)V

    .line 38
    invoke-direct {p0, v0, v1}, Landroidx/window/ExtensionCompat;-><init>(Landroidx/window/extensions/ExtensionInterface;Landroidx/window/ExtensionAdapter;)V

    .line 42
    iget-object v0, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-eqz v0, :cond_0

    .line 43
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "$i$a$-requireNotNull-ExtensionCompat$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-ExtensionCompat$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extension provider returned null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public constructor <init>(Landroidx/window/extensions/ExtensionInterface;Landroidx/window/ExtensionAdapter;)V
    .locals 1
    .param p1, "windowExtension"    # Landroidx/window/extensions/ExtensionInterface;
    .param p2, "adapter"    # Landroidx/window/ExtensionAdapter;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    .line 36
    iput-object p2, p0, Landroidx/window/ExtensionCompat;->adapter:Landroidx/window/ExtensionAdapter;

    .line 34
    return-void
.end method


# virtual methods
.method public final getWindowExtension()Landroidx/window/extensions/ExtensionInterface;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    return-object v0
.end method

.method public onWindowLayoutChangeListenerAdded(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/window/extensions/ExtensionInterface;->onWindowLayoutChangeListenerAdded(Landroid/app/Activity;)V

    .line 52
    :goto_0
    return-void
.end method

.method public onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/window/extensions/ExtensionInterface;->onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V

    .line 56
    :goto_0
    return-void
.end method

.method public setExtensionCallback(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V
    .locals 3
    .param p1, "extensionCallback"    # Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    const-string v0, "extensionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroidx/window/ExtensionTranslatingCallback;

    iget-object v1, p0, Landroidx/window/ExtensionCompat;->adapter:Landroidx/window/ExtensionAdapter;

    invoke-direct {v0, p1, v1}, Landroidx/window/ExtensionTranslatingCallback;-><init>(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;Landroidx/window/ExtensionAdapter;)V

    .line 47
    .local v0, "translatingCallback":Landroidx/window/ExtensionTranslatingCallback;
    iget-object v1, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;

    invoke-interface {v1, v2}, Landroidx/window/extensions/ExtensionInterface;->setExtensionCallback(Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;)V

    .line 48
    :goto_0
    return-void
.end method

.method public validateExtensionInterface()Z
    .locals 15

    .line 60
    nop

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    const-string v4, "setExtensionCallback"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;

    aput-object v6, v5, v1

    .line 62
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 65
    .local v2, "methodSetExtensionCallback":Ljava/lang/reflect/Method;
    :goto_1
    if-nez v2, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 66
    .local v4, "rSetExtensionCallback":Ljava/lang/Class;
    :goto_2
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 73
    iget-object v5, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-nez v5, :cond_3

    .line 74
    :goto_3
    move-object v5, v3

    goto :goto_4

    .line 73
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_4

    .line 74
    goto :goto_3

    :cond_4
    const-string v6, "onWindowLayoutChangeListenerAdded"

    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Landroid/app/Activity;

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 73
    :goto_4
    nop

    .line 76
    .local v5, "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    if-nez v5, :cond_5

    move-object v6, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 75
    :goto_5
    nop

    .line 77
    .local v6, "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 85
    iget-object v7, p0, Landroidx/window/ExtensionCompat;->windowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-nez v7, :cond_6

    .line 86
    :goto_6
    move-object v7, v3

    goto :goto_7

    .line 85
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_7

    .line 86
    goto :goto_6

    :cond_7
    const-string v8, "onWindowLayoutChangeListenerRemoved"

    new-array v9, v0, [Ljava/lang/Class;

    const-class v10, Landroid/app/Activity;

    aput-object v10, v9, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 85
    :goto_7
    nop

    .line 88
    .local v7, "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    if-nez v7, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 87
    :goto_8
    nop

    .line 89
    .local v3, "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 97
    new-instance v8, Landroidx/window/extensions/ExtensionFoldingFeature;

    .line 98
    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x64

    invoke-direct {v9, v1, v1, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    nop

    .line 100
    nop

    .line 97
    invoke-direct {v8, v9, v0, v0}, Landroidx/window/extensions/ExtensionFoldingFeature;-><init>(Landroid/graphics/Rect;II)V

    .line 104
    .local v8, "displayFoldingFeature":Landroidx/window/extensions/ExtensionFoldingFeature;
    invoke-virtual {v8}, Landroidx/window/extensions/ExtensionFoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    const-string v10, "displayFoldingFeature.bounds"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .local v9, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroidx/window/extensions/ExtensionFoldingFeature;->getState()I

    move-result v10

    .line 110
    .local v10, "tmpState":I
    invoke-virtual {v8}, Landroidx/window/extensions/ExtensionFoldingFeature;->getType()I

    move-result v11

    .line 113
    .local v11, "tmpType":I
    new-instance v12, Landroidx/window/extensions/ExtensionWindowLayoutInfo;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/List;

    invoke-direct {v12, v13}, Landroidx/window/extensions/ExtensionWindowLayoutInfo;-><init>(Ljava/util/List;)V

    .line 116
    .local v12, "windowLayoutInfo":Landroidx/window/extensions/ExtensionWindowLayoutInfo;
    invoke-virtual {v12}, Landroidx/window/extensions/ExtensionWindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object v13

    const-string v14, "windowLayoutInfo.displayFeatures"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v13

    .line 117
    .local v1, "tmpDisplayFeatures":Ljava/util/List;
    nop

    .end local v1    # "tmpDisplayFeatures":Ljava/util/List;
    .end local v2    # "methodSetExtensionCallback":Ljava/lang/reflect/Method;
    .end local v3    # "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v4    # "rSetExtensionCallback":Ljava/lang/Class;
    .end local v5    # "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v6    # "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v7    # "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v8    # "displayFoldingFeature":Landroidx/window/extensions/ExtensionFoldingFeature;
    .end local v9    # "tmpRect":Landroid/graphics/Rect;
    .end local v10    # "tmpState":I
    .end local v11    # "tmpType":I
    .end local v12    # "windowLayoutInfo":Landroidx/window/extensions/ExtensionWindowLayoutInfo;
    goto :goto_9

    .line 90
    .restart local v2    # "methodSetExtensionCallback":Ljava/lang/reflect/Method;
    .restart local v3    # "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    .restart local v4    # "rSetExtensionCallback":Ljava/lang/Class;
    .restart local v5    # "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .restart local v6    # "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    .restart local v7    # "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    :cond_9
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 91
    const-string v8, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    .line 92
    nop

    .line 91
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-direct {v0, v8}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    .end local v3    # "rtUnregisterWindowLayoutChangeListener":Ljava/lang/Class;
    .end local v7    # "methodUnregisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    :cond_a
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 79
    const-string v3, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    .line 80
    nop

    .line 79
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-direct {v0, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    .end local v5    # "methodRegisterWindowLayoutChangeListener":Ljava/lang/reflect/Method;
    .end local v6    # "rtRegisterWindowLayoutChangeListener":Ljava/lang/Class;
    :cond_b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 68
    const-string v3, "Illegal return type for \'setExtensionCallback\': "

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-direct {v0, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v2    # "methodSetExtensionCallback":Ljava/lang/reflect/Method;
    .end local v4    # "rSetExtensionCallback":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 126
    move v0, v1

    .line 60
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_9
    return v0
.end method
