.class Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;
.super Ljava/lang/Object;
.source "LinkifyPlugin.java"

# interfaces
.implements Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/linkify/LinkifyPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkifyTextAddedListener"
.end annotation


# instance fields
.field private final mask:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;->mask:I

    .line 100
    return-void
.end method


# virtual methods
.method protected addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "mask"    # I

    .line 139
    invoke-static {p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method public onTextAdded(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;I)V
    .locals 11
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "start"    # I

    .line 107
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/Link;

    invoke-interface {v0, v1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    .line 108
    .local v0, "spanFactory":Lio/noties/markwon/SpanFactory;
    if-nez v0, :cond_0

    .line 109
    return-void

    .line 114
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    iget v2, p0, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;->mask:I

    invoke-virtual {p0, v1, v2}, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 119
    .local v2, "spans":[Landroid/text/style/URLSpan;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 122
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v3

    .line 123
    .local v3, "renderProps":Lio/noties/markwon/RenderProps;
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v5

    .line 125
    .local v5, "spannableBuilder":Lio/noties/markwon/SpannableBuilder;
    array-length v6, v2

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v2, v4

    .line 126
    .local v7, "span":Landroid/text/style/URLSpan;
    sget-object v8, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 127
    nop

    .line 129
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v8

    invoke-interface {v0, v8, v3}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v8

    .line 130
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v9, p3

    .line 131
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v10, p3

    .line 127
    invoke-static {v5, v8, v9, v10}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    .line 125
    .end local v7    # "span":Landroid/text/style/URLSpan;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "spans":[Landroid/text/style/URLSpan;
    .end local v3    # "renderProps":Lio/noties/markwon/RenderProps;
    .end local v5    # "spannableBuilder":Lio/noties/markwon/SpannableBuilder;
    :cond_1
    return-void
.end method
