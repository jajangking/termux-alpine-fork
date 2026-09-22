.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multisets$JxTo_4F9q3pBsyIfwUOATcU-oW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Multisets$JxTo_4F9q3pBsyIfwUOATcU-oW0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Multisets$JxTo_4F9q3pBsyIfwUOATcU-oW0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Multisets$JxTo_4F9q3pBsyIfwUOATcU-oW0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Multisets$JxTo_4F9q3pBsyIfwUOATcU-oW0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Multisets$JxTo_4F9q3pBsyIfwUOATcU-oW0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Multiset;

    check-cast p2, Lcom/google/common/collect/Multiset;

    invoke-static {p1, p2}, Lcom/google/common/collect/Multisets;->lambda$toMultiset$1(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    return-object p1
.end method
