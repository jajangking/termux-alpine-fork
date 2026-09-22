.class public final synthetic Lcom/google/common/collect/-$$Lambda$i3lBncsrIzHwKA3a2gXNScs0aWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$i3lBncsrIzHwKA3a2gXNScs0aWs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$i3lBncsrIzHwKA3a2gXNScs0aWs;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$i3lBncsrIzHwKA3a2gXNScs0aWs;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$i3lBncsrIzHwKA3a2gXNScs0aWs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$i3lBncsrIzHwKA3a2gXNScs0aWs;

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

    new-instance v0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-direct {v0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;-><init>()V

    return-object v0
.end method
