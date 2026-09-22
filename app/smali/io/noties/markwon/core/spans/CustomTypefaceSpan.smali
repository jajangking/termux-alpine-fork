.class public Lio/noties/markwon/core/spans/CustomTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private final mergeStyles:Z

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;Z)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/graphics/Typeface;Z)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "mergeStyles"    # Z

    .line 55
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 56
    iput-object p1, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 57
    iput-boolean p2, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->mergeStyles:Z

    .line 58
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;)Lio/noties/markwon/core/spans/CustomTypefaceSpan;
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->create(Landroid/graphics/Typeface;Z)Lio/noties/markwon/core/spans/CustomTypefaceSpan;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/graphics/Typeface;Z)Lio/noties/markwon/core/spans/CustomTypefaceSpan;
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "mergeStyles"    # Z

    .line 38
    new-instance v0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;

    invoke-direct {v0, p0, p1}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;Z)V

    return-object v0
.end method

.method private updatePaint(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 72
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 73
    .local v0, "oldTypeface":Landroid/graphics/Typeface;
    iget-boolean v1, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->mergeStyles:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 80
    .local v1, "oldStyle":I
    iget-object v2, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    or-int/2addr v2, v1

    .line 81
    .local v2, "want":I
    iget-object v3, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 83
    .local v3, "styledTypeface":Landroid/graphics/Typeface;
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 76
    .end local v1    # "oldStyle":I
    .end local v2    # "want":I
    .end local v3    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 85
    :goto_1
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 68
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->updatePaint(Landroid/text/TextPaint;)V

    .line 69
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 63
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->updatePaint(Landroid/text/TextPaint;)V

    .line 64
    return-void
.end method
