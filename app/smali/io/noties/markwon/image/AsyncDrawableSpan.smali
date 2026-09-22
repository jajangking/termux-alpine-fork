.class public Lio/noties/markwon/image/AsyncDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AsyncDrawableSpan.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2


# instance fields
.field private final alignment:I

.field private final drawable:Lio/noties/markwon/image/AsyncDrawable;

.field private final replacementTextIsLink:Z

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/image/AsyncDrawable;IZ)V
    .locals 0
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;
    .param p2, "drawable"    # Lio/noties/markwon/image/AsyncDrawable;
    .param p3, "alignment"    # I
    .param p4, "replacementTextIsLink"    # Z

    .line 40
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 41
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 42
    iput-object p2, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->drawable:Lio/noties/markwon/image/AsyncDrawable;

    .line 43
    iput p3, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->alignment:I

    .line 44
    iput-boolean p4, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->replacementTextIsLink:Z

    .line 49
    return-void
.end method

.method private static textCenterY(IILandroid/graphics/Paint;)F
    .locals 3
    .param p0, "top"    # I
    .param p1, "bottom"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 152
    sub-int v0, p1, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 104
    move-object v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    iget-object v0, v1, Lio/noties/markwon/image/AsyncDrawableSpan;->drawable:Lio/noties/markwon/image/AsyncDrawable;

    .line 105
    invoke-static/range {p1 .. p2}, Lio/noties/markwon/utils/SpanUtils;->width(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)I

    move-result v2

    .line 106
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 104
    invoke-virtual {v0, v2, v3}, Lio/noties/markwon/image/AsyncDrawable;->initWithKnownDimensions(IF)V

    .line 109
    iget-object v13, v1, Lio/noties/markwon/image/AsyncDrawableSpan;->drawable:Lio/noties/markwon/image/AsyncDrawable;

    .line 111
    .local v13, "drawable":Lio/noties/markwon/image/AsyncDrawable;
    invoke-virtual {v13}, Lio/noties/markwon/image/AsyncDrawable;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v13}, Lio/noties/markwon/image/AsyncDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v11, v0

    .line 115
    .local v2, "b":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 118
    .local v3, "save":I
    :try_start_0
    iget v0, v1, Lio/noties/markwon/image/AsyncDrawableSpan;->alignment:I

    const/4 v4, 0x2

    if-ne v4, v0, :cond_0

    .line 119
    sub-int v0, v11, v10

    invoke-virtual {v13}, Lio/noties/markwon/image/AsyncDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/2addr v0, v4

    sub-int v0, v2, v0

    .local v0, "translationY":I
    goto :goto_0

    .line 120
    .end local v0    # "translationY":I
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v0, :cond_1

    .line 121
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int v0, v2, v0

    .restart local v0    # "translationY":I
    goto :goto_0

    .line 123
    .end local v0    # "translationY":I
    :cond_1
    move v0, v2

    .line 125
    .restart local v0    # "translationY":I
    :goto_0
    int-to-float v4, v0

    move/from16 v14, p5

    :try_start_1
    invoke-virtual {v9, v14, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    invoke-virtual {v13, v9}, Lio/noties/markwon/image/AsyncDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v0    # "translationY":I
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 129
    nop

    .line 130
    .end local v2    # "b":I
    .end local v3    # "save":I
    goto :goto_2

    .line 128
    .restart local v2    # "b":I
    .restart local v3    # "save":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v14, p5

    :goto_1
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 129
    throw v0

    .line 135
    .end local v2    # "b":I
    .end local v3    # "save":I
    :cond_2
    move/from16 v14, p5

    invoke-static {v10, v11, v12}, Lio/noties/markwon/image/AsyncDrawableSpan;->textCenterY(IILandroid/graphics/Paint;)F

    move-result v0

    .line 136
    .local v0, "textY":F
    iget-boolean v2, v1, Lio/noties/markwon/image/AsyncDrawableSpan;->replacementTextIsLink:Z

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, v1, Lio/noties/markwon/image/AsyncDrawableSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v2, v12}, Lio/noties/markwon/core/MarkwonTheme;->applyLinkStyle(Landroid/graphics/Paint;)V

    .line 141
    :cond_3
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v0

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 143
    .end local v0    # "textY":F
    :goto_2
    return-void
.end method

.method public getDrawable()Lio/noties/markwon/image/AsyncDrawable;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->drawable:Lio/noties/markwon/image/AsyncDrawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 63
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->drawable:Lio/noties/markwon/image/AsyncDrawable;

    invoke-virtual {v0}, Lio/noties/markwon/image/AsyncDrawable;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->drawable:Lio/noties/markwon/image/AsyncDrawable;

    invoke-virtual {v0}, Lio/noties/markwon/image/AsyncDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 68
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v1, v1

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 69
    const/4 v1, 0x0

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 71
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 72
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 75
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 77
    .local v0, "size":I
    goto :goto_0

    .line 80
    .end local v0    # "size":I
    :cond_1
    iget-boolean v0, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->replacementTextIsLink:Z

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0, p1}, Lio/noties/markwon/core/MarkwonTheme;->applyLinkStyle(Landroid/graphics/Paint;)V

    .line 85
    :cond_2
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 88
    .restart local v0    # "size":I
    :goto_0
    return v0
.end method
