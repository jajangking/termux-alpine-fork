.class public final synthetic Lcom/google/common/collect/-$$Lambda$78xVQapkjVuJ8bMSoiv6-JLU3LI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$78xVQapkjVuJ8bMSoiv6-JLU3LI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$78xVQapkjVuJ8bMSoiv6-JLU3LI;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$78xVQapkjVuJ8bMSoiv6-JLU3LI;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$78xVQapkjVuJ8bMSoiv6-JLU3LI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$78xVQapkjVuJ8bMSoiv6-JLU3LI;

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

    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    return-object v0
.end method
