.class Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;
.super Ljava/lang/Object;
.source "DocumentParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/MatchedBlockParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/DocumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchedBlockParserImpl"
.end annotation


# instance fields
.field private final matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;


# direct methods
.method public constructor <init>(Lorg/commonmark/parser/block/BlockParser;)V
    .locals 0
    .param p1, "matchedBlockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;->matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;

    .line 490
    return-void
.end method


# virtual methods
.method public getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;->matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;

    return-object v0
.end method

.method public getParagraphContent()Ljava/lang/CharSequence;
    .locals 4

    .line 499
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;->matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;

    instance-of v1, v0, Lorg/commonmark/internal/ParagraphParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 500
    check-cast v0, Lorg/commonmark/internal/ParagraphParser;

    .line 501
    .local v0, "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    invoke-virtual {v0}, Lorg/commonmark/internal/ParagraphParser;->getContentString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 502
    .local v1, "content":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 503
    return-object v2

    .line 506
    :cond_0
    return-object v1

    .line 508
    .end local v0    # "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    .end local v1    # "content":Ljava/lang/CharSequence;
    :cond_1
    return-object v2
.end method
