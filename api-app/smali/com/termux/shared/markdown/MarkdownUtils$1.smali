.class Lcom/termux/shared/markdown/MarkdownUtils$1;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$HNg2kzffM2jj6qgFJoFliSltSaQ(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils$1;->lambda$configureVisitor$0(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5ojUHWMCRNGVMZ_9RUe79iPfoA(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/markdown/MarkdownUtils$1;->lambda$configureSpansFactory$1(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method private static synthetic lambda$configureSpansFactory$1(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 164
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    sget p2, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 165
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$configureVisitor$0(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 2

    .line 151
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 154
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    return-void
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/shared/theme/ThemeUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 164
    const-class v0, Lorg/commonmark/node/Code;

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    :cond_0
    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 146
    new-instance v0, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lorg/commonmark/node/FencedCodeBlock;

    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method
