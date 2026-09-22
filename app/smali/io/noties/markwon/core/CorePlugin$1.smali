.class Lio/noties/markwon/core/CorePlugin$1;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->text(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/Text;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/core/CorePlugin;


# direct methods
.method constructor <init>(Lio/noties/markwon/core/CorePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lio/noties/markwon/core/CorePlugin;

    .line 211
    iput-object p1, p0, Lio/noties/markwon/core/CorePlugin$1;->this$0:Lio/noties/markwon/core/CorePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 211
    check-cast p2, Lorg/commonmark/node/Text;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$1;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Text;)V

    return-void
.end method

.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Text;)V
    .locals 4
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "text"    # Lorg/commonmark/node/Text;

    .line 215
    invoke-virtual {p2}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "literal":Ljava/lang/String;
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/String;)Lio/noties/markwon/SpannableBuilder;

    .line 220
    iget-object v1, p0, Lio/noties/markwon/core/CorePlugin$1;->this$0:Lio/noties/markwon/core/CorePlugin;

    invoke-static {v1}, Lio/noties/markwon/core/CorePlugin;->access$000(Lio/noties/markwon/core/CorePlugin;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 223
    .local v1, "length":I
    iget-object v2, p0, Lio/noties/markwon/core/CorePlugin$1;->this$0:Lio/noties/markwon/core/CorePlugin;

    invoke-static {v2}, Lio/noties/markwon/core/CorePlugin;->access$000(Lio/noties/markwon/core/CorePlugin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;

    .line 224
    .local v3, "onTextAddedListener":Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
    invoke-interface {v3, p1, v0, v1}, Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;->onTextAdded(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;I)V

    .line 225
    .end local v3    # "onTextAddedListener":Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
    goto :goto_0

    .line 227
    .end local v1    # "length":I
    :cond_0
    return-void
.end method
