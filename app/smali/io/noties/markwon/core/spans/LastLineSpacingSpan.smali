.class public Lio/noties/markwon/core/spans/LastLineSpacingSpan;
.super Ljava/lang/Object;
.source "LastLineSpacingSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final spacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "spacing"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->spacing:I

    .line 24
    return-void
.end method

.method public static create(I)Lio/noties/markwon/core/spans/LastLineSpacingSpan;
    .locals 1
    .param p0, "spacing"    # I

    .line 17
    new-instance v0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/spans/LastLineSpacingSpan;-><init>(I)V

    return-object v0
.end method

.method private static selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "end"    # I
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Ljava/lang/Object;

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 41
    .local v0, "spanEnd":I
    if-eq v0, p0, :cond_1

    add-int/lit8 v1, p0, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 28
    invoke-static {p3, p1, p0}, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->spacing:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 31
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->spacing:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 33
    :cond_0
    return-void
.end method
