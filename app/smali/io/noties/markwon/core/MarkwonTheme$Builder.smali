.class public Lio/noties/markwon/core/MarkwonTheme$Builder;
.super Ljava/lang/Object;
.source "MarkwonTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/core/MarkwonTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blockMargin:I

.field private blockQuoteColor:I

.field private blockQuoteWidth:I

.field private bulletListItemStrokeWidth:I

.field private bulletWidth:I

.field private codeBackgroundColor:I

.field private codeBlockBackgroundColor:I

.field private codeBlockMargin:I

.field private codeBlockTextColor:I

.field private codeBlockTextSize:I

.field private codeBlockTypeface:Landroid/graphics/Typeface;

.field private codeTextColor:I

.field private codeTextSize:I

.field private codeTypeface:Landroid/graphics/Typeface;

.field private headingBreakColor:I

.field private headingBreakHeight:I

.field private headingTextSizeMultipliers:[F

.field private headingTypeface:Landroid/graphics/Typeface;

.field private isLinkUnderlined:Z

.field private linkColor:I

.field private listItemColor:I

.field private thematicBreakColor:I

.field private thematicBreakHeight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->isLinkUnderlined:Z

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 486
    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    .line 489
    return-void
.end method

.method constructor <init>(Lio/noties/markwon/core/MarkwonTheme;)V
    .locals 1
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->isLinkUnderlined:Z

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 486
    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    .line 492
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->linkColor:I

    .line 493
    iget-boolean v0, p1, Lio/noties/markwon/core/MarkwonTheme;->isLinkedUnderlined:Z

    iput-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->isLinkUnderlined:Z

    .line 494
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin:I

    .line 495
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth:I

    .line 496
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteColor:I

    .line 497
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->listItemColor:I

    .line 498
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth:I

    .line 499
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletWidth:I

    .line 500
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextColor:I

    .line 501
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextColor:I

    .line 502
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBackgroundColor:I

    .line 503
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockBackgroundColor:I

    .line 504
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin:I

    .line 505
    iget-object v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTypeface:Landroid/graphics/Typeface;

    .line 506
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextSize:I

    .line 507
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 508
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakColor:I

    .line 509
    iget-object v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTypeface:Landroid/graphics/Typeface;

    .line 510
    iget-object v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTextSizeMultipliers:[F

    .line 511
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakColor:I

    .line 512
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    .line 513
    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->linkColor:I

    return v0
.end method

.method static synthetic access$100(Lio/noties/markwon/core/MarkwonTheme$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->isLinkUnderlined:Z

    return v0
.end method

.method static synthetic access$1000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBackgroundColor:I

    return v0
.end method

.method static synthetic access$1100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockBackgroundColor:I

    return v0
.end method

.method static synthetic access$1200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin:I

    return v0
.end method

.method static synthetic access$1300(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1400(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextSize:I

    return v0
.end method

.method static synthetic access$1600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextSize:I

    return v0
.end method

.method static synthetic access$1700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    return v0
.end method

.method static synthetic access$1800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakColor:I

    return v0
.end method

.method static synthetic access$1900(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin:I

    return v0
.end method

.method static synthetic access$2000(Lio/noties/markwon/core/MarkwonTheme$Builder;)[F
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTextSizeMultipliers:[F

    return-object v0
.end method

.method static synthetic access$2100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakColor:I

    return v0
.end method

.method static synthetic access$2200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    return v0
.end method

.method static synthetic access$300(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth:I

    return v0
.end method

.method static synthetic access$400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteColor:I

    return v0
.end method

.method static synthetic access$500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->listItemColor:I

    return v0
.end method

.method static synthetic access$600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth:I

    return v0
.end method

.method static synthetic access$700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletWidth:I

    return v0
.end method

.method static synthetic access$800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextColor:I

    return v0
.end method

.method static synthetic access$900(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 462
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextColor:I

    return v0
.end method


# virtual methods
.method public blockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "blockMargin"    # I

    .line 529
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin:I

    .line 530
    return-object p0
.end method

.method public blockQuoteColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "blockQuoteColor"    # I

    .line 542
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteColor:I

    .line 543
    return-object p0
.end method

.method public blockQuoteWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "blockQuoteWidth"    # I

    .line 535
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth:I

    .line 536
    return-object p0
.end method

.method public build()Lio/noties/markwon/core/MarkwonTheme;
    .locals 1

    .line 681
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/MarkwonTheme;-><init>(Lio/noties/markwon/core/MarkwonTheme$Builder;)V

    return-object v0
.end method

.method public bulletListItemStrokeWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "bulletListItemStrokeWidth"    # I

    .line 554
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth:I

    .line 555
    return-object p0
.end method

.method public bulletWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "bulletWidth"    # I

    .line 560
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletWidth:I

    .line 561
    return-object p0
.end method

.method public codeBackgroundColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeBackgroundColor"    # I

    .line 582
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBackgroundColor:I

    .line 583
    return-object p0
.end method

.method public codeBlockBackgroundColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeBlockBackgroundColor"    # I

    .line 591
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockBackgroundColor:I

    .line 592
    return-object p0
.end method

.method public codeBlockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeBlockMargin"    # I

    .line 597
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin:I

    .line 598
    return-object p0
.end method

.method public codeBlockTextColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeBlockTextColor"    # I

    .line 575
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextColor:I

    .line 576
    return-object p0
.end method

.method public codeBlockTextSize(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeTextSize"    # I

    .line 627
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextSize:I

    .line 628
    return-object p0
.end method

.method public codeBlockTypeface(Landroid/graphics/Typeface;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 612
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTypeface:Landroid/graphics/Typeface;

    .line 613
    return-object p0
.end method

.method public codeTextColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeTextColor"    # I

    .line 566
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextColor:I

    .line 567
    return-object p0
.end method

.method public codeTextSize(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeTextSize"    # I

    .line 618
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextSize:I

    .line 619
    return-object p0
.end method

.method public codeTypeface(Landroid/graphics/Typeface;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "codeTypeface"    # Landroid/graphics/Typeface;

    .line 603
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTypeface:Landroid/graphics/Typeface;

    .line 604
    return-object p0
.end method

.method public headingBreakColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "headingBreakColor"    # I

    .line 639
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakColor:I

    .line 640
    return-object p0
.end method

.method public headingBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "headingBreakHeight"    # I

    .line 633
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 634
    return-object p0
.end method

.method public headingTextSizeMultipliers([F)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "headingTextSizeMultipliers"    # [F

    .line 663
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTextSizeMultipliers:[F

    .line 664
    return-object p0
.end method

.method public headingTypeface(Landroid/graphics/Typeface;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "headingTypeface"    # Landroid/graphics/Typeface;

    .line 650
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTypeface:Landroid/graphics/Typeface;

    .line 651
    return-object p0
.end method

.method public isLinkUnderlined(Z)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "isLinkUnderlined"    # Z

    .line 523
    iput-boolean p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->isLinkUnderlined:Z

    .line 524
    return-object p0
.end method

.method public linkColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "linkColor"    # I

    .line 517
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->linkColor:I

    .line 518
    return-object p0
.end method

.method public listItemColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "listItemColor"    # I

    .line 548
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->listItemColor:I

    .line 549
    return-object p0
.end method

.method public thematicBreakColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "thematicBreakColor"    # I

    .line 669
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakColor:I

    .line 670
    return-object p0
.end method

.method public thematicBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 0
    .param p1, "thematicBreakHeight"    # I

    .line 675
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    .line 676
    return-object p0
.end method
