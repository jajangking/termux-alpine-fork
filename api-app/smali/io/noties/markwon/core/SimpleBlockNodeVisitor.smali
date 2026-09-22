.class public Lio/noties/markwon/core/SimpleBlockNodeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 1

    .line 20
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->blockStart(Lorg/commonmark/node/Node;)V

    .line 23
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 25
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 28
    invoke-interface {p1, p2, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 30
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->blockEnd(Lorg/commonmark/node/Node;)V

    return-void
.end method
