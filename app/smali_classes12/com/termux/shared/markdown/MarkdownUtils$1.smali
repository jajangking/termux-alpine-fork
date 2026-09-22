.class Lcom/termux/shared/markdown/MarkdownUtils$1;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MarkdownUtils.java"


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

    .line 138
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$configureSpansFactory$1(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 158
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 157
    return-object v0
.end method

.method static synthetic lambda$configureVisitor$0(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 3
    .param p0, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p1, "fencedCodeBlock"    # Lorg/commonmark/node/FencedCodeBlock;

    .line 146
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    .local v0, "code":Ljava/lang/CharSequence;
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 150
    return-void
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 3
    .param p1, "builder"    # Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 155
    const-class v0, Lorg/commonmark/node/Code;

    iget-object v1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$Xg8HN-dLxbfBmxCqgjnQYQRJEsg;

    invoke-direct {v2, v1}, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$Xg8HN-dLxbfBmxCqgjnQYQRJEsg;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-interface {p1, v0, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 160
    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 141
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 151
    return-void
.end method
