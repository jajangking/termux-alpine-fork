.class public Lio/noties/markwon/image/ImageSpanFactory;
.super Ljava/lang/Object;
.source "ImageSpanFactory.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 7
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 14
    new-instance v0, Lio/noties/markwon/image/AsyncDrawableSpan;

    .line 15
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->theme()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v1

    new-instance v2, Lio/noties/markwon/image/AsyncDrawable;

    sget-object v3, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    .line 17
    invoke-virtual {v3, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->asyncDrawableLoader()Lio/noties/markwon/image/AsyncDrawableLoader;

    move-result-object v4

    .line 19
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->imageSizeResolver()Lio/noties/markwon/image/ImageSizeResolver;

    move-result-object v5

    sget-object v6, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    .line 20
    invoke-virtual {v6, p2}, Lio/noties/markwon/Prop;->get(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/noties/markwon/image/ImageSize;

    invoke-direct {v2, v3, v4, v5, v6}, Lio/noties/markwon/image/AsyncDrawable;-><init>(Ljava/lang/String;Lio/noties/markwon/image/AsyncDrawableLoader;Lio/noties/markwon/image/ImageSizeResolver;Lio/noties/markwon/image/ImageSize;)V

    sget-object v3, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    .line 23
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Lio/noties/markwon/Prop;->get(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lio/noties/markwon/image/AsyncDrawableSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/image/AsyncDrawable;IZ)V

    .line 14
    return-object v0
.end method
