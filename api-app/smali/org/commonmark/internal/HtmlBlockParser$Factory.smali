.class public Lorg/commonmark/internal/HtmlBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/HtmlBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v2

    .line 110
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object v3

    .line 112
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_2

    move v4, v1

    :goto_0
    const/4 v5, 0x7

    if-gt v4, v5, :cond_2

    if-ne v4, v5, :cond_0

    .line 115
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v5

    invoke-interface {v5}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v5

    instance-of v5, v5, Lorg/commonmark/node/Paragraph;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    invoke-static {}, Lorg/commonmark/internal/HtmlBlockParser;->access$000()[[Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v5, v5, v0

    .line 119
    invoke-static {}, Lorg/commonmark/internal/HtmlBlockParser;->access$000()[[Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    .line 120
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v3, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    new-instance p2, Lorg/commonmark/internal/HtmlBlockParser;

    const/4 v2, 0x0

    invoke-direct {p2, v6, v2}, Lorg/commonmark/internal/HtmlBlockParser;-><init>(Ljava/util/regex/Pattern;Lorg/commonmark/internal/HtmlBlockParser$1;)V

    new-array v1, v1, [Lorg/commonmark/parser/block/BlockParser;

    aput-object p2, v1, v0

    invoke-static {v1}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p2

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    add-int/2addr v4, v1

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1
.end method
