.class Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;
.super Ljava/lang/Object;
.source "MarkwonSpansFactoryImpl.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonSpansFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeSpanFactory"
.end annotation


# instance fields
.field final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/SpanFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/noties/markwon/SpanFactory;Lio/noties/markwon/SpanFactory;)V
    .locals 2
    .param p1, "first"    # Lio/noties/markwon/SpanFactory;
    .param p2, "second"    # Lio/noties/markwon/SpanFactory;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;->factories:Ljava/util/List;

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 4
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 141
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 142
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 143
    .local v1, "out":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 144
    iget-object v3, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;->factories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/noties/markwon/SpanFactory;

    invoke-interface {v3, p1, p2}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
