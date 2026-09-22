.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap;
.super Ljava/util/HashMap;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CleverMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    .local p0, "this":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap;, "Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap;, "Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    return-object p2
.end method
