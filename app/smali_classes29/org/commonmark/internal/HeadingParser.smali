.class public Lorg/commonmark/internal/HeadingParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "HeadingParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/HeadingParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/Heading;

.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "content"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 11
    new-instance v0, Lorg/commonmark/node/Heading;

    invoke-direct {v0}, Lorg/commonmark/node/Heading;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Heading;

    .line 15
    invoke-virtual {v0, p1}, Lorg/commonmark/node/Heading;->setLevel(I)V

    .line 16
    iput-object p2, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/HeadingParser;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I

    .line 9
    invoke-static {p0, p1}, Lorg/commonmark/internal/HeadingParser;->getAtxHeading(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/HeadingParser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I

    .line 9
    invoke-static {p0, p1}, Lorg/commonmark/internal/HeadingParser;->getSetextHeadingLevel(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private static getAtxHeading(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/HeadingParser;
    .locals 8
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 70
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x23

    invoke-static {v1, p0, p1, v0}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result v0

    sub-int/2addr v0, p1

    .line 72
    .local v0, "level":I
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    add-int v3, p1, v0

    .line 77
    .local v3, "start":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 79
    new-instance v1, Lorg/commonmark/internal/HeadingParser;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 82
    :cond_1
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 83
    .local v4, "next":C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    .line 84
    return-object v2

    .line 87
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2, v3}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 88
    .local v2, "beforeSpace":I
    invoke-static {v1, p0, v2, v3}, Lorg/commonmark/internal/util/Parsing;->skipBackwards(CLjava/lang/CharSequence;II)I

    move-result v1

    .line 89
    .local v1, "beforeHash":I
    invoke-static {p0, v1, v3}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 90
    .local v5, "beforeTrailer":I
    if-eq v5, v1, :cond_3

    .line 91
    new-instance v6, Lorg/commonmark/internal/HeadingParser;

    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    return-object v6

    .line 93
    :cond_3
    new-instance v6, Lorg/commonmark/internal/HeadingParser;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {p0, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    return-object v6

    .line 73
    .end local v1    # "beforeHash":I
    .end local v2    # "beforeSpace":I
    .end local v3    # "start":I
    .end local v4    # "next":C
    .end local v5    # "beforeTrailer":I
    :cond_4
    :goto_0
    return-object v2
.end method

.method private static getSetextHeadingLevel(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 100
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 102
    :sswitch_0
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lorg/commonmark/internal/HeadingParser;->isSetextHeadingRest(Ljava/lang/CharSequence;IC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    :sswitch_1
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lorg/commonmark/internal/HeadingParser;->isSetextHeadingRest(Ljava/lang/CharSequence;IC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x2

    return v0

    .line 110
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSetextHeadingRest(Ljava/lang/CharSequence;IC)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "marker"    # C

    .line 114
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p0, p1, v0}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result v0

    .line 115
    .local v0, "afterMarker":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 116
    .local v1, "afterSpace":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Heading;

    return-object v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .locals 2
    .param p1, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 32
    iget-object v0, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/lang/String;

    iget-object v1, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Heading;

    invoke-interface {p1, v0, v1}, Lorg/commonmark/parser/InlineParser;->parse(Ljava/lang/String;Lorg/commonmark/node/Node;)V

    .line 33
    return-void
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 1
    .param p1, "parserState"    # Lorg/commonmark/parser/block/ParserState;

    .line 27
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
