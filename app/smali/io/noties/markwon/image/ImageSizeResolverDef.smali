.class public Lio/noties/markwon/image/ImageSizeResolverDef;
.super Lio/noties/markwon/image/ImageSizeResolver;
.source "ImageSizeResolverDef.java"


# static fields
.field protected static final UNIT_EM:Ljava/lang/String; = "em"

.field protected static final UNIT_PERCENT:Ljava/lang/String; = "%"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/noties/markwon/image/ImageSizeResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected resolveAbsolute(Lio/noties/markwon/image/ImageSize$Dimension;IF)I
    .locals 2
    .param p1, "dimension"    # Lio/noties/markwon/image/ImageSize$Dimension;
    .param p2, "original"    # I
    .param p3, "textSize"    # F

    .line 103
    iget-object v0, p1, Lio/noties/markwon/image/ImageSize$Dimension;->unit:Ljava/lang/String;

    const-string v1, "em"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    .line 104
    iget v0, p1, Lio/noties/markwon/image/ImageSize$Dimension;->value:F

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    .local v0, "out":I
    goto :goto_0

    .line 106
    .end local v0    # "out":I
    :cond_0
    iget v0, p1, Lio/noties/markwon/image/ImageSize$Dimension;->value:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 108
    .restart local v0    # "out":I
    :goto_0
    return v0
.end method

.method public resolveImageSize(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "drawable"    # Lio/noties/markwon/image/AsyncDrawable;

    .line 21
    nop

    .line 22
    invoke-virtual {p1}, Lio/noties/markwon/image/AsyncDrawable;->getImageSize()Lio/noties/markwon/image/ImageSize;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lio/noties/markwon/image/AsyncDrawable;->getResult()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lio/noties/markwon/image/AsyncDrawable;->getLastKnownCanvasWidth()I

    move-result v2

    .line 25
    invoke-virtual {p1}, Lio/noties/markwon/image/AsyncDrawable;->getLastKnowTextSize()F

    move-result v3

    .line 21
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/noties/markwon/image/ImageSizeResolverDef;->resolveImageSize(Lio/noties/markwon/image/ImageSize;Landroid/graphics/Rect;IF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected resolveImageSize(Lio/noties/markwon/image/ImageSize;Landroid/graphics/Rect;IF)Landroid/graphics/Rect;
    .locals 11
    .param p1, "imageSize"    # Lio/noties/markwon/image/ImageSize;
    .param p2, "imageBounds"    # Landroid/graphics/Rect;
    .param p3, "canvasWidth"    # I
    .param p4, "textSize"    # F

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 41
    .local v2, "w":I
    if-le v2, p3, :cond_0

    .line 42
    int-to-float v3, v2

    int-to-float v4, p3

    div-float/2addr v3, v4

    .line 43
    .local v3, "reduceRatio":F
    new-instance v4, Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v0

    float-to-int v0, v5

    invoke-direct {v4, v1, v1, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v4

    .line 49
    .end local v3    # "reduceRatio":F
    .local v0, "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 50
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    move-object v0, p2

    .line 52
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 57
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v2    # "w":I
    :cond_1
    iget-object v2, p1, Lio/noties/markwon/image/ImageSize;->width:Lio/noties/markwon/image/ImageSize$Dimension;

    .line 58
    .local v2, "width":Lio/noties/markwon/image/ImageSize$Dimension;
    iget-object v3, p1, Lio/noties/markwon/image/ImageSize;->height:Lio/noties/markwon/image/ImageSize$Dimension;

    .line 60
    .local v3, "height":Lio/noties/markwon/image/ImageSize$Dimension;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 61
    .local v4, "imageWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 63
    .local v5, "imageHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 65
    .local v6, "ratio":F
    const-string v7, "%"

    if-eqz v2, :cond_5

    .line 70
    iget-object v8, v2, Lio/noties/markwon/image/ImageSize$Dimension;->unit:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    int-to-float v8, p3

    iget v9, v2, Lio/noties/markwon/image/ImageSize$Dimension;->value:F

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v8, v0

    float-to-int v8, v8

    .local v8, "w":I
    goto :goto_1

    .line 73
    .end local v8    # "w":I
    :cond_2
    invoke-virtual {p0, v2, v4, p4}, Lio/noties/markwon/image/ImageSizeResolverDef;->resolveAbsolute(Lio/noties/markwon/image/ImageSize$Dimension;IF)I

    move-result v8

    .line 76
    .restart local v8    # "w":I
    :goto_1
    if-eqz v3, :cond_4

    iget-object v9, v3, Lio/noties/markwon/image/ImageSize$Dimension;->unit:Ljava/lang/String;

    .line 77
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p0, v3, v5, p4}, Lio/noties/markwon/image/ImageSizeResolverDef;->resolveAbsolute(Lio/noties/markwon/image/ImageSize$Dimension;IF)I

    move-result v0

    .local v0, "h":I
    goto :goto_3

    .line 78
    .end local v0    # "h":I
    :cond_4
    :goto_2
    int-to-float v7, v8

    div-float/2addr v7, v6

    add-float/2addr v7, v0

    float-to-int v0, v7

    .line 83
    .restart local v0    # "h":I
    :goto_3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v1, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v7

    .line 85
    .end local v8    # "w":I
    .local v0, "rect":Landroid/graphics/Rect;
    goto :goto_4

    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_5
    if-eqz v3, :cond_7

    .line 87
    iget-object v8, v3, Lio/noties/markwon/image/ImageSize$Dimension;->unit:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 88
    invoke-virtual {p0, v3, v5, p4}, Lio/noties/markwon/image/ImageSizeResolverDef;->resolveAbsolute(Lio/noties/markwon/image/ImageSize$Dimension;IF)I

    move-result v7

    .line 89
    .local v7, "h":I
    int-to-float v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v8, v0

    float-to-int v0, v8

    .line 90
    .local v0, "w":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v1, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v8

    .line 91
    .end local v7    # "h":I
    .local v0, "rect":Landroid/graphics/Rect;
    goto :goto_4

    .line 92
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_6
    move-object v0, p2

    .restart local v0    # "rect":Landroid/graphics/Rect;
    goto :goto_4

    .line 95
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_7
    move-object v0, p2

    .line 98
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :goto_4
    return-object v0
.end method
