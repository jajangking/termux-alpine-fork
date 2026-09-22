.class final synthetic Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;
.super Ljava/lang/Object;
.source "WindowInfoRepoImp.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;

    invoke-direct {v0}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;-><init>()V

    sput-object v0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;->INSTANCE:Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Runnable;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
