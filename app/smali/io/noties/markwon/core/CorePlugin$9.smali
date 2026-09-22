.class Lio/noties/markwon/core/CorePlugin$9;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/ListItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/ListItem;)V
    .locals 6
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "listItem"    # Lorg/commonmark/node/ListItem;

    .line 394
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 399
    .local v0, "length":I
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 401
    invoke-virtual {p2}, Lorg/commonmark/node/ListItem;->getParent()Lorg/commonmark/node/Block;

    move-result-object v1

    .line 402
    .local v1, "parent":Lorg/commonmark/node/Node;
    instance-of v2, v1, Lorg/commonmark/node/OrderedList;

    if-eqz v2, :cond_0

    .line 404
    move-object v2, v1

    check-cast v2, Lorg/commonmark/node/OrderedList;

    invoke-virtual {v2}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result v2

    .line 406
    .local v2, "start":I
    sget-object v3, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v4

    sget-object v5, Lio/noties/markwon/core/CoreProps$ListItemType;->ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-virtual {v3, v4, v5}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 407
    sget-object v3, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 410
    move-object v3, v1

    check-cast v3, Lorg/commonmark/node/OrderedList;

    .line 411
    .local v3, "orderedList":Lorg/commonmark/node/OrderedList;
    invoke-virtual {v3}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/commonmark/node/OrderedList;->setStartNumber(I)V

    .line 413
    .end local v2    # "start":I
    .end local v3    # "orderedList":Lorg/commonmark/node/OrderedList;
    goto :goto_0

    .line 414
    :cond_0
    sget-object v2, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v3

    sget-object v4, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-virtual {v2, v3, v4}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 415
    sget-object v2, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v3

    invoke-static {p2}, Lio/noties/markwon/core/CorePlugin;->access$100(Lorg/commonmark/node/Node;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 418
    :goto_0
    invoke-interface {p1, p2, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 420
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->hasNext(Lorg/commonmark/node/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 423
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 390
    check-cast p2, Lorg/commonmark/node/ListItem;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$9;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/ListItem;)V

    return-void
.end method
