.class public final synthetic Lcom/google/common/collect/-$$Lambda$BJ3DA29HFseNLOIta1uwtl0FI9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$BJ3DA29HFseNLOIta1uwtl0FI9o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$BJ3DA29HFseNLOIta1uwtl0FI9o;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$BJ3DA29HFseNLOIta1uwtl0FI9o;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$BJ3DA29HFseNLOIta1uwtl0FI9o;->INSTANCE:Lcom/google/common/collect/-$$Lambda$BJ3DA29HFseNLOIta1uwtl0FI9o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->add(Ljava/lang/Object;)V

    return-void
.end method
