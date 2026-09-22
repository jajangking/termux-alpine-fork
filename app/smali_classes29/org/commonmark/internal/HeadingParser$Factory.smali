.class public Lorg/commonmark/internal/HeadingParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "HeadingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/HeadingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 9
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 39
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v0

    sget v1, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt v0, v1, :cond_0

    .line 40
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    .local v0, "line":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v1

    .line 45
    .local v1, "nextNonSpace":I
    invoke-static {v0, v1}, Lorg/commonmark/internal/HeadingParser;->access$000(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/HeadingParser;

    move-result-object v2

    .line 46
    .local v2, "atxHeading":Lorg/commonmark/internal/HeadingParser;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 47
    new-array v4, v4, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v2, v4, v3

    invoke-static {v4}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    return-object v3

    .line 50
    :cond_1
    invoke-static {v0, v1}, Lorg/commonmark/internal/HeadingParser;->access$100(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 51
    .local v5, "setextHeadingLevel":I
    if-lez v5, :cond_2

    .line 52
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getParagraphContent()Ljava/lang/CharSequence;

    move-result-object v6

    .line 53
    .local v6, "paragraph":Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    .line 54
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "content":Ljava/lang/String;
    new-array v4, v4, [Lorg/commonmark/parser/block/BlockParser;

    new-instance v8, Lorg/commonmark/internal/HeadingParser;

    invoke-direct {v8, v5, v7}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    aput-object v8, v4, v3

    invoke-static {v4}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    .line 56
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lorg/commonmark/parser/block/BlockStart;->replaceActiveBlockParser()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    .line 55
    return-object v3

    .line 61
    .end local v6    # "paragraph":Ljava/lang/CharSequence;
    .end local v7    # "content":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    return-object v3
.end method
