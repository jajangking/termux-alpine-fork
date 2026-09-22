.class public Lio/noties/markwon/core/spans/CodeBlockSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CodeBlockSpan.java"

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

    .line 24
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 21
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/CodeBlockSpan;->rect:Landroid/graphics/Rect;

    .line 22
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/CodeBlockSpan;->paint:Landroid/graphics/Paint;

    .line 25
    iput-object p1, p0, Lio/noties/markwon/core/spans/CodeBlockSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 26
    return-void
.end method

.method private apply(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .line 39
    iget-object v0, p0, Lio/noties/markwon/core/spans/CodeBlockSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0, p1}, Lio/noties/markwon/core/MarkwonTheme;->applyCodeBlockTextStyle(Landroid/graphics/Paint;)V

    .line 40
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 9
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

    .line 50
    move-object v0, p0

    iget-object v1, v0, Lio/noties/markwon/core/spans/CodeBlockSpan;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v1, v0, Lio/noties/markwon/core/spans/CodeBlockSpan;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lio/noties/markwon/core/spans/CodeBlockSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    move-object v3, p2

    invoke-virtual {v2, p2}, Lio/noties/markwon/core/MarkwonTheme;->getCodeBlockBackgroundColor(Landroid/graphics/Paint;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    if-lez p4, :cond_0

    .line 56
    move v1, p3

    .line 57
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .local v2, "right":I
    goto :goto_0

    .line 59
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int v1, p3, v1

    .line 60
    .restart local v1    # "left":I
    move v2, p3

    .line 63
    .restart local v2    # "right":I
    :goto_0
    iget-object v4, v0, Lio/noties/markwon/core/spans/CodeBlockSpan;->rect:Landroid/graphics/Rect;

    move v5, p5

    move/from16 v6, p7

    invoke-virtual {v4, v1, p5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    iget-object v4, v0, Lio/noties/markwon/core/spans/CodeBlockSpan;->rect:Landroid/graphics/Rect;

    iget-object v7, v0, Lio/noties/markwon/core/spans/CodeBlockSpan;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .line 44
    iget-object v0, p0, Lio/noties/markwon/core/spans/CodeBlockSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0}, Lio/noties/markwon/core/MarkwonTheme;->getCodeBlockMargin()I

    move-result v0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 35
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CodeBlockSpan;->apply(Landroid/text/TextPaint;)V

    .line 36
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "p"    # Landroid/text/TextPaint;

    .line 30
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CodeBlockSpan;->apply(Landroid/text/TextPaint;)V

    .line 31
    return-void
.end method
