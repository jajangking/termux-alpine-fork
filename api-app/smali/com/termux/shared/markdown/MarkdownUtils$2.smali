.class Lcom/termux/shared/markdown/MarkdownUtils$2;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "SourceFile"


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
.method public static synthetic $r8$lambda$GcfiBQfanBlwl7oauVsXIIl722M(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$4(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JAJRT_73tXGUYix6waUZkON82No(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$5(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SHehFlVwc9uZzUTfT-Ggo9Z76L4(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$1(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ciJoI0n7uTRCgyHni1zsOVm1xDo(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$0(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$quiLk3O2oEZFLszujFu07uoh5lU(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$3(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xKb2jUL0WJiEh16UZrdrMy94WsI(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$2(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method private static synthetic lambda$configureSpansFactory$0(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 184
    new-instance p0, Landroid/text/style/StyleSpan;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object p0
.end method

.method private static synthetic lambda$configureSpansFactory$1(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 185
    new-instance p0, Landroid/text/style/StyleSpan;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object p0
.end method

.method private static synthetic lambda$configureSpansFactory$2(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 186
    new-instance p0, Landroid/text/style/QuoteSpan;

    invoke-direct {p0}, Landroid/text/style/QuoteSpan;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$configureSpansFactory$3(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 187
    new-instance p0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$configureSpansFactory$4(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1

    .line 189
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    sget p2, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 190
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    new-instance p0, Landroid/text/style/TypefaceSpan;

    const-string p2, "monospace"

    invoke-direct {p0, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v0, 0x30

    invoke-direct {p2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$configureSpansFactory$5(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 195
    new-instance p0, Landroid/text/style/BulletSpan;

    invoke-direct {p0}, Landroid/text/style/BulletSpan;-><init>()V

    return-object p0
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 2

    .line 183
    new-instance v0, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda0;-><init>()V

    .line 184
    const-class v1, Lorg/commonmark/node/Emphasis;

    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda1;-><init>()V

    .line 185
    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda2;-><init>()V

    .line 186
    const-class v1, Lorg/commonmark/node/BlockQuote;

    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda3;-><init>()V

    .line 187
    const-class v1, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    .line 189
    const-class v0, Lorg/commonmark/node/Code;

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda5;-><init>()V

    .line 195
    const-class v1, Lorg/commonmark/node/ListItem;

    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    return-void
.end method
