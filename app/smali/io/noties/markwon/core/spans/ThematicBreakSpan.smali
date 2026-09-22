.class public Lio/noties/markwon/core/spans/ThematicBreakSpan;
.super Ljava/lang/Object;
.source "ThematicBreakSpan.java"

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

    iput-object v0, p0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->rect:Landroid/graphics/Rect;

    .line 17
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->paint:Landroid/graphics/Paint;

    .line 20
    iput-object p1, p0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

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

    .line 31
    move-object v0, p0

    sub-int v1, p7, p5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p5

    .line 33
    .local v1, "middle":I
    iget-object v2, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->paint:Landroid/graphics/Paint;

    move-object v3, p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 34
    iget-object v2, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object v4, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Lio/noties/markwon/core/MarkwonTheme;->applyThematicBreakStyle(Landroid/graphics/Paint;)V

    .line 36
    iget-object v2, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 37
    .local v2, "height":I
    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 41
    .local v4, "halfHeight":I
    if-lez p4, :cond_0

    .line 42
    move v5, p3

    .line 43
    .local v5, "left":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    .local v6, "right":I
    goto :goto_0

    .line 45
    .end local v5    # "left":I
    .end local v6    # "right":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int v5, p3, v5

    .line 46
    .restart local v5    # "left":I
    move v6, p3

    .line 49
    .restart local v6    # "right":I
    :goto_0
    iget-object v7, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->rect:Landroid/graphics/Rect;

    sub-int v8, v1, v4

    add-int v9, v1, v4

    invoke-virtual {v7, v5, v8, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    iget-object v7, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->rect:Landroid/graphics/Rect;

    iget-object v8, v0, Lio/noties/markwon/core/spans/ThematicBreakSpan;->paint:Landroid/graphics/Paint;

    move-object v9, p1

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .line 25
    const/4 v0, 0x0

    return v0
.end method
