.class public Lorg/commonmark/internal/ListBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/ListBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v2

    .line 208
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v3

    sget v4, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt v3, v4, :cond_0

    .line 209
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v3

    .line 212
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v4

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v5

    add-int/2addr v4, v5

    .line 213
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getParagraphContent()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 214
    :goto_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v3, v4, p2}, Lorg/commonmark/internal/ListBlockParser;->access$000(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;

    move-result-object p2

    if-nez p2, :cond_2

    .line 216
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 219
    :cond_2
    iget v3, p2, Lorg/commonmark/internal/ListBlockParser$ListData;->contentColumn:I

    .line 220
    new-instance v4, Lorg/commonmark/internal/ListItemParser;

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result p1

    sub-int p1, v3, p1

    invoke-direct {v4, p1}, Lorg/commonmark/internal/ListItemParser;-><init>(I)V

    .line 223
    instance-of p1, v2, Lorg/commonmark/internal/ListBlockParser;

    if-eqz p1, :cond_4

    .line 224
    invoke-interface {v2}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object p1

    check-cast p1, Lorg/commonmark/node/ListBlock;

    iget-object v2, p2, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-static {p1, v2}, Lorg/commonmark/internal/ListBlockParser;->access$100(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 232
    :cond_3
    new-array p1, v1, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v4, p1, v0

    invoke-static {p1}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 226
    :cond_4
    :goto_1
    new-instance p1, Lorg/commonmark/internal/ListBlockParser;

    iget-object v2, p2, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-direct {p1, v2}, Lorg/commonmark/internal/ListBlockParser;-><init>(Lorg/commonmark/node/ListBlock;)V

    .line 228
    iget-object p2, p2, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-virtual {p2, v1}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    const/4 p2, 0x2

    .line 230
    new-array p2, p2, [Lorg/commonmark/parser/block/BlockParser;

    aput-object p1, p2, v0

    aput-object v4, p2, v1

    invoke-static {p2}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1
.end method
