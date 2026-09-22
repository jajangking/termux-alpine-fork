.class public Lorg/commonmark/internal/BlockQuoteParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/BlockQuoteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 3

    const/4 p2, 0x1

    .line 49
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    .line 50
    invoke-static {p1, v0}, Lorg/commonmark/internal/BlockQuoteParser;->access$000(Lorg/commonmark/parser/block/ParserState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v1

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 53
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object p1

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lorg/commonmark/internal/util/Parsing;->isSpaceOrTab(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 56
    :cond_0
    new-instance p1, Lorg/commonmark/internal/BlockQuoteParser;

    invoke-direct {p1}, Lorg/commonmark/internal/BlockQuoteParser;-><init>()V

    new-array p2, p2, [Lorg/commonmark/parser/block/BlockParser;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1
.end method
