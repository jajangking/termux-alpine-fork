.class public final Landroidx/window/ActivityExtKt;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u001a3\u0010\u0004\u001a\u0002H\u0005\"\u0006\u0008\u0000\u0010\u0005\u0018\u0001*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a$\u0010\u000b\u001a\u0004\u0018\u0001H\u0005\"\u0006\u0008\u0000\u0010\u0005\u0018\u0001*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\u0008\u00a2\u0006\u0002\u0010\u000c\u001a\u000c\u0010\r\u001a\u00020\u000e*\u00020\u0003H\u0007\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "getActivityWindowToken",
        "Landroid/os/IBinder;",
        "activity",
        "Landroid/app/Activity;",
        "getOrCreateTag",
        "T",
        "id",
        "",
        "producer",
        "Lkotlin/Function0;",
        "(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "getTag",
        "(Landroid/app/Activity;I)Ljava/lang/Object;",
        "windowInfoRepository",
        "Landroidx/window/WindowInfoRepo;",
        "window_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getActivityWindowToken(Landroid/app/Activity;)Landroid/os/IBinder;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 27
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    return-object v0
.end method

.method public static final synthetic getOrCreateTag(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$getOrCreateTag"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .param p2, "producer"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    .local v0, "$i$f$getOrCreateTag":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Object;

    if-nez v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .local v1, "$this$getOrCreateTag_u24lambda_u2d0":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 41
    .local v2, "$i$a$-run-ActivityExtKt$getOrCreateTag$1":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    .line 43
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    nop

    .line 40
    .end local v1    # "$this$getOrCreateTag_u24lambda_u2d0":Landroid/app/Activity;
    .end local v2    # "$i$a$-run-ActivityExtKt$getOrCreateTag$1":I
    .end local v3    # "value":Ljava/lang/Object;
    move-object v1, v3

    goto :goto_0

    .line 41
    .restart local v1    # "$this$getOrCreateTag_u24lambda_u2d0":Landroid/app/Activity;
    .restart local v2    # "$i$a$-run-ActivityExtKt$getOrCreateTag$1":I
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Assertion failed"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 40
    .end local v1    # "$this$getOrCreateTag_u24lambda_u2d0":Landroid/app/Activity;
    .end local v2    # "$i$a$-run-ActivityExtKt$getOrCreateTag$1":I
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final synthetic getTag(Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$getTag"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$getTag":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Object;

    return-object v1
.end method

.method public static final windowInfoRepository(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;
    .locals 1
    .param p0, "$this$windowInfoRepository"    # Landroid/app/Activity;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/WindowInfoRepo$Companion;->create(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;

    move-result-object v0

    return-object v0
.end method
