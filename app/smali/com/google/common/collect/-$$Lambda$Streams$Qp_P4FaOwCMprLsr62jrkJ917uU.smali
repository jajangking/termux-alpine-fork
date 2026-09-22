.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$Qp_P4FaOwCMprLsr62jrkJ917uU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$Qp_P4FaOwCMprLsr62jrkJ917uU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Streams$Qp_P4FaOwCMprLsr62jrkJ917uU;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Streams$Qp_P4FaOwCMprLsr62jrkJ917uU;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Streams$Qp_P4FaOwCMprLsr62jrkJ917uU;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$Qp_P4FaOwCMprLsr62jrkJ917uU;

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

    check-cast p1, Ljava/util/Spliterator;

    invoke-static {p1}, Lcom/google/common/collect/Streams;->lambda$concat$0(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
