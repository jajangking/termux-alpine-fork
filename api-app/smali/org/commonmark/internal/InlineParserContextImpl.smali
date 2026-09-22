.class public Lorg/commonmark/internal/InlineParserContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/commonmark/parser/InlineParserContext;


# instance fields
.field private final delimiterProcessors:Ljava/util/List;

.field private final linkReferenceDefinitions:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserContextImpl;->delimiterProcessors:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lorg/commonmark/internal/InlineParserContextImpl;->linkReferenceDefinitions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCustomDelimiterProcessors()Ljava/util/List;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserContextImpl;->delimiterProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getLinkReferenceDefinition(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserContextImpl;->linkReferenceDefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/commonmark/node/LinkReferenceDefinition;

    return-object p1
.end method
