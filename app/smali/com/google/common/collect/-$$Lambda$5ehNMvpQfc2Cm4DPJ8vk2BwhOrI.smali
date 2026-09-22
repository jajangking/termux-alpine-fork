.class public final synthetic Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$5ehNMvpQfc2Cm4DPJ8vk2BwhOrI;

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

    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    return-object v0
.end method
