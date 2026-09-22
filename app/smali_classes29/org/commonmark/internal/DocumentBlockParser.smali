.class public Lorg/commonmark/internal/DocumentBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "DocumentBlockParser.java"


# instance fields
.field private final document:Lorg/commonmark/node/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 11
    new-instance v0, Lorg/commonmark/node/Document;

    invoke-direct {v0}, Lorg/commonmark/node/Document;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentBlockParser;->document:Lorg/commonmark/node/Document;

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/CharSequence;

    .line 35
    return-void
.end method

.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 1
    .param p1, "block"    # Lorg/commonmark/node/Block;

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentBlockParser;->getBlock()Lorg/commonmark/node/Document;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lorg/commonmark/node/Document;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/commonmark/internal/DocumentBlockParser;->document:Lorg/commonmark/node/Document;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 1
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 30
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v0

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
