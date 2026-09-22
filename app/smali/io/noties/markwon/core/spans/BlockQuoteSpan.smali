.class public Lio/noties/markwon/core/spans/BlockQuoteSpan;
.super Ljava/lang/Object;
.source "BlockQuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;)V
    .locals 1
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    .line 17
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    .line 20
    iput-object p1, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 21
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 10
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

    .line 43
    move-object v0, p0

    iget-object v1, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v1}, Lio/noties/markwon/core/MarkwonTheme;->getBlockQuoteWidth()I

    move-result v1

    .line 45
    .local v1, "width":I
    iget-object v2, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    move-object v3, p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 47
    iget-object v2, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object v4, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Lio/noties/markwon/core/MarkwonTheme;->applyBlockQuoteStyle(Landroid/graphics/Paint;)V

    .line 52
    mul-int v2, p4, v1

    add-int/2addr v2, p3

    .line 53
    .local v2, "l":I
    mul-int v4, p4, v1

    add-int/2addr v4, v2

    .line 54
    .local v4, "r":I
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 55
    .local v5, "left":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 58
    .end local v4    # "r":I
    .local v2, "right":I
    iget-object v4, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    move v6, p5

    move/from16 v7, p7

    invoke-virtual {v4, v5, p5, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object v4, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    iget-object v8, v0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    move-object v9, p1

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .line 25
    iget-object v0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result v0

    return v0
.end method
