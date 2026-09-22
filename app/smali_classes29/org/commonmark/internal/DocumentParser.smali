.class public Lorg/commonmark/internal/DocumentParser;
.super Ljava/lang/Object;
.source "DocumentParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/ParserState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;
    }
.end annotation


# static fields
.field private static final CORE_FACTORY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NODES_TO_CORE_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeBlockParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;"
        }
    .end annotation
.end field

.field private allBlockParsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;"
        }
    .end annotation
.end field

.field private blank:Z

.field private final blockParserFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field

.field private column:I

.field private columnIsInTab:Z

.field private final definitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final delimiterProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

.field private indent:I

.field private index:I

.field private final inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

.field private line:Ljava/lang/CharSequence;

.field private nextNonSpace:I

.field private nextNonSpaceColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/commonmark/node/BlockQuote;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/commonmark/node/Heading;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/commonmark/node/FencedCodeBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/commonmark/node/HtmlBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/commonmark/node/ThematicBreak;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/commonmark/node/ListBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lorg/commonmark/node/IndentedCodeBlock;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;Lorg/commonmark/parser/block/BlockParserFactory;>;"
    const-class v1, Lorg/commonmark/node/BlockQuote;

    new-instance v2, Lorg/commonmark/internal/BlockQuoteParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/BlockQuoteParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v1, Lorg/commonmark/node/Heading;

    new-instance v2, Lorg/commonmark/internal/HeadingParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v1, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v2, Lorg/commonmark/internal/FencedCodeBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/FencedCodeBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v1, Lorg/commonmark/node/HtmlBlock;

    new-instance v2, Lorg/commonmark/internal/HtmlBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/HtmlBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v1, Lorg/commonmark/node/ThematicBreak;

    new-instance v2, Lorg/commonmark/internal/ThematicBreakParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/ThematicBreakParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v1, Lorg/commonmark/node/ListBlock;

    new-instance v2, Lorg/commonmark/internal/ListBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/ListBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v1, Lorg/commonmark/node/IndentedCodeBlock;

    new-instance v2, Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    .line 38
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;Lorg/commonmark/parser/block/BlockParserFactory;>;"
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/commonmark/parser/InlineParserFactory;Ljava/util/List;)V
    .locals 1
    .param p2, "inlineParserFactory"    # Lorg/commonmark/parser/InlineParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;",
            "Lorg/commonmark/parser/InlineParserFactory;",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "blockParserFactories":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParserFactory;>;"
    .local p3, "delimiterProcessors":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 51
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 58
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 59
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 60
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    .line 75
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    .line 77
    iput-object p3, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    .line 79
    new-instance v0, Lorg/commonmark/internal/DocumentBlockParser;

    invoke-direct {v0}, Lorg/commonmark/internal/DocumentBlockParser;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    .line 80
    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->activateBlockParser(Lorg/commonmark/parser/block/BlockParser;)V

    .line 81
    return-void
.end method

.method private activateBlockParser(Lorg/commonmark/parser/block/BlockParser;)V
    .locals 1
    .param p1, "blockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 442
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method private addChild(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 431
    .local p1, "blockParser":Lorg/commonmark/parser/block/BlockParser;, "TT;"
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/commonmark/parser/block/BlockParser;->canContain(Lorg/commonmark/node/Block;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/Block;->appendChild(Lorg/commonmark/node/Node;)V

    .line 436
    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->activateBlockParser(Lorg/commonmark/parser/block/BlockParser;)V

    .line 438
    return-object p1
.end method

.method private addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V
    .locals 4
    .param p1, "paragraphParser"    # Lorg/commonmark/internal/ParagraphParser;

    .line 402
    invoke-virtual {p1}, Lorg/commonmark/internal/ParagraphParser;->getDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/node/LinkReferenceDefinition;

    .line 404
    .local v1, "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    invoke-virtual {p1}, Lorg/commonmark/internal/ParagraphParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/commonmark/node/Block;->insertBefore(Lorg/commonmark/node/Node;)V

    .line 406
    invoke-virtual {v1}, Lorg/commonmark/node/LinkReferenceDefinition;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "label":Ljava/lang/String;
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .end local v1    # "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    return-void
.end method

.method private addLine()V
    .locals 6

    .line 356
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    if-eqz v0, :cond_1

    .line 358
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 359
    .local v0, "afterTab":I
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    .local v1, "rest":Ljava/lang/CharSequence;
    iget v2, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    invoke-static {v2}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v2

    .line 361
    .local v2, "spaces":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 363
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .end local v1    # "rest":Ljava/lang/CharSequence;
    .end local v2    # "spaces":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v0, "content":Ljava/lang/CharSequence;
    goto :goto_1

    .line 368
    .end local v0    # "content":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 370
    .restart local v0    # "content":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/commonmark/parser/block/BlockParser;->addLine(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method private advance()V
    .locals 3

    .line 340
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 341
    .local v0, "c":C
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 342
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 343
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    invoke-static {v1}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    goto :goto_0

    .line 345
    :cond_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 346
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 348
    :goto_0
    return-void
.end method

.method public static calculateBlockParserFactories(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "customBlockParserFactories":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParserFactory;>;"
    .local p1, "enabledBlockTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParserFactory;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 92
    .local v2, "blockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    sget-object v3, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "blockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    goto :goto_0

    .line 94
    :cond_0
    return-object v0
.end method

.method private deactivateBlockParser()V
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method private finalize(Lorg/commonmark/parser/block/BlockParser;)V
    .locals 1
    .param p1, "blockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 390
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 391
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->deactivateBlockParser()V

    .line 394
    :cond_0
    instance-of v0, p1, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v0, :cond_1

    .line 395
    move-object v0, p1

    check-cast v0, Lorg/commonmark/internal/ParagraphParser;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 398
    :cond_1
    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->closeBlock()V

    .line 399
    return-void
.end method

.method private finalizeAndProcess()Lorg/commonmark/node/Document;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 480
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->processInlines()V

    .line 481
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentBlockParser;->getBlock()Lorg/commonmark/node/Document;

    move-result-object v0

    return-object v0
.end method

.method private finalizeBlocks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p1, "blockParsers":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParser;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/block/BlockParser;

    .line 474
    .local v1, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    .line 472
    .end local v1    # "blockParser":Lorg/commonmark/parser/block/BlockParser;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 476
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private findBlockStart(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/internal/BlockStartImpl;
    .locals 5
    .param p1, "blockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 374
    new-instance v0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;

    invoke-direct {v0, p1}, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;-><init>(Lorg/commonmark/parser/block/BlockParser;)V

    .line 375
    .local v0, "matchedBlockParser":Lorg/commonmark/parser/block/MatchedBlockParser;
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/block/BlockParserFactory;

    .line 376
    .local v2, "blockParserFactory":Lorg/commonmark/parser/block/BlockParserFactory;
    invoke-interface {v2, p0, v0}, Lorg/commonmark/parser/block/BlockParserFactory;->tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    .line 377
    .local v3, "result":Lorg/commonmark/parser/block/BlockStart;
    instance-of v4, v3, Lorg/commonmark/internal/BlockStartImpl;

    if-eqz v4, :cond_0

    .line 378
    move-object v1, v3

    check-cast v1, Lorg/commonmark/internal/BlockStartImpl;

    return-object v1

    .line 380
    .end local v2    # "blockParserFactory":Lorg/commonmark/parser/block/BlockParserFactory;
    .end local v3    # "result":Lorg/commonmark/parser/block/BlockStart;
    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNextNonSpace()V
    .locals 5

    .line 279
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 280
    .local v0, "i":I
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 282
    .local v1, "cols":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 283
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 284
    .local v2, "length":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 285
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 286
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 296
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 297
    goto :goto_1

    .line 288
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 289
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto :goto_0

    .line 292
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 293
    rem-int/lit8 v4, v1, 0x4

    rsub-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    .line 294
    goto :goto_0

    .line 300
    .end local v3    # "c":C
    :cond_0
    :goto_1
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 301
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 302
    iget v3, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    sub-int v3, v1, v3

    iput v3, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 303
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefaultBlockParserTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method private incorporateLine(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "ln"    # Ljava/lang/CharSequence;

    .line 176
    invoke-static {p1}, Lorg/commonmark/internal/util/Parsing;->prepareLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 178
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 179
    iput-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 185
    const/4 v1, 0x1

    .line 186
    .local v1, "matches":I
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/block/BlockParser;

    .line 187
    .local v3, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 189
    invoke-interface {v3, p0}, Lorg/commonmark/parser/block/BlockParser;->tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v6

    .line 190
    .local v6, "result":Lorg/commonmark/parser/block/BlockContinue;
    instance-of v7, v6, Lorg/commonmark/internal/BlockContinueImpl;

    if-eqz v7, :cond_3

    .line 191
    move-object v7, v6

    check-cast v7, Lorg/commonmark/internal/BlockContinueImpl;

    .line 192
    .local v7, "blockContinue":Lorg/commonmark/internal/BlockContinueImpl;
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->isFinalize()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    invoke-direct {p0, v3}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewIndex()I

    move-result v8

    if-eq v8, v5, :cond_1

    .line 197
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewColumn()I

    move-result v8

    if-eq v8, v5, :cond_2

    .line 199
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewColumn()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 201
    :cond_2
    :goto_1
    nop

    .end local v3    # "blockParser":Lorg/commonmark/parser/block/BlockParser;
    .end local v6    # "result":Lorg/commonmark/parser/block/BlockContinue;
    .end local v7    # "blockContinue":Lorg/commonmark/internal/BlockContinueImpl;
    add-int/lit8 v1, v1, 0x1

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v2, "unmatchedBlockParsers":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParser;>;"
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/block/BlockParser;

    .line 210
    .local v3, "lastMatchedBlockParser":Lorg/commonmark/parser/block/BlockParser;
    move-object v6, v3

    .line 211
    .local v6, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    .line 215
    .local v7, "allClosed":Z
    invoke-interface {v6}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v8

    instance-of v8, v8, Lorg/commonmark/node/Paragraph;

    if-nez v8, :cond_5

    invoke-interface {v6}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v4, v0

    .line 216
    .local v4, "tryBlockStarts":Z
    :cond_5
    :goto_2
    if-eqz v4, :cond_e

    .line 217
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 220
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v8

    if-nez v8, :cond_d

    iget v8, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    sget v9, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    iget v9, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-static {v8, v9}, Lorg/commonmark/internal/util/Parsing;->isLetter(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    .line 225
    :cond_6
    invoke-direct {p0, v6}, Lorg/commonmark/internal/DocumentParser;->findBlockStart(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/internal/BlockStartImpl;

    move-result-object v8

    .line 226
    .local v8, "blockStart":Lorg/commonmark/internal/BlockStartImpl;
    if-nez v8, :cond_7

    .line 227
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 228
    goto :goto_6

    .line 231
    :cond_7
    if-nez v7, :cond_8

    .line 232
    invoke-direct {p0, v2}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 233
    const/4 v7, 0x1

    .line 236
    :cond_8
    invoke-virtual {v8}, Lorg/commonmark/internal/BlockStartImpl;->getNewIndex()I

    move-result v9

    if-eq v9, v5, :cond_9

    .line 237
    invoke-virtual {v8}, Lorg/commonmark/internal/BlockStartImpl;->getNewIndex()I

    move-result v9

    invoke-direct {p0, v9}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_3

    .line 238
    :cond_9
    invoke-virtual {v8}, Lorg/commonmark/internal/BlockStartImpl;->getNewColumn()I

    move-result v9

    if-eq v9, v5, :cond_a

    .line 239
    invoke-virtual {v8}, Lorg/commonmark/internal/BlockStartImpl;->getNewColumn()I

    move-result v9

    invoke-direct {p0, v9}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 242
    :cond_a
    :goto_3
    invoke-virtual {v8}, Lorg/commonmark/internal/BlockStartImpl;->isReplaceActiveBlockParser()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 243
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->prepareActiveBlockParserForReplacement()V

    .line 246
    :cond_b
    invoke-virtual {v8}, Lorg/commonmark/internal/BlockStartImpl;->getBlockParsers()[Lorg/commonmark/parser/block/BlockParser;

    move-result-object v9

    array-length v10, v9

    move v11, v0

    :goto_4
    if-ge v11, v10, :cond_c

    aget-object v12, v9, v11

    .line 247
    .local v12, "newBlockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-direct {p0, v12}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v6

    .line 248
    invoke-interface {v12}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v4

    .line 246
    .end local v12    # "newBlockParser":Lorg/commonmark/parser/block/BlockParser;
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 250
    .end local v8    # "blockStart":Lorg/commonmark/internal/BlockStartImpl;
    :cond_c
    goto :goto_2

    .line 221
    :cond_d
    :goto_5
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 256
    :cond_e
    :goto_6
    if-nez v7, :cond_f

    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v0

    if-nez v0, :cond_f

    .line 257
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->canHaveLazyContinuationLines()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    goto :goto_7

    .line 264
    :cond_f
    if-nez v7, :cond_10

    .line 265
    invoke-direct {p0, v2}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 268
    :cond_10
    invoke-interface {v6}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v0

    if-nez v0, :cond_11

    .line 269
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    goto :goto_7

    .line 270
    :cond_11
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v0

    if-nez v0, :cond_12

    .line 272
    new-instance v0, Lorg/commonmark/internal/ParagraphParser;

    invoke-direct {v0}, Lorg/commonmark/internal/ParagraphParser;-><init>()V

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockParser;

    .line 273
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    .line 276
    :cond_12
    :goto_7
    return-void
.end method

.method private prepareActiveBlockParserForReplacement()V
    .locals 2

    .line 451
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    .line 452
    .local v0, "old":Lorg/commonmark/parser/block/BlockParser;
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->deactivateBlockParser()V

    .line 453
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 455
    instance-of v1, v0, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v1, :cond_0

    .line 456
    move-object v1, v0

    check-cast v1, Lorg/commonmark/internal/ParagraphParser;

    .line 462
    .local v1, "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 465
    .end local v1    # "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    :cond_0
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/node/Block;->unlink()V

    .line 466
    return-void
.end method

.method private processInlines()V
    .locals 4

    .line 418
    new-instance v0, Lorg/commonmark/internal/InlineParserContextImpl;

    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/commonmark/internal/InlineParserContextImpl;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 419
    .local v0, "context":Lorg/commonmark/internal/InlineParserContextImpl;
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    invoke-interface {v1, v0}, Lorg/commonmark/parser/InlineParserFactory;->create(Lorg/commonmark/parser/InlineParserContext;)Lorg/commonmark/parser/InlineParser;

    move-result-object v1

    .line 421
    .local v1, "inlineParser":Lorg/commonmark/parser/InlineParser;
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/block/BlockParser;

    .line 422
    .local v3, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-interface {v3, v1}, Lorg/commonmark/parser/block/BlockParser;->parseInlines(Lorg/commonmark/parser/InlineParser;)V

    .line 423
    .end local v3    # "blockParser":Lorg/commonmark/parser/block/BlockParser;
    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method private setNewColumn(I)V
    .locals 3
    .param p1, "newColumn"    # I

    .line 320
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    if-lt p1, v0, :cond_0

    .line 322
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 323
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 326
    .local v0, "length":I
    :goto_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    if-ge v1, p1, :cond_1

    iget v2, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-eq v2, v0, :cond_1

    .line 327
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    goto :goto_0

    .line 329
    :cond_1
    if-le v1, p1, :cond_2

    .line 331
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 332
    iput p1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 333
    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    goto :goto_1

    .line 335
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 337
    :goto_1
    return-void
.end method

.method private setNewIndex(I)V
    .locals 2
    .param p1, "newIndex"    # I

    .line 306
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    if-lt p1, v0, :cond_0

    .line 308
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 309
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 312
    .local v0, "length":I
    :goto_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-ge v1, p1, :cond_1

    if-eq v1, v0, :cond_1

    .line 313
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    goto :goto_0

    .line 316
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 317
    return-void
.end method


# virtual methods
.method public getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/block/BlockParser;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    return v0
.end method

.method public getIndent()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    return v0
.end method

.method public getLine()Ljava/lang/CharSequence;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNextNonSpaceIndex()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    return v0
.end method

.method public isBlank()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    return v0
.end method

.method public parse(Ljava/io/Reader;)Lorg/commonmark/node/Document;
    .locals 3
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 123
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedReader;

    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 125
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 129
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0, v2}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->finalizeAndProcess()Lorg/commonmark/node/Document;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lorg/commonmark/node/Document;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "lineStart":I
    :goto_0
    invoke-static {p1, v0}, Lorg/commonmark/internal/util/Parsing;->findLineBreak(Ljava/lang/CharSequence;I)I

    move-result v1

    move v2, v1

    .local v2, "lineBreak":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 104
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/CharSequence;)V

    .line 106
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 107
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 109
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 111
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 113
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/CharSequence;)V

    .line 117
    .end local v1    # "line":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->finalizeAndProcess()Lorg/commonmark/node/Document;

    move-result-object v1

    return-object v1
.end method
