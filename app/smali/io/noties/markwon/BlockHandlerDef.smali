.class public Lio/noties/markwon/BlockHandlerDef;
.super Ljava/lang/Object;
.source "BlockHandlerDef.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$BlockHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockEnd(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 1
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "node"    # Lorg/commonmark/node/Node;

    .line 18
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->hasNext(Lorg/commonmark/node/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 20
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->forceNewLine()V

    .line 22
    :cond_0
    return-void
.end method

.method public blockStart(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "node"    # Lorg/commonmark/node/Node;

    .line 13
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 14
    return-void
.end method
