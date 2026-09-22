.class public final synthetic Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;

    invoke-direct {v0}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;-><init>()V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;->INSTANCE:Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$Zg2JpzvUkEHEppuR6CcAhbHgJ0E;

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

    check-cast p1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {p1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
