.class public final synthetic Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$X_ReiLzMMdmLOHBMWZV1MhM0VVw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method
