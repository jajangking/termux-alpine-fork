.class public final Landroidx/window/ExtensionWindowBackend$Companion;
.super Ljava/lang/Object;
.source "ExtensionWindowBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/ExtensionWindowBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/window/ExtensionWindowBackend$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "globalInstance",
        "Landroidx/window/ExtensionWindowBackend;",
        "globalLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "initAndVerifyExtension",
        "Landroidx/window/ExtensionInterfaceCompat;",
        "isExtensionVersionSupported",
        "",
        "extensionVersion",
        "Landroidx/window/Version;",
        "resetInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/ExtensionWindowBackend$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Landroidx/window/ExtensionWindowBackend;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Landroidx/window/ExtensionWindowBackend;->access$getGlobalInstance$cp()Landroidx/window/ExtensionWindowBackend;

    move-result-object v0

    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Landroidx/window/ExtensionWindowBackend;->access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 180
    .local v1, "$i$a$-withLock-ExtensionWindowBackend$Companion$getInstance$1":I
    :try_start_0
    invoke-static {}, Landroidx/window/ExtensionWindowBackend;->access$getGlobalInstance$cp()Landroidx/window/ExtensionWindowBackend;

    move-result-object v2

    if-nez v2, :cond_0

    .line 181
    sget-object v2, Landroidx/window/ExtensionWindowBackend;->Companion:Landroidx/window/ExtensionWindowBackend$Companion;

    invoke-virtual {v2, p1}, Landroidx/window/ExtensionWindowBackend$Companion;->initAndVerifyExtension(Landroid/content/Context;)Landroidx/window/ExtensionInterfaceCompat;

    move-result-object v2

    .line 182
    .local v2, "windowExtension":Landroidx/window/ExtensionInterfaceCompat;
    sget-object v3, Landroidx/window/ExtensionWindowBackend;->Companion:Landroidx/window/ExtensionWindowBackend$Companion;

    new-instance v3, Landroidx/window/ExtensionWindowBackend;

    invoke-direct {v3, v2}, Landroidx/window/ExtensionWindowBackend;-><init>(Landroidx/window/ExtensionInterfaceCompat;)V

    invoke-static {v3}, Landroidx/window/ExtensionWindowBackend;->access$setGlobalInstance$cp(Landroidx/window/ExtensionWindowBackend;)V

    .line 184
    .end local v2    # "windowExtension":Landroidx/window/ExtensionInterfaceCompat;
    :cond_0
    nop

    .end local v1    # "$i$a$-withLock-ExtensionWindowBackend$Companion$getInstance$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 186
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/window/ExtensionWindowBackend;->access$getGlobalInstance$cp()Landroidx/window/ExtensionWindowBackend;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final initAndVerifyExtension(Landroid/content/Context;)Landroidx/window/ExtensionInterfaceCompat;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "impl":Landroidx/window/ExtensionInterfaceCompat;
    nop

    .line 197
    :try_start_0
    sget-object v1, Landroidx/window/ExtensionCompat;->Companion:Landroidx/window/ExtensionCompat$Companion;

    invoke-virtual {v1}, Landroidx/window/ExtensionCompat$Companion;->getExtensionVersion()Landroidx/window/Version;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/ExtensionWindowBackend$Companion;->isExtensionVersionSupported(Landroidx/window/Version;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Landroidx/window/ExtensionCompat;

    invoke-direct {v1, p1}, Landroidx/window/ExtensionCompat;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/window/ExtensionInterfaceCompat;

    move-object v0, v1

    .line 199
    move-object v1, v0

    check-cast v1, Landroidx/window/ExtensionCompat;

    invoke-virtual {v1}, Landroidx/window/ExtensionCompat;->validateExtensionInterface()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 200
    nop

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    .local v1, "t":Ljava/lang/Throwable;
    nop

    .line 210
    const/4 v0, 0x0

    .line 212
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 214
    nop

    .line 215
    :try_start_1
    sget-object v1, Landroidx/window/SidecarCompat;->Companion:Landroidx/window/SidecarCompat$Companion;

    invoke-virtual {v1}, Landroidx/window/SidecarCompat$Companion;->getSidecarVersion()Landroidx/window/Version;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/ExtensionWindowBackend$Companion;->isExtensionVersionSupported(Landroidx/window/Version;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    new-instance v1, Landroidx/window/SidecarCompat;

    invoke-direct {v1, p1}, Landroidx/window/SidecarCompat;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/window/ExtensionInterfaceCompat;

    move-object v0, v1

    .line 217
    move-object v1, v0

    check-cast v1, Landroidx/window/SidecarCompat;

    invoke-virtual {v1}, Landroidx/window/SidecarCompat;->validateExtensionInterface()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 218
    nop

    .line 221
    const/4 v0, 0x0

    goto :goto_1

    .line 224
    :catchall_1
    move-exception v1

    .line 225
    .restart local v1    # "t":Ljava/lang/Throwable;
    nop

    .line 228
    const/4 v0, 0x0

    .line 231
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 236
    :cond_2
    return-object v0
.end method

.method public final isExtensionVersionSupported(Landroidx/window/Version;)Z
    .locals 4
    .param p1, "extensionVersion"    # Landroidx/window/Version;

    .line 245
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 246
    return v0

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroidx/window/Version;->getMajor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 251
    goto :goto_0

    .line 252
    :cond_1
    sget-object v1, Landroidx/window/Version;->CURRENT:Landroidx/window/Version;

    invoke-virtual {v1}, Landroidx/window/Version;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Landroidx/window/Version;->getMajor()I

    move-result v3

    if-lt v1, v3, :cond_2

    move v0, v2

    .line 248
    :cond_2
    :goto_0
    return v0
.end method

.method public final resetInstance()V
    .locals 1

    .line 260
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/window/ExtensionWindowBackend;->access$setGlobalInstance$cp(Landroidx/window/ExtensionWindowBackend;)V

    .line 261
    return-void
.end method
