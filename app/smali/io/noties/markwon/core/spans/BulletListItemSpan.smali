.class public Lio/noties/markwon/core/spans/BulletListItemSpan;
.super Ljava/lang/Object;
.source "BulletListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field private static final IS_NOUGAT:Z


# instance fields
.field private final circle:Landroid/graphics/RectF;

.field private final level:I

.field private final paint:Landroid/graphics/Paint;

.field private final rectangle:Landroid/graphics/Rect;

.field private theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .local v0, "sdk":I
    const/16 v1, 0x18

    if-eq v1, v0, :cond_1

    const/16 v1, 0x19

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->IS_NOUGAT:Z

    .line 24
    .end local v0    # "sdk":I
    return-void
.end method

.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .locals 1
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;
    .param p2, "level"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    .line 29
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rectF()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    .line 30
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 38
    iput p2, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    .line 39
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 17
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
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p11, :cond_7

    .line 51
    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v4, v3, v1}, Lio/noties/markwon/utils/LeadingMarginUtils;->selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v5, p2

    goto/16 :goto_6

    .line 55
    :cond_0
    iget-object v0, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 57
    iget-object v0, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object v6, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Lio/noties/markwon/core/MarkwonTheme;->applyListItemStyle(Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 62
    .local v6, "save":I
    :try_start_0
    iget-object v0, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result v0

    .line 67
    .local v0, "width":I
    iget-object v7, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 69
    .local v7, "textLineHeight":I
    iget-object v9, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v9, v7}, Lio/noties/markwon/core/MarkwonTheme;->getBulletWidth(I)I

    move-result v9

    .line 71
    .local v9, "side":I
    sub-int v10, v0, v9

    div-int/lit8 v10, v10, 0x2

    .line 79
    .local v10, "marginLeft":I
    sget-boolean v11, Lio/noties/markwon/core/spans/BulletListItemSpan;->IS_NOUGAT:Z

    if-eqz v11, :cond_2

    .line 88
    if-gez p4, :cond_1

    .line 90
    invoke-virtual/range {p12 .. p12}, Landroid/text/Layout;->getWidth()I

    move-result v11

    iget v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    mul-int/2addr v12, v0

    sub-int/2addr v11, v12

    sub-int v11, p3, v11

    .local v11, "diff":I
    goto :goto_0

    .line 92
    .end local v11    # "diff":I
    :cond_1
    iget v11, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    mul-int/2addr v11, v0

    sub-int v11, v11, p3

    .line 95
    .restart local v11    # "diff":I
    :goto_0
    mul-int v12, p4, v10

    add-int v12, p3, v12

    .line 96
    .local v12, "left":I
    mul-int v13, p4, v9

    add-int/2addr v13, v12

    .line 97
    .local v13, "right":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    mul-int v15, p4, v11

    add-int/2addr v14, v15

    .line 98
    .local v14, "l":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    mul-int v16, p4, v11

    add-int v15, v15, v16

    .line 100
    .end local v11    # "diff":I
    .end local v12    # "left":I
    .end local v13    # "right":I
    .local v15, "r":I
    goto :goto_2

    .line 101
    .end local v14    # "l":I
    .end local v15    # "r":I
    :cond_2
    if-lez p4, :cond_3

    .line 102
    add-int v11, p3, v10

    move v14, v11

    .local v11, "l":I
    goto :goto_1

    .line 104
    .end local v11    # "l":I
    :cond_3
    sub-int v11, p3, v0

    add-int/2addr v11, v10

    move v14, v11

    .line 106
    .restart local v14    # "l":I
    :goto_1
    add-int v11, v14, v9

    move v15, v11

    .line 110
    .restart local v15    # "r":I
    :goto_2
    iget-object v11, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    iget-object v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v8

    float-to-int v8, v11

    add-int v8, p6, v8

    div-int/lit8 v11, v9, 0x2

    sub-int/2addr v8, v11

    .line 111
    .local v8, "t":I
    add-int v11, v8, v9

    .line 113
    .local v11, "b":I
    iget v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    goto :goto_3

    .line 126
    :cond_4
    iget-object v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    invoke-virtual {v12, v14, v8, v15, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    iget-object v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    iget-object v13, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 116
    :cond_5
    :goto_3
    iget-object v12, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    int-to-float v13, v14

    move/from16 v16, v0

    .end local v0    # "width":I
    .local v16, "width":I
    int-to-float v0, v8

    int-to-float v3, v15

    int-to-float v4, v11

    invoke-virtual {v12, v13, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iget v0, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    if-nez v0, :cond_6

    .line 119
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_4

    .line 120
    :cond_6
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_4
    nop

    .line 121
    .local v0, "style":Landroid/graphics/Paint$Style;
    iget-object v3, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v3, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    iget-object v4, v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0    # "style":Landroid/graphics/Paint$Style;
    nop

    .line 134
    .end local v7    # "textLineHeight":I
    .end local v8    # "t":I
    .end local v9    # "side":I
    .end local v10    # "marginLeft":I
    .end local v11    # "b":I
    .end local v14    # "l":I
    .end local v15    # "r":I
    .end local v16    # "width":I
    :goto_5
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    nop

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    throw v0

    .line 50
    .end local v6    # "save":I
    :cond_7
    move-object/from16 v5, p2

    .line 52
    :goto_6
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .line 43
    iget-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result v0

    return v0
.end method
