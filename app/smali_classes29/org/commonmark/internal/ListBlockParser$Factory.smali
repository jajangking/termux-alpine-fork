.class public Lorg/commonmark/internal/ListBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "ListBlockParser.java"


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
    .locals 11
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 206
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    .line 208
    .local v0, "matched":Lorg/commonmark/parser/block/BlockParser;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v1

    sget v2, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt v1, v2, :cond_0

    .line 209
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v1

    return-object v1

    .line 211
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v1

    .line 212
    .local v1, "markerIndex":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v2

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v3

    add-int/2addr v2, v3

    .line 213
    .local v2, "markerColumn":I
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getParagraphContent()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 214
    .local v3, "inParagraph":Z
    :goto_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v1, v2, v3}, Lorg/commonmark/internal/ListBlockParser;->access$000(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;

    move-result-object v6

    .line 215
    .local v6, "listData":Lorg/commonmark/internal/ListBlockParser$ListData;
    if-nez v6, :cond_2

    .line 216
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4

    .line 219
    :cond_2
    iget v7, v6, Lorg/commonmark/internal/ListBlockParser$ListData;->contentColumn:I

    .line 220
    .local v7, "newColumn":I
    new-instance v8, Lorg/commonmark/internal/ListItemParser;

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v9

    sub-int v9, v7, v9

    invoke-direct {v8, v9}, Lorg/commonmark/internal/ListItemParser;-><init>(I)V

    .line 223
    .local v8, "listItemParser":Lorg/commonmark/internal/ListItemParser;
    instance-of v9, v0, Lorg/commonmark/internal/ListBlockParser;

    if-eqz v9, :cond_4

    .line 224
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v9

    check-cast v9, Lorg/commonmark/node/ListBlock;

    iget-object v10, v6, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-static {v9, v10}, Lorg/commonmark/internal/ListBlockParser;->access$100(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 232
    :cond_3
    new-array v5, v5, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v8, v5, v4

    invoke-static {v5}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4

    .line 226
    :cond_4
    :goto_1
    new-instance v9, Lorg/commonmark/internal/ListBlockParser;

    iget-object v10, v6, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-direct {v9, v10}, Lorg/commonmark/internal/ListBlockParser;-><init>(Lorg/commonmark/node/ListBlock;)V

    .line 228
    .local v9, "listBlockParser":Lorg/commonmark/internal/ListBlockParser;
    iget-object v10, v6, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-virtual {v10, v5}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    .line 230
    const/4 v10, 0x2

    new-array v10, v10, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v9, v10, v4

    aput-object v8, v10, v5

    invoke-static {v10}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4
.end method
