.class public Lio/noties/markwon/core/spans/HeadingSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "HeadingSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final level:I

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .locals 1
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;
    .param p2, "level"    # I

    .line 24
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 20
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    .line 21
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    .line 25
    iput-object p1, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 26
    iput p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    .line 27
    return-void
.end method

.method private apply(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 40
    iget-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget v1, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    invoke-virtual {v0, p1, v1}, Lio/noties/markwon/core/MarkwonTheme;->applyHeadingTextStyle(Landroid/graphics/Paint;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 12
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

    .line 52
    move-object v0, p0

    move/from16 v1, p7

    iget v2, v0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v11, p1

    move-object v5, p2

    move-object/from16 v2, p8

    move/from16 v3, p10

    goto :goto_2

    .line 53
    :cond_1
    :goto_0
    move-object/from16 v2, p8

    move/from16 v3, p10

    invoke-static {v3, v2, p0}, Lio/noties/markwon/utils/LeadingMarginUtils;->selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    iget-object v4, v0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    move-object v5, p2

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 57
    iget-object v4, v0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object v6, v0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Lio/noties/markwon/core/MarkwonTheme;->applyHeadingBreakStyle(Landroid/graphics/Paint;)V

    .line 59
    iget-object v4, v0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    .line 61
    .local v4, "height":F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 63
    int-to-float v6, v1

    sub-float/2addr v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 67
    .local v6, "b":I
    if-lez p4, :cond_2

    .line 68
    move v7, p3

    .line 69
    .local v7, "left":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .local v8, "right":I
    goto :goto_1

    .line 71
    .end local v7    # "left":I
    .end local v8    # "right":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    sub-int v7, p3, v7

    .line 72
    .restart local v7    # "left":I
    move v8, p3

    .line 75
    .restart local v8    # "right":I
    :goto_1
    iget-object v9, v0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v6, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    iget-object v9, v0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    iget-object v10, v0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    move-object v11, p1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 61
    .end local v6    # "b":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    :cond_3
    move-object v11, p1

    goto :goto_2

    .line 53
    .end local v4    # "height":F
    :cond_4
    move-object v11, p1

    move-object v5, p2

    .line 79
    :goto_2
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 85
    iget v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 36
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/HeadingSpan;->apply(Landroid/text/TextPaint;)V

    .line 37
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "p"    # Landroid/text/TextPaint;

    .line 31
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/HeadingSpan;->apply(Landroid/text/TextPaint;)V

    .line 32
    return-void
.end method
