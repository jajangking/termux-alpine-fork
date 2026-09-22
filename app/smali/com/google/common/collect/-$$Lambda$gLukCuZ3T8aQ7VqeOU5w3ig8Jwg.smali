.class public final synthetic Lcom/google/common/collect/-$$Lambda$gLukCuZ3T8aQ7VqeOU5w3ig8Jwg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$gLukCuZ3T8aQ7VqeOU5w3ig8Jwg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$gLukCuZ3T8aQ7VqeOU5w3ig8Jwg;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$gLukCuZ3T8aQ7VqeOU5w3ig8Jwg;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$gLukCuZ3T8aQ7VqeOU5w3ig8Jwg;->INSTANCE:Lcom/google/common/collect/-$$Lambda$gLukCuZ3T8aQ7VqeOU5w3ig8Jwg;

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

    check-cast p1, Lcom/google/common/collect/Table$Cell;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
