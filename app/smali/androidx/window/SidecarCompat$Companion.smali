.class public final Landroidx/window/SidecarCompat$Companion;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/window/SidecarCompat$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "sidecarVersion",
        "Landroidx/window/Version;",
        "getSidecarVersion",
        "()Landroidx/window/Version;",
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

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/SidecarCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSidecarVersion()Landroidx/window/Version;
    .locals 3

    .line 406
    nop

    .line 407
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroidx/window/sidecar/SidecarProvider;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "vendorVersion":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/window/Version;->Companion:Landroidx/window/Version$Companion;

    invoke-virtual {v2, v1}, Landroidx/window/Version$Companion;->parse(Ljava/lang/String;)Landroidx/window/Version;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v1    # "vendorVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    nop

    .line 418
    check-cast v0, Landroidx/window/Version;

    goto :goto_0

    .line 409
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 413
    check-cast v0, Landroidx/window/Version;

    .line 419
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_0
    :goto_0
    return-object v0
.end method
