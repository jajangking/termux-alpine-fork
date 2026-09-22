.class public final Landroidx/window/WindowInfoRepo$Companion;
.super Ljava/lang/Object;
.source "WindowInfoRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/WindowInfoRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInfoRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInfoRepo.kt\nandroidx/window/WindowInfoRepo$Companion\n+ 2 ActivityExt.kt\nandroidx/window/ActivityExtKt\n*L\n1#1,127:1\n31#2:128\n40#2,5:129\n*S KotlinDebug\n*F\n+ 1 WindowInfoRepo.kt\nandroidx/window/WindowInfoRepo$Companion\n*L\n89#1:128\n90#1:129,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/window/WindowInfoRepo$Companion;",
        "",
        "()V",
        "decorator",
        "Landroidx/window/WindowInfoRepoDecorator;",
        "create",
        "Landroidx/window/WindowInfoRepo;",
        "activity",
        "Landroid/app/Activity;",
        "overrideDecorator",
        "",
        "overridingDecorator",
        "reset",
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
.field static final synthetic $$INSTANCE:Landroidx/window/WindowInfoRepo$Companion;

.field private static decorator:Landroidx/window/WindowInfoRepoDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/WindowInfoRepo$Companion;

    invoke-direct {v0}, Landroidx/window/WindowInfoRepo$Companion;-><init>()V

    sput-object v0, Landroidx/window/WindowInfoRepo$Companion;->$$INSTANCE:Landroidx/window/WindowInfoRepo$Companion;

    .line 84
    sget-object v0, Landroidx/window/EmptyDecorator;->INSTANCE:Landroidx/window/EmptyDecorator;

    check-cast v0, Landroidx/window/WindowInfoRepoDecorator;

    sput-object v0, Landroidx/window/WindowInfoRepo$Companion;->decorator:Landroidx/window/WindowInfoRepoDecorator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget v0, Landroidx/window/R$id;->androidx_window_activity_scope:I

    .local v0, "id$iv":I
    move-object v1, p1

    .local v1, "$this$getTag$iv":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$getTag":I
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/window/WindowInfoRepo;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v3, v5

    :cond_0
    check-cast v3, Landroidx/window/WindowInfoRepo;

    .line 89
    .end local v0    # "id$iv":I
    .end local v1    # "$this$getTag$iv":Landroid/app/Activity;
    .end local v2    # "$i$f$getTag":I
    instance-of v0, v3, Landroidx/window/WindowInfoRepo;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    move-object v0, v3

    .line 90
    .local v0, "taggedRepo":Landroidx/window/WindowInfoRepo;
    if-nez v0, :cond_5

    sget v1, Landroidx/window/R$id;->androidx_window_activity_scope:I

    .local v1, "id$iv":I
    move-object v2, p1

    .local v2, "$this$getOrCreateTag$iv":Landroid/app/Activity;
    const/4 v3, 0x0

    .line 129
    .local v3, "$i$f$getOrCreateTag":I
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Landroidx/window/WindowInfoRepoImp;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    check-cast v5, Landroidx/window/WindowInfoRepoImp;

    if-nez v5, :cond_4

    move-object v4, v2

    .local v4, "$this$getOrCreateTag_u24lambda_u2d0$iv":Landroid/app/Activity;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$a$-run-ActivityExtKt$getOrCreateTag$1$iv":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    const/4 v6, 0x0

    .line 91
    .local v6, "$i$a$-getOrCreateTag-WindowInfoRepo$Companion$create$repo$1":I
    new-instance v7, Landroidx/window/WindowInfoRepoImp;

    .line 92
    nop

    .line 93
    sget-object v8, Landroidx/window/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/WindowMetricsCalculatorCompat;

    check-cast v8, Landroidx/window/WindowMetricsCalculator;

    .line 94
    sget-object v9, Landroidx/window/ExtensionWindowBackend;->Companion:Landroidx/window/ExtensionWindowBackend$Companion;

    move-object v10, p1

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroidx/window/ExtensionWindowBackend$Companion;->getInstance(Landroid/content/Context;)Landroidx/window/ExtensionWindowBackend;

    move-result-object v9

    check-cast v9, Landroidx/window/WindowBackend;

    .line 91
    invoke-direct {v7, p1, v8, v9}, Landroidx/window/WindowInfoRepoImp;-><init>(Landroid/app/Activity;Landroidx/window/WindowMetricsCalculator;Landroidx/window/WindowBackend;)V

    .end local v6    # "$i$a$-getOrCreateTag-WindowInfoRepo$Companion$create$repo$1":I
    move-object v6, v7

    .line 132
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 133
    nop

    .line 129
    .end local v4    # "$this$getOrCreateTag_u24lambda_u2d0$iv":Landroid/app/Activity;
    .end local v5    # "$i$a$-run-ActivityExtKt$getOrCreateTag$1$iv":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    move-object v5, v6

    goto :goto_2

    .line 130
    .restart local v4    # "$this$getOrCreateTag_u24lambda_u2d0$iv":Landroid/app/Activity;
    .restart local v5    # "$i$a$-run-ActivityExtKt$getOrCreateTag$1$iv":I
    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Assertion failed"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 129
    .end local v1    # "id$iv":I
    .end local v2    # "$this$getOrCreateTag$iv":Landroid/app/Activity;
    .end local v3    # "$i$f$getOrCreateTag":I
    .end local v4    # "$this$getOrCreateTag_u24lambda_u2d0$iv":Landroid/app/Activity;
    .end local v5    # "$i$a$-run-ActivityExtKt$getOrCreateTag$1$iv":I
    :cond_4
    :goto_2
    check-cast v5, Landroidx/window/WindowInfoRepo;

    goto :goto_3

    .line 90
    :cond_5
    move-object v5, v0

    :goto_3
    move-object v1, v5

    .line 97
    .local v1, "repo":Landroidx/window/WindowInfoRepo;
    sget-object v2, Landroidx/window/WindowInfoRepo$Companion;->decorator:Landroidx/window/WindowInfoRepoDecorator;

    invoke-interface {v2, v1}, Landroidx/window/WindowInfoRepoDecorator;->decorate(Landroidx/window/WindowInfoRepo;)Landroidx/window/WindowInfoRepo;

    move-result-object v2

    return-object v2
.end method

.method public final overrideDecorator(Landroidx/window/WindowInfoRepoDecorator;)V
    .locals 1
    .param p1, "overridingDecorator"    # Landroidx/window/WindowInfoRepoDecorator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "overridingDecorator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sput-object p1, Landroidx/window/WindowInfoRepo$Companion;->decorator:Landroidx/window/WindowInfoRepoDecorator;

    .line 104
    return-void
.end method

.method public final reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 109
    sget-object v0, Landroidx/window/EmptyDecorator;->INSTANCE:Landroidx/window/EmptyDecorator;

    check-cast v0, Landroidx/window/WindowInfoRepoDecorator;

    sput-object v0, Landroidx/window/WindowInfoRepo$Companion;->decorator:Landroidx/window/WindowInfoRepoDecorator;

    .line 110
    return-void
.end method
