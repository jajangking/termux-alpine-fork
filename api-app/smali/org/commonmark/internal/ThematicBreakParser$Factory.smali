.class public Lorg/commonmark/internal/ThematicBreakParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/ThematicBreakParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 2

    .line 26
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 27
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result p2

    .line 30
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object p1

    .line 31
    invoke-static {p1, p2}, Lorg/commonmark/internal/ThematicBreakParser;->access$000(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 32
    new-instance p2, Lorg/commonmark/internal/ThematicBreakParser;

    invoke-direct {p2}, Lorg/commonmark/internal/ThematicBreakParser;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/commonmark/parser/block/BlockParser;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1

    .line 34
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object p1

    return-object p1
.end method
