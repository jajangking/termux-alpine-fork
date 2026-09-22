.class public abstract Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;
.super Ljava/lang/Object;
.source "EmphasisDelimiterProcessor.java"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# instance fields
.field private final delimiterChar:C


# direct methods
.method protected constructor <init>(C)V
    .locals 0
    .param p1, "delimiterChar"    # C

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-char p1, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    .line 16
    return-void
.end method


# virtual methods
.method public getClosingCharacter()C
    .locals 1

    .line 25
    iget-char v0, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return v0
.end method

.method public getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
    .locals 2
    .param p1, "opener"    # Lorg/commonmark/parser/delimiter/DelimiterRun;
    .param p2, "closer"    # Lorg/commonmark/parser/delimiter/DelimiterRun;

    .line 36
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->canClose()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->canOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 43
    return v1

    .line 45
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getOpeningCharacter()C
    .locals 1

    .line 20
    iget-char v0, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return v0
.end method

.method public process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 4
    .param p1, "opener"    # Lorg/commonmark/node/Text;
    .param p2, "closer"    # Lorg/commonmark/node/Text;
    .param p3, "delimiterUse"    # I

    .line 51
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->getOpeningCharacter()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "singleDelimiter":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    new-instance v1, Lorg/commonmark/node/Emphasis;

    invoke-direct {v1, v0}, Lorg/commonmark/node/Emphasis;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/commonmark/node/StrongEmphasis;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/commonmark/node/StrongEmphasis;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "emphasis":Lorg/commonmark/node/Node;
    :goto_0
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v2

    .line 57
    .local v2, "tmp":Lorg/commonmark/node/Node;
    :goto_1
    if-eqz v2, :cond_1

    if-eq v2, p2, :cond_1

    .line 58
    invoke-virtual {v2}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v3

    .line 59
    .local v3, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v1, v2}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 60
    move-object v2, v3

    .line 61
    .end local v3    # "next":Lorg/commonmark/node/Node;
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1, v1}, Lorg/commonmark/node/Text;->insertAfter(Lorg/commonmark/node/Node;)V

    .line 64
    return-void
.end method
