.class public abstract Lorg/commonmark/parser/block/AbstractBlockParser;
.super Ljava/lang/Object;
.source "AbstractBlockParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/BlockParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/CharSequence;

    .line 25
    return-void
.end method

.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 1
    .param p1, "childBlock"    # Lorg/commonmark/node/Block;

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public canHaveLazyContinuationLines()Z
    .locals 1

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public closeBlock()V
    .locals 0

    .line 29
    return-void
.end method

.method public isContainer()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .locals 0
    .param p1, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 33
    return-void
.end method
