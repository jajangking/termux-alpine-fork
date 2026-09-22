.class public Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;
.super Ljava/lang/Object;
.source "StrongEmphasisSpanFactory.java"

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
    .locals 1
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 15
    new-instance v0, Lio/noties/markwon/core/spans/StrongEmphasisSpan;

    invoke-direct {v0}, Lio/noties/markwon/core/spans/StrongEmphasisSpan;-><init>()V

    return-object v0
.end method
