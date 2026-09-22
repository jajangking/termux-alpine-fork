.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableTable$rbO3mPTwOyfROi7HFZN7st28XiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$rbO3mPTwOyfROi7HFZN7st28XiA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$rbO3mPTwOyfROi7HFZN7st28XiA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableTable$rbO3mPTwOyfROi7HFZN7st28XiA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$rbO3mPTwOyfROi7HFZN7st28XiA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$rbO3mPTwOyfROi7HFZN7st28XiA;

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

    check-cast p1, Lcom/google/common/collect/ImmutableTable$CollectorState;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableTable;->lambda$toImmutableTable$7(Lcom/google/common/collect/ImmutableTable$CollectorState;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p1

    return-object p1
.end method
