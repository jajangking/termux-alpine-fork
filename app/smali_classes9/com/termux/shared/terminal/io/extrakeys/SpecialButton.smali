.class public Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;
.super Ljava/lang/Object;
.source "SpecialButton.java"


# static fields
.field public static final ALT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

.field public static final CTRL:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

.field public static final FN:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

.field public static final SHIFT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->map:Ljava/util/HashMap;

    .line 12
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    const-string v1, "CTRL"

    invoke-direct {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    .line 13
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    const-string v1, "ALT"

    invoke-direct {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    .line 14
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    const-string v1, "SHIFT"

    invoke-direct {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    .line 15
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    const-string v1, "FN"

    invoke-direct {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->FN:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->key:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->key:Ljava/lang/String;

    return-object v0
.end method
