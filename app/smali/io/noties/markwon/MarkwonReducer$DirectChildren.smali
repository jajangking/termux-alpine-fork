.class Lio/noties/markwon/MarkwonReducer$DirectChildren;
.super Lio/noties/markwon/MarkwonReducer;
.source "MarkwonReducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectChildren"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/noties/markwon/MarkwonReducer;-><init>()V

    return-void
.end method


# virtual methods
.method public reduce(Lorg/commonmark/node/Node;)Ljava/util/List;
    .locals 3
    .param p1, "root"    # Lorg/commonmark/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/commonmark/node/Node;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 43
    .local v0, "node":Lorg/commonmark/node/Node;
    if-nez v0, :cond_0

    .line 44
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/Node;>;"
    goto :goto_1

    .line 47
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/Node;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/Node;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 54
    instance-of v2, v0, Lorg/commonmark/node/LinkReferenceDefinition;

    if-nez v2, :cond_1

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v2

    .line 58
    .local v2, "temp":Lorg/commonmark/node/Node;
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->unlink()V

    .line 59
    move-object v0, v2

    goto :goto_0

    .line 63
    .end local v2    # "temp":Lorg/commonmark/node/Node;
    :cond_2
    :goto_1
    return-object v1
.end method
