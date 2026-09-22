.class Lio/noties/markwon/core/CorePlugin$5;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->code(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/Code;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Code;)V
    .locals 4
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "code"    # Lorg/commonmark/node/Code;

    .line 275
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 279
    .local v0, "length":I
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 280
    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 281
    invoke-virtual {p2}, Lorg/commonmark/node/Code;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/String;)Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 284
    invoke-interface {p1, p2, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 285
    return-void
.end method

.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 271
    check-cast p2, Lorg/commonmark/node/Code;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$5;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Code;)V

    return-void
.end method
