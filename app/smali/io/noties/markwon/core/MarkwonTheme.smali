.class public Lio/noties/markwon/core/MarkwonTheme;
.super Ljava/lang/Object;
.source "MarkwonTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/MarkwonTheme$Builder;
    }
.end annotation


# static fields
.field protected static final BLOCK_QUOTE_DEF_COLOR_ALPHA:I = 0x19

.field protected static final CODE_DEF_BACKGROUND_COLOR_ALPHA:I = 0x19

.field protected static final CODE_DEF_TEXT_SIZE_RATIO:F = 0.87f

.field protected static final HEADING_DEF_BREAK_COLOR_ALPHA:I = 0x4b

.field private static final HEADING_SIZES:[F

.field protected static final THEMATIC_BREAK_DEF_ALPHA:I = 0x19


# instance fields
.field protected final blockMargin:I

.field protected final blockQuoteColor:I

.field protected final blockQuoteWidth:I

.field protected final bulletListItemStrokeWidth:I

.field protected final bulletWidth:I

.field protected final codeBackgroundColor:I

.field protected final codeBlockBackgroundColor:I

.field protected final codeBlockMargin:I

.field protected final codeBlockTextColor:I

.field protected final codeBlockTextSize:I

.field protected final codeBlockTypeface:Landroid/graphics/Typeface;

.field protected final codeTextColor:I

.field protected final codeTextSize:I

.field protected final codeTypeface:Landroid/graphics/Typeface;

.field protected final headingBreakColor:I

.field protected final headingBreakHeight:I

.field protected final headingTextSizeMultipliers:[F

.field protected final headingTypeface:Landroid/graphics/Typeface;

.field protected final isLinkedUnderlined:Z

.field protected final linkColor:I

.field protected final listItemColor:I

.field protected final thematicBreakColor:I

.field protected final thematicBreakHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method protected constructor <init>(Lio/noties/markwon/core/MarkwonTheme$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    .line 192
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$100(Lio/noties/markwon/core/MarkwonTheme$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme;->isLinkedUnderlined:Z

    .line 193
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 194
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$300(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 195
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    .line 196
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    .line 197
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 198
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    .line 199
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    .line 200
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$900(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    .line 201
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    .line 202
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    .line 203
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    .line 204
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1300(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    .line 205
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1400(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTypeface:Landroid/graphics/Typeface;

    .line 206
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    .line 207
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    .line 208
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 209
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    .line 210
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1900(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    .line 211
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2000(Lio/noties/markwon/core/MarkwonTheme$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    .line 212
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    .line 213
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    .line 214
    return-void
.end method

.method public static builder(Lio/noties/markwon/core/MarkwonTheme;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 1
    .param p0, "copyFrom"    # Lio/noties/markwon/core/MarkwonTheme;

    .line 79
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>(Lio/noties/markwon/core/MarkwonTheme;)V

    return-object v0
.end method

.method public static builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {p0}, Lio/noties/markwon/utils/Dip;->create(Landroid/content/Context;)Lio/noties/markwon/utils/Dip;

    move-result-object v0

    .line 94
    .local v0, "dip":Lio/noties/markwon/utils/Dip;
    new-instance v1, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v1}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>()V

    .line 95
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v1

    .line 96
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v1

    .line 97
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v1

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v3}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v1

    .line 94
    return-object v1
.end method

.method public static create(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lio/noties/markwon/core/MarkwonTheme;->builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/noties/markwon/core/MarkwonTheme$Builder;->build()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v0

    return-object v0
.end method

.method public static emptyBuilder()Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 1

    .line 65
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v0}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyBlockQuoteStyle(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 245
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .local v0, "color":I
    goto :goto_0

    .line 248
    .end local v0    # "color":I
    :cond_0
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    .line 250
    .restart local v0    # "color":I
    :goto_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    return-void
.end method

.method public applyCodeBlockTextStyle(Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 334
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    if-eqz v0, :cond_0

    .line 335
    goto :goto_0

    .line 336
    :cond_0
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    :goto_0
    nop

    .line 338
    .local v0, "textColor":I
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    :cond_1
    iget-object v1, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 343
    goto :goto_1

    .line 344
    :cond_2
    iget-object v1, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    :goto_1
    nop

    .line 346
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_5

    .line 348
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 353
    iget v2, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    if-lez v2, :cond_3

    .line 354
    goto :goto_2

    .line 355
    :cond_3
    iget v2, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    :goto_2
    nop

    .line 357
    .local v2, "textSize":I
    if-lez v2, :cond_4

    .line 358
    int-to-float v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 360
    .end local v2    # "textSize":I
    :cond_4
    goto :goto_4

    .line 363
    :cond_5
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 365
    iget v2, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    if-lez v2, :cond_6

    .line 366
    goto :goto_3

    .line 367
    :cond_6
    iget v2, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    :goto_3
    nop

    .line 369
    .restart local v2    # "textSize":I
    if-lez v2, :cond_7

    .line 370
    int-to-float v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    .line 373
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v4, 0x3f5eb852    # 0.87f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    .end local v2    # "textSize":I
    :goto_4
    return-void
.end method

.method public applyCodeTextStyle(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 303
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 311
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    if-lez v0, :cond_3

    .line 312
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 317
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 319
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    if-lez v0, :cond_2

    .line 320
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 325
    :cond_3
    :goto_0
    return-void
.end method

.method public applyHeadingBreakStyle(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 432
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    if-eqz v0, :cond_0

    .line 433
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    .local v0, "color":I
    goto :goto_0

    .line 435
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 437
    .restart local v0    # "color":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    iget v1, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    if-ltz v1, :cond_1

    .line 441
    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 443
    :cond_1
    return-void
.end method

.method public applyHeadingTextStyle(Landroid/graphics/Paint;I)V
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "level"    # I

    .line 411
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 416
    :goto_0
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    if-eqz v0, :cond_1

    .line 417
    goto :goto_1

    .line 418
    :cond_1
    sget-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    :goto_1
    nop

    .line 420
    .local v0, "textSizes":[F
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt v2, p2, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-int/lit8 v2, p2, -0x1

    aget v2, v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 428
    return-void

    .line 423
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 426
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 423
    const-string v1, "Supplied heading level: %d is invalid, where configured heading sizes are: `%s`"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public applyLinkStyle(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 230
    iget-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme;->isLinkedUnderlined:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 231
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, p1, Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    .line 238
    move-object v0, p1

    check-cast v0, Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    :cond_1
    :goto_0
    return-void
.end method

.method public applyLinkStyle(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 220
    iget-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme;->isLinkedUnderlined:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 221
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 227
    :goto_0
    return-void
.end method

.method public applyListItemStyle(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 271
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    if-eqz v0, :cond_0

    .line 272
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    .local v0, "color":I
    goto :goto_0

    .line 274
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 276
    .restart local v0    # "color":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    iget v1, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    if-eqz v1, :cond_1

    .line 279
    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    :cond_1
    return-void
.end method

.method public applyThematicBreakStyle(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 447
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    .local v0, "color":I
    goto :goto_0

    .line 450
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 452
    .restart local v0    # "color":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 455
    iget v1, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    if-ltz v1, :cond_1

    .line 457
    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 459
    :cond_1
    return-void
.end method

.method public getBlockMargin()I
    .locals 1

    .line 255
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    return v0
.end method

.method public getBlockQuoteWidth()I
    .locals 2

    .line 260
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    if-nez v0, :cond_0

    .line 261
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .local v0, "out":I
    goto :goto_0

    .line 263
    .end local v0    # "out":I
    :cond_0
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 265
    .restart local v0    # "out":I
    :goto_0
    return v0
.end method

.method public getBulletWidth(I)I
    .locals 2
    .param p1, "height"    # I

    .line 285
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 288
    .local v0, "min":I
    iget v1, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    if-eqz v1, :cond_1

    if-le v1, v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget v1, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    .local v1, "width":I
    goto :goto_1

    .line 290
    .end local v1    # "width":I
    :cond_1
    :goto_0
    move v1, v0

    .line 295
    .restart local v1    # "width":I
    :goto_1
    return v1
.end method

.method public getCodeBackgroundColor(Landroid/graphics/Paint;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 388
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    .local v0, "color":I
    goto :goto_0

    .line 391
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 393
    .restart local v0    # "color":I
    :goto_0
    return v0
.end method

.method public getCodeBlockBackgroundColor(Landroid/graphics/Paint;)I
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 401
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    if-eqz v0, :cond_0

    .line 402
    goto :goto_0

    .line 403
    :cond_0
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    :goto_0
    nop

    .line 405
    .local v0, "color":I
    if-eqz v0, :cond_1

    .line 406
    move v1, v0

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v1

    .line 405
    :goto_1
    return v1
.end method

.method public getCodeBlockMargin()I
    .locals 1

    .line 380
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    return v0
.end method
