.class public final Landroidx/window/FoldingFeature$Type;
.super Ljava/lang/Object;
.source "FoldingFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/FoldingFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/FoldingFeature$Type$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/window/FoldingFeature$Type;",
        "",
        "description",
        "",
        "(Ljava/lang/String;)V",
        "toString",
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
.field public static final Companion:Landroidx/window/FoldingFeature$Type$Companion;

.field public static final FOLD:Landroidx/window/FoldingFeature$Type;

.field public static final HINGE:Landroidx/window/FoldingFeature$Type;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/FoldingFeature$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/FoldingFeature$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/FoldingFeature$Type;->Companion:Landroidx/window/FoldingFeature$Type$Companion;

    .line 52
    new-instance v0, Landroidx/window/FoldingFeature$Type;

    const-string v1, "FOLD"

    invoke-direct {v0, v1}, Landroidx/window/FoldingFeature$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/FoldingFeature$Type;->FOLD:Landroidx/window/FoldingFeature$Type;

    .line 58
    new-instance v0, Landroidx/window/FoldingFeature$Type;

    const-string v1, "HINGE"

    invoke-direct {v0, v1}, Landroidx/window/FoldingFeature$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/FoldingFeature$Type;->HINGE:Landroidx/window/FoldingFeature$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/FoldingFeature$Type;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/window/FoldingFeature$Type;->description:Ljava/lang/String;

    return-object v0
.end method
