.class public final Landroidx/window/SidecarAdapter$Companion;
.super Ljava/lang/Object;
.source "SidecarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/SidecarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J \u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0007J\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u001aR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/window/SidecarAdapter$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "getRawSidecarDevicePosture",
        "",
        "sidecarDeviceState",
        "Landroidx/window/sidecar/SidecarDeviceState;",
        "getSidecarDevicePosture",
        "getSidecarDevicePosture$window_release",
        "getSidecarDisplayFeatures",
        "",
        "Landroidx/window/sidecar/SidecarDisplayFeature;",
        "info",
        "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
        "setSidecarDevicePosture",
        "",
        "posture",
        "setSidecarDisplayFeatures",
        "displayFeatures",
        "translate",
        "Landroidx/window/DisplayFeature;",
        "feature",
        "deviceState",
        "translate$window_release",
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

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/SidecarAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawSidecarDevicePosture(Landroidx/window/sidecar/SidecarDeviceState;)I
    .locals 5
    .param p1, "sidecarDeviceState"    # Landroidx/window/sidecar/SidecarDeviceState;

    const-string v0, "sidecarDeviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    nop

    .line 222
    :try_start_0
    iget v0, p1, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "error":Ljava/lang/NoSuchFieldError;
    const/4 v1, 0x0

    :try_start_1
    const-class v2, Landroidx/window/sidecar/SidecarDeviceState;

    .line 225
    const-string v3, "getPosture"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 226
    .local v2, "methodGetPosture":Ljava/lang/reflect/Method;
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local p1    # "sidecarDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    throw v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    .end local v2    # "methodGetPosture":Ljava/lang/reflect/Method;
    .restart local v0    # "error":Ljava/lang/NoSuchFieldError;
    .restart local p1    # "sidecarDeviceState":Landroidx/window/sidecar/SidecarDeviceState;
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 231
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/IllegalAccessException;
    nop

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 227
    :catch_3
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 241
    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v1
.end method

.method public final getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I
    .locals 2
    .param p1, "sidecarDeviceState"    # Landroidx/window/sidecar/SidecarDeviceState;

    const-string v0, "sidecarDeviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p1}, Landroidx/window/SidecarAdapter$Companion;->getRawSidecarDevicePosture(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v0

    .line 208
    .local v0, "rawPosture":I
    if-ltz v0, :cond_1

    .line 209
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    move v1, v0

    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 208
    :goto_1
    return v1
.end method

.method public final getSidecarDisplayFeatures(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;
    .locals 5
    .param p1, "info"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/sidecar/SidecarDisplayFeature;",
            ">;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    :try_start_0
    iget-object v0, p1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "error":Ljava/lang/NoSuchFieldError;
    :try_start_1
    const-class v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 154
    const-string v2, "getDisplayFeatures"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 153
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "methodGetFeatures":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/util/List;

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local p1    # "info":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    throw v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v1    # "methodGetFeatures":Ljava/lang/reflect/Method;
    .restart local v0    # "error":Ljava/lang/NoSuchFieldError;
    .restart local p1    # "info":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/IllegalAccessException;
    nop

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 158
    :catch_3
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 172
    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setSidecarDevicePosture(Landroidx/window/sidecar/SidecarDeviceState;I)V
    .locals 7
    .param p1, "sidecarDeviceState"    # Landroidx/window/sidecar/SidecarDeviceState;
    .param p2, "posture"    # I

    const-string v0, "sidecarDeviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    nop

    .line 249
    :try_start_0
    iput p2, p1, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "error":Ljava/lang/NoSuchFieldError;
    :try_start_1
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 253
    const-string v2, "setPosture"

    .line 254
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 252
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 256
    .local v1, "methodSetPosture":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 265
    .end local v1    # "methodSetPosture":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/IllegalAccessException;
    nop

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 257
    :catch_3
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 271
    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void
.end method

.method public final setSidecarDisplayFeatures(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Ljava/util/List;)V
    .locals 7
    .param p1, "info"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    .param p2, "displayFeatures"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
            "Ljava/util/List<",
            "Landroidx/window/sidecar/SidecarDisplayFeature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayFeatures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    nop

    .line 183
    :try_start_0
    iput-object p2, p1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "error":Ljava/lang/NoSuchFieldError;
    :try_start_1
    const-class v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 187
    const-string v2, "setDisplayFeatures"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 186
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 189
    .local v1, "methodSetFeatures":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 198
    .end local v1    # "methodSetFeatures":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/IllegalAccessException;
    nop

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 190
    :catch_3
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 204
    .end local v0    # "error":Ljava/lang/NoSuchFieldError;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void
.end method

.method public final translate$window_release(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/DisplayFeature;
    .locals 7
    .param p1, "feature"    # Landroidx/window/sidecar/SidecarDisplayFeature;
    .param p2, "deviceState"    # Landroidx/window/sidecar/SidecarDeviceState;

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "feature.rect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_0

    .line 283
    nop

    .line 286
    return-object v3

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    nop

    .line 299
    return-object v3

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 303
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 306
    :cond_2
    nop

    .line 308
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_3

    .line 309
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_3

    .line 314
    nop

    .line 321
    return-object v3

    .line 324
    :cond_3
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 328
    nop

    .line 331
    return-object v3

    .line 326
    :pswitch_0
    sget-object v2, Landroidx/window/FoldingFeature$Type;->HINGE:Landroidx/window/FoldingFeature$Type;

    goto :goto_0

    .line 325
    :pswitch_1
    sget-object v2, Landroidx/window/FoldingFeature$Type;->FOLD:Landroidx/window/FoldingFeature$Type;

    .line 324
    :goto_0
    nop

    .line 334
    .local v2, "type":Landroidx/window/FoldingFeature$Type;
    invoke-virtual {p0, p2}, Landroidx/window/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 340
    sget-object v3, Landroidx/window/FoldingFeature$State;->FLAT:Landroidx/window/FoldingFeature$State;

    goto :goto_1

    .line 339
    :pswitch_2
    sget-object v3, Landroidx/window/FoldingFeature$State;->FLAT:Landroidx/window/FoldingFeature$State;

    goto :goto_1

    .line 338
    :pswitch_3
    sget-object v3, Landroidx/window/FoldingFeature$State;->HALF_OPENED:Landroidx/window/FoldingFeature$State;

    goto :goto_1

    .line 337
    :pswitch_4
    return-object v3

    .line 334
    :goto_1
    nop

    .line 342
    .local v3, "state":Landroidx/window/FoldingFeature$State;
    new-instance v4, Landroidx/window/FoldingFeature;

    new-instance v5, Landroidx/window/Bounds;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroidx/window/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v4, v5, v2, v3}, Landroidx/window/FoldingFeature;-><init>(Landroidx/window/Bounds;Landroidx/window/FoldingFeature$Type;Landroidx/window/FoldingFeature$State;)V

    check-cast v4, Landroidx/window/DisplayFeature;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
