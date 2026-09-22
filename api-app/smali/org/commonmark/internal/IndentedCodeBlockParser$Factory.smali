.class public Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/IndentedCodeBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 2

    .line 63
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result p2

    sget v0, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object p2

    invoke-interface {p2}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object p2

    instance-of p2, p2, Lorg/commonmark/node/Paragraph;

    if-nez p2, :cond_0

    .line 64
    new-instance p2, Lorg/commonmark/internal/IndentedCodeBlockParser;

    invoke-direct {p2}, Lorg/commonmark/internal/IndentedCodeBlockParser;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/commonmark/parser/block/BlockParser;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p2

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result p1

    sget v0, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1
.end method
