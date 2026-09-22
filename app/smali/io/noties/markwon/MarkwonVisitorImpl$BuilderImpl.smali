.class Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;
.super Ljava/lang/Object;
.source "MarkwonVisitorImpl.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonVisitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderImpl"
.end annotation


# instance fields
.field private blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;->nodes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blockHandler(Lio/noties/markwon/MarkwonVisitor$BlockHandler;)Lio/noties/markwon/MarkwonVisitor$Builder;
    .locals 0
    .param p1, "blockHandler"    # Lio/noties/markwon/MarkwonVisitor$BlockHandler;

    .line 312
    iput-object p1, p0, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;->blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

    .line 313
    return-object p0
.end method

.method public build(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Lio/noties/markwon/MarkwonVisitor;
    .locals 8
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "renderProps"    # Lio/noties/markwon/RenderProps;

    .line 320
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;->blockHandler:Lio/noties/markwon/MarkwonVisitor$BlockHandler;

    .line 321
    .local v0, "blockHandler":Lio/noties/markwon/MarkwonVisitor$BlockHandler;
    if-nez v0, :cond_0

    .line 322
    new-instance v1, Lio/noties/markwon/BlockHandlerDef;

    invoke-direct {v1}, Lio/noties/markwon/BlockHandlerDef;-><init>()V

    move-object v0, v1

    .line 325
    :cond_0
    new-instance v7, Lio/noties/markwon/MarkwonVisitorImpl;

    new-instance v4, Lio/noties/markwon/SpannableBuilder;

    invoke-direct {v4}, Lio/noties/markwon/SpannableBuilder;-><init>()V

    iget-object v1, p0, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;->nodes:Ljava/util/Map;

    .line 329
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lio/noties/markwon/MarkwonVisitorImpl;-><init>(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;Lio/noties/markwon/SpannableBuilder;Ljava/util/Map;Lio/noties/markwon/MarkwonVisitor$BlockHandler;)V

    .line 325
    return-object v7
.end method

.method public on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
            "-TN;>;)",
            "Lio/noties/markwon/MarkwonVisitor$Builder;"
        }
    .end annotation

    .line 301
    .local p1, "node":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    .local p2, "nodeVisitor":Lio/noties/markwon/MarkwonVisitor$NodeVisitor;, "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<-TN;>;"
    if-nez p2, :cond_0

    .line 302
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :goto_0
    return-object p0
.end method
