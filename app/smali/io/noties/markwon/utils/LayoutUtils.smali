.class public abstract Lio/noties/markwon/utils/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# static fields
.field private static final DEFAULT_EXTRA:F = 0.0f

.field private static final DEFAULT_MULTIPLIER:F = 1.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getLineBottomWithoutPaddingAndSpacing(Landroid/text/Layout;I)I
    .locals 10
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "line"    # I

    .line 21
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 22
    .local v0, "bottom":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    if-lt v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 23
    .local v1, "lastLineSpacingNotAdded":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p1, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 26
    .local v4, "isSpanLastLine":Z
    :goto_1
    invoke-virtual {p0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v5

    .line 27
    .local v5, "lineSpacingExtra":F
    invoke-virtual {p0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v6

    .line 30
    .local v6, "lineSpacingMultiplier":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_2

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_3

    :cond_2
    move v2, v3

    .line 33
    .local v2, "hasLineSpacing":Z
    :cond_3
    if-eqz v2, :cond_6

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    goto :goto_3

    .line 38
    :cond_4
    invoke-static {v8, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_5

    .line 39
    invoke-static {p0, p1}, Lio/noties/markwon/utils/LayoutUtils;->getLineHeight(Landroid/text/Layout;I)I

    move-result v7

    .line 40
    .local v7, "lineHeight":I
    int-to-float v8, v7

    int-to-float v9, v7

    sub-float/2addr v9, v5

    div-float/2addr v9, v6

    sub-float/2addr v8, v9

    .line 42
    .end local v7    # "lineHeight":I
    .local v8, "extra":F
    goto :goto_2

    .line 43
    .end local v8    # "extra":F
    :cond_5
    move v8, v5

    .line 45
    .restart local v8    # "extra":F
    :goto_2
    int-to-float v7, v0

    sub-float/2addr v7, v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    .local v7, "lineBottom":I
    goto :goto_4

    .line 35
    .end local v7    # "lineBottom":I
    .end local v8    # "extra":F
    :cond_6
    :goto_3
    move v7, v0

    .line 50
    .restart local v7    # "lineBottom":I
    :goto_4
    if-eqz v4, :cond_7

    .line 51
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v3

    if-ne p1, v8, :cond_7

    .line 52
    invoke-virtual {p0}, Landroid/text/Layout;->getBottomPadding()I

    move-result v3

    sub-int v3, v7, v3

    return v3

    .line 55
    :cond_7
    return v7
.end method

.method public static getLineHeight(Landroid/text/Layout;I)I
    .locals 2
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "line"    # I

    .line 67
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getLineTopWithoutPadding(Landroid/text/Layout;I)I
    .locals 2
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "line"    # I

    .line 59
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 60
    .local v0, "top":I
    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/text/Layout;->getTopPadding()I

    move-result v1

    sub-int v1, v0, v1

    return v1

    .line 63
    :cond_0
    return v0
.end method
