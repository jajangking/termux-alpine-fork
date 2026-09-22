.class public abstract Lio/noties/markwon/utils/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static moveChildren(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 2
    .param p0, "to"    # Lorg/commonmark/node/Node;
    .param p1, "from"    # Lorg/commonmark/node/Node;

    .line 13
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 15
    .local v0, "next":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 18
    .local v1, "temp":Lorg/commonmark/node/Node;
    invoke-virtual {p0, v0}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 19
    move-object v0, v1

    goto :goto_0

    .line 21
    .end local v1    # "temp":Lorg/commonmark/node/Node;
    :cond_0
    return-void
.end method
