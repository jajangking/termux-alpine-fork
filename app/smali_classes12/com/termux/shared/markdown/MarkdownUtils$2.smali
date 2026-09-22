.class Lcom/termux/shared/markdown/MarkdownUtils$2;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MarkdownUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$context"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$configureSpansFactory$0(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 2
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 176
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$1(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 2
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 177
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$2(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 178
    new-instance v0, Landroid/text/style/QuoteSpan;

    invoke-direct {v0}, Landroid/text/style/QuoteSpan;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$3(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 179
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$4(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 182
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "monospace"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 181
    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$5(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 187
    new-instance v0, Landroid/text/style/BulletSpan;

    invoke-direct {v0}, Landroid/text/style/BulletSpan;-><init>()V

    return-object v0
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 4
    .param p1, "builder"    # Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 175
    const-class v0, Lorg/commonmark/node/Emphasis;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$M9cQHJIaxDysdcnOcYQ2AM9DEnU;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$M9cQHJIaxDysdcnOcYQ2AM9DEnU;

    .line 176
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    sget-object v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$_Gg_jKOEdAd9tDbfMM515HtVSWw;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$_Gg_jKOEdAd9tDbfMM515HtVSWw;

    .line 177
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/BlockQuote;

    sget-object v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;

    .line 178
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    sget-object v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$98OTp3o2RXTXtTpkFJSogcFUCp8;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$98OTp3o2RXTXtTpkFJSogcFUCp8;

    .line 179
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/Code;

    iget-object v2, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;

    invoke-direct {v3, v2}, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-interface {v0, v1, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/ListItem;

    sget-object v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Iy6jbMmJ9qABfTGTqUX6kupO3jI;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Iy6jbMmJ9qABfTGTqUX6kupO3jI;

    .line 187
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 188
    return-void
.end method
