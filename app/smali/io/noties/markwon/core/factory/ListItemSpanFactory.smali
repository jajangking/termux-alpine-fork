.class public Lio/noties/markwon/core/factory/ListItemSpanFactory;
.super Ljava/lang/Object;
.source "ListItemSpanFactory.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 3
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 24
    sget-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    sget-object v1, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    invoke-virtual {v1, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 25
    new-instance v0, Lio/noties/markwon/core/spans/BulletListItemSpan;

    .line 26
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->theme()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v1

    sget-object v2, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    .line 27
    invoke-virtual {v2, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/noties/markwon/core/spans/BulletListItemSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;I)V

    .local v0, "spans":Ljava/lang/Object;
    goto :goto_0

    .line 32
    .end local v0    # "spans":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    invoke-virtual {v1, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "number":Ljava/lang/String;
    new-instance v1, Lio/noties/markwon/core/spans/OrderedListItemSpan;

    .line 36
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->theme()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/noties/markwon/core/spans/OrderedListItemSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;)V

    move-object v0, v1

    .line 41
    .local v0, "spans":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method
