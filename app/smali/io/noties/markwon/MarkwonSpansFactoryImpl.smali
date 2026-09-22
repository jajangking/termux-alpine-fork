.class Lio/noties/markwon/MarkwonSpansFactoryImpl;
.super Ljava/lang/Object;
.source "MarkwonSpansFactoryImpl.java"

# interfaces
.implements Lio/noties/markwon/MarkwonSpansFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;,
        Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;
    }
.end annotation


# instance fields
.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/SpanFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/SpanFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/commonmark/node/Node;>;Lio/noties/markwon/SpanFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl;->factories:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Lio/noties/markwon/SpanFactory;"
        }
    .end annotation

    .line 28
    .local p1, "node":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/SpanFactory;

    return-object v0
.end method

.method public require(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Lio/noties/markwon/SpanFactory;"
        }
    .end annotation

    .line 34
    .local p1, "node":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonSpansFactoryImpl;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    .line 35
    .local v0, "f":Lio/noties/markwon/SpanFactory;
    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
