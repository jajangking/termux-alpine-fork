.class Lio/noties/markwon/MarkwonVisitorImpl;
.super Ljava/lang/Object;
.source "MarkwonVisitorImpl.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;
    }
.end annotation


# instance fields
.field private final blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

.field private final builder:Lio/noties/markwon/SpannableBuilder;

.field private final configuration:Lio/noties/markwon/MarkwonConfiguration;

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field private final renderProps:Lio/noties/markwon/RenderProps;


# direct methods
.method constructor <init>(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;Lio/noties/markwon/SpannableBuilder;Ljava/util/Map;Lio/noties/markwon/MarkwonVisitor$BlockHandler;)V
    .locals 0
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "renderProps"    # Lio/noties/markwon/RenderProps;
    .param p3, "builder"    # Lio/noties/markwon/SpannableBuilder;
    .param p5, "blockHandler"    # Lio/noties/markwon/MarkwonVisitor$BlockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/MarkwonConfiguration;",
            "Lio/noties/markwon/RenderProps;",
            "Lio/noties/markwon/SpannableBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;",
            "Lio/noties/markwon/MarkwonVisitor$BlockHandler;",
            ")V"
        }
    .end annotation

    .line 56
    .local p4, "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/commonmark/node/Node;>;Lio/noties/markwon/MarkwonVisitor$NodeVisitor<+Lorg/commonmark/node/Node;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    .line 58
    iput-object p2, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    .line 59
    iput-object p3, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    .line 60
    iput-object p4, p0, Lio/noties/markwon/MarkwonVisitorImpl;->nodes:Ljava/util/Map;

    .line 61
    iput-object p5, p0, Lio/noties/markwon/MarkwonVisitorImpl;->blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

    .line 62
    return-void
.end method

.method private visit(Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 181
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->nodes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/MarkwonVisitor$NodeVisitor;

    .line 182
    .local v0, "nodeVisitor":Lio/noties/markwon/MarkwonVisitor$NodeVisitor;, "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<Lorg/commonmark/node/Node;>;"
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p0, p1}, Lio/noties/markwon/MarkwonVisitor$NodeVisitor;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 187
    :goto_0
    return-void
.end method


# virtual methods
.method public blockEnd(Lorg/commonmark/node/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 283
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

    invoke-interface {v0, p0, p1}, Lio/noties/markwon/MarkwonVisitor$BlockHandler;->blockEnd(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V

    .line 284
    return-void
.end method

.method public blockStart(Lorg/commonmark/node/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 278
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

    invoke-interface {v0, p0, p1}, Lio/noties/markwon/MarkwonVisitor$BlockHandler;->blockStart(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V

    .line 279
    return-void
.end method

.method public builder()Lio/noties/markwon/SpannableBuilder;
    .locals 1

    .line 204
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 249
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    invoke-interface {v0}, Lio/noties/markwon/RenderProps;->clearAll()V

    .line 250
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->clear()V

    .line 251
    return-void
.end method

.method public configuration()Lio/noties/markwon/MarkwonConfiguration;
    .locals 1

    .line 192
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    return-object v0
.end method

.method public ensureNewLine()V
    .locals 2

    .line 226
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    .line 227
    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->lastChar()C

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0, v1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 230
    :cond_0
    return-void
.end method

.method public forceNewLine()V
    .locals 2

    .line 234
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 235
    return-void
.end method

.method public hasNext(Lorg/commonmark/node/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 221
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 239
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    return v0
.end method

.method public renderProps()Lio/noties/markwon/RenderProps;
    .locals 1

    .line 198
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    return-object v0
.end method

.method public setSpans(ILjava/lang/Object;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "spans"    # Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    .line 245
    return-void
.end method

.method public setSpansForNode(Ljava/lang/Class;I)V
    .locals 3
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    .line 260
    .local p1, "node":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/noties/markwon/MarkwonSpansFactory;->require(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    iget-object v1, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    iget-object v2, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    invoke-interface {v0, v1, v2}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpans(ILjava/lang/Object;)V

    .line 261
    return-void
.end method

.method public setSpansForNode(Lorg/commonmark/node/Node;I)V
    .locals 1
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(TN;I)V"
        }
    .end annotation

    .line 255
    .local p1, "node":Lorg/commonmark/node/Node;, "TN;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpansForNode(Ljava/lang/Class;I)V

    .line 256
    return-void
.end method

.method public setSpansForNodeOptional(Ljava/lang/Class;I)V
    .locals 3
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    .line 270
    .local p1, "node":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    .line 271
    .local v0, "factory":Lio/noties/markwon/SpanFactory;
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    iget-object v2, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    invoke-interface {v0, v1, v2}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpans(ILjava/lang/Object;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V
    .locals 1
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(TN;I)V"
        }
    .end annotation

    .line 265
    .local p1, "node":Lorg/commonmark/node/Node;, "TN;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpansForNodeOptional(Ljava/lang/Class;I)V

    .line 266
    return-void
.end method

.method public visit(Lorg/commonmark/node/BlockQuote;)V
    .locals 0
    .param p1, "blockQuote"    # Lorg/commonmark/node/BlockQuote;

    .line 66
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 67
    return-void
.end method

.method public visit(Lorg/commonmark/node/BulletList;)V
    .locals 0
    .param p1, "bulletList"    # Lorg/commonmark/node/BulletList;

    .line 71
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 72
    return-void
.end method

.method public visit(Lorg/commonmark/node/Code;)V
    .locals 0
    .param p1, "code"    # Lorg/commonmark/node/Code;

    .line 76
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 77
    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomBlock;)V
    .locals 0
    .param p1, "customBlock"    # Lorg/commonmark/node/CustomBlock;

    .line 171
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 172
    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomNode;)V
    .locals 0
    .param p1, "customNode"    # Lorg/commonmark/node/CustomNode;

    .line 176
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 177
    return-void
.end method

.method public visit(Lorg/commonmark/node/Document;)V
    .locals 0
    .param p1, "document"    # Lorg/commonmark/node/Document;

    .line 81
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 82
    return-void
.end method

.method public visit(Lorg/commonmark/node/Emphasis;)V
    .locals 0
    .param p1, "emphasis"    # Lorg/commonmark/node/Emphasis;

    .line 86
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 87
    return-void
.end method

.method public visit(Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 0
    .param p1, "fencedCodeBlock"    # Lorg/commonmark/node/FencedCodeBlock;

    .line 91
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 92
    return-void
.end method

.method public visit(Lorg/commonmark/node/HardLineBreak;)V
    .locals 0
    .param p1, "hardLineBreak"    # Lorg/commonmark/node/HardLineBreak;

    .line 96
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 97
    return-void
.end method

.method public visit(Lorg/commonmark/node/Heading;)V
    .locals 0
    .param p1, "heading"    # Lorg/commonmark/node/Heading;

    .line 101
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 102
    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlBlock;)V
    .locals 0
    .param p1, "htmlBlock"    # Lorg/commonmark/node/HtmlBlock;

    .line 116
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 117
    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlInline;)V
    .locals 0
    .param p1, "htmlInline"    # Lorg/commonmark/node/HtmlInline;

    .line 111
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 112
    return-void
.end method

.method public visit(Lorg/commonmark/node/Image;)V
    .locals 0
    .param p1, "image"    # Lorg/commonmark/node/Image;

    .line 121
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 122
    return-void
.end method

.method public visit(Lorg/commonmark/node/IndentedCodeBlock;)V
    .locals 0
    .param p1, "indentedCodeBlock"    # Lorg/commonmark/node/IndentedCodeBlock;

    .line 126
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 127
    return-void
.end method

.method public visit(Lorg/commonmark/node/Link;)V
    .locals 0
    .param p1, "link"    # Lorg/commonmark/node/Link;

    .line 131
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 132
    return-void
.end method

.method public visit(Lorg/commonmark/node/LinkReferenceDefinition;)V
    .locals 0
    .param p1, "linkReferenceDefinition"    # Lorg/commonmark/node/LinkReferenceDefinition;

    .line 166
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 167
    return-void
.end method

.method public visit(Lorg/commonmark/node/ListItem;)V
    .locals 0
    .param p1, "listItem"    # Lorg/commonmark/node/ListItem;

    .line 136
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 137
    return-void
.end method

.method public visit(Lorg/commonmark/node/OrderedList;)V
    .locals 0
    .param p1, "orderedList"    # Lorg/commonmark/node/OrderedList;

    .line 141
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 142
    return-void
.end method

.method public visit(Lorg/commonmark/node/Paragraph;)V
    .locals 0
    .param p1, "paragraph"    # Lorg/commonmark/node/Paragraph;

    .line 146
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 147
    return-void
.end method

.method public visit(Lorg/commonmark/node/SoftLineBreak;)V
    .locals 0
    .param p1, "softLineBreak"    # Lorg/commonmark/node/SoftLineBreak;

    .line 151
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 152
    return-void
.end method

.method public visit(Lorg/commonmark/node/StrongEmphasis;)V
    .locals 0
    .param p1, "strongEmphasis"    # Lorg/commonmark/node/StrongEmphasis;

    .line 156
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 157
    return-void
.end method

.method public visit(Lorg/commonmark/node/Text;)V
    .locals 0
    .param p1, "text"    # Lorg/commonmark/node/Text;

    .line 161
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 162
    return-void
.end method

.method public visit(Lorg/commonmark/node/ThematicBreak;)V
    .locals 0
    .param p1, "thematicBreak"    # Lorg/commonmark/node/ThematicBreak;

    .line 106
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    .line 107
    return-void
.end method

.method public visitChildren(Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "parent"    # Lorg/commonmark/node/Node;

    .line 209
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 210
    .local v0, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 214
    .local v1, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v0, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 215
    move-object v0, v1

    .line 216
    .end local v1    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method
