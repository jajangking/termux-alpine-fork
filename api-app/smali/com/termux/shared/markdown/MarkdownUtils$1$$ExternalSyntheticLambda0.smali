.class public final synthetic Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 0
    check-cast p2, Lorg/commonmark/node/FencedCodeBlock;

    invoke-static {p1, p2}, Lcom/termux/shared/markdown/MarkdownUtils$1;->$r8$lambda$HNg2kzffM2jj6qgFJoFliSltSaQ(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V

    return-void
.end method
