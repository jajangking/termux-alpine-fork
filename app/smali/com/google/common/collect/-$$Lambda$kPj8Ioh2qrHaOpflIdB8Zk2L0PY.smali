.class public final synthetic Lcom/google/common/collect/-$$Lambda$kPj8Ioh2qrHaOpflIdB8Zk2L0PY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$kPj8Ioh2qrHaOpflIdB8Zk2L0PY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$kPj8Ioh2qrHaOpflIdB8Zk2L0PY;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$kPj8Ioh2qrHaOpflIdB8Zk2L0PY;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$kPj8Ioh2qrHaOpflIdB8Zk2L0PY;->INSTANCE:Lcom/google/common/collect/-$$Lambda$kPj8Ioh2qrHaOpflIdB8Zk2L0PY;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
