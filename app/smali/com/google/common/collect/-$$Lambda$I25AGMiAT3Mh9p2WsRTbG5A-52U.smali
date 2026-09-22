.class public final synthetic Lcom/google/common/collect/-$$Lambda$I25AGMiAT3Mh9p2WsRTbG5A-52U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$I25AGMiAT3Mh9p2WsRTbG5A-52U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$I25AGMiAT3Mh9p2WsRTbG5A-52U;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$I25AGMiAT3Mh9p2WsRTbG5A-52U;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$I25AGMiAT3Mh9p2WsRTbG5A-52U;->INSTANCE:Lcom/google/common/collect/-$$Lambda$I25AGMiAT3Mh9p2WsRTbG5A-52U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    return-object p1
.end method
