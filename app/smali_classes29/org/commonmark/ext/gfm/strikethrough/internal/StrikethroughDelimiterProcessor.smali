.class public Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;
.super Ljava/lang/Object;
.source "StrikethroughDelimiterProcessor.java"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClosingCharacter()C
    .locals 1

    .line 18
    const/16 v0, 0x7e

    return v0
.end method

.method public getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
    .locals 2
    .param p1, "opener"    # Lorg/commonmark/parser/delimiter/DelimiterRun;
    .param p2, "closer"    # Lorg/commonmark/parser/delimiter/DelimiterRun;

    .line 28
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 30
    return v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 23
    const/4 v0, 0x2

    return v0
.end method

.method public getOpeningCharacter()C
    .locals 1

    .line 13
    const/16 v0, 0x7e

    return v0
.end method

.method public process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 3
    .param p1, "opener"    # Lorg/commonmark/node/Text;
    .param p2, "closer"    # Lorg/commonmark/node/Text;
    .param p3, "delimiterCount"    # I

    .line 39
    new-instance v0, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    invoke-direct {v0}, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;-><init>()V

    .line 41
    .local v0, "strikethrough":Lorg/commonmark/node/Node;
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 42
    .local v1, "tmp":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, p2, :cond_0

    .line 43
    invoke-virtual {v1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v2

    .line 44
    .local v2, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v0, v1}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 45
    move-object v1, v2

    .line 46
    .end local v2    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, v0}, Lorg/commonmark/node/Text;->insertAfter(Lorg/commonmark/node/Node;)V

    .line 49
    return-void
.end method
