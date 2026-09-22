.class public final synthetic Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;

    invoke-direct {v0}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;-><init>()V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$dp2IdVyP6eT6Gmgl2ksn7Z6hWjY;

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

    check-cast p1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    return-object p1
.end method
