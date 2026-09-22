.class public abstract Lio/noties/markwon/utils/SpanUtils;
.super Ljava/lang/Object;
.source "SpanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static width(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 23
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 27
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-static {v0}, Lio/noties/markwon/core/spans/TextLayoutSpan;->layoutOf(Landroid/text/Spanned;)Landroid/text/Layout;

    move-result-object v1

    .line 28
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v2

    return v2

    .line 33
    :cond_0
    invoke-static {v0}, Lio/noties/markwon/core/spans/TextViewSpan;->textViewOf(Landroid/text/Spanned;)Landroid/widget/TextView;

    move-result-object v2

    .line 34
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    return v3

    .line 40
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    return v0
.end method
