.class Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;->configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;


# direct methods
.method constructor <init>(Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$2;->this$0:Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;)V
    .locals 1

    .line 55
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 56
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 57
    invoke-interface {p1, p2, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    return-void
.end method

.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 52
    check-cast p2, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$2;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;)V

    return-void
.end method
