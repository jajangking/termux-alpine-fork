.class public Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;
.super Ljava/lang/Object;
.source "BlockQuoteSpanFactory.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 2
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 15
    new-instance v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;

    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->theme()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/noties/markwon/core/spans/BlockQuoteSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;)V

    return-object v0
.end method
