.class public Lio/noties/markwon/core/spans/OrderedListItemSpan;
.super Ljava/lang/Object;
.source "OrderedListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private margin:I

.field private final number:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;)V
    .locals 1
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;
    .param p2, "number"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    .line 62
    iput-object p1, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 63
    iput-object p2, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static measure(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 31
    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 33
    return-void

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lio/noties/markwon/core/spans/OrderedListItemSpan;

    .line 36
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/noties/markwon/core/spans/OrderedListItemSpan;

    .line 41
    .local v0, "spans":[Lio/noties/markwon/core/spans/OrderedListItemSpan;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 43
    .local v1, "paint":Landroid/text/TextPaint;
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 44
    .local v4, "span":Lio/noties/markwon/core/spans/OrderedListItemSpan;
    iget-object v5, v4, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    .line 43
    .end local v4    # "span":Lio/noties/markwon/core/spans/OrderedListItemSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "paint":Landroid/text/TextPaint;
    :cond_1
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .line 76
    move-object v0, p0

    if-eqz p11, :cond_3

    .line 77
    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v2, v1, p0}, Lio/noties/markwon/utils/LeadingMarginUtils;->selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v12, p1

    move-object v4, p2

    move/from16 v9, p6

    goto :goto_2

    .line 81
    :cond_0
    iget-object v3, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    move-object v4, p2

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 83
    iget-object v3, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object v5, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Lio/noties/markwon/core/MarkwonTheme;->applyListItemStyle(Landroid/graphics/Paint;)V

    .line 88
    iget-object v3, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 91
    .local v3, "numberWidth":I
    iget-object v5, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v5}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result v5

    .line 92
    .local v5, "width":I
    if-le v3, v5, :cond_1

    .line 95
    move v5, v3

    .line 96
    iput v3, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    goto :goto_0

    .line 98
    :cond_1
    const/4 v6, 0x0

    iput v6, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    .line 102
    :goto_0
    if-lez p4, :cond_2

    .line 103
    mul-int v6, v5, p4

    add-int v6, p3, v6

    sub-int/2addr v6, v3

    .local v6, "left":I
    goto :goto_1

    .line 105
    .end local v6    # "left":I
    :cond_2
    mul-int v6, v5, p4

    add-int v6, p3, v6

    sub-int v7, v5, v3

    add-int/2addr v6, v7

    .line 109
    .restart local v6    # "left":I
    :goto_1
    iget-object v7, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    int-to-float v8, v6

    move/from16 v9, p6

    int-to-float v10, v9

    iget-object v11, v0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    move-object v12, p1

    invoke-virtual {p1, v7, v8, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    return-void

    .line 76
    .end local v3    # "numberWidth":I
    .end local v5    # "width":I
    .end local v6    # "left":I
    :cond_3
    move-object v12, p1

    move-object v4, p2

    move/from16 v9, p6

    move-object/from16 v1, p8

    move/from16 v2, p9

    .line 78
    :goto_2
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .line 69
    iget v0, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    iget-object v1, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v1}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
