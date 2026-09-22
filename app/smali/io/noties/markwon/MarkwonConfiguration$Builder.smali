.class public Lio/noties/markwon/MarkwonConfiguration$Builder;
.super Ljava/lang/Object;
.source "MarkwonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

.field private imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

.field private imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

.field private linkResolver:Lio/noties/markwon/LinkResolver;

.field private spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

.field private syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

.field private theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/core/MarkwonTheme;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->theme:Lio/noties/markwon/core/MarkwonTheme;

    return-object v0
.end method

.method static synthetic access$100(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/AsyncDrawableLoader;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    return-object v0
.end method

.method static synthetic access$200(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/syntax/SyntaxHighlight;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    return-object v0
.end method

.method static synthetic access$300(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/LinkResolver;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    return-object v0
.end method

.method static synthetic access$400(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/destination/ImageDestinationProcessor;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    return-object v0
.end method

.method static synthetic access$500(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/ImageSizeResolver;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object v0
.end method

.method static synthetic access$600(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/MarkwonSpansFactory;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    return-object v0
.end method


# virtual methods
.method public asyncDrawableLoader(Lio/noties/markwon/image/AsyncDrawableLoader;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .locals 0
    .param p1, "asyncDrawableLoader"    # Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 105
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 106
    return-object p0
.end method

.method public build(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/MarkwonSpansFactory;)Lio/noties/markwon/MarkwonConfiguration;
    .locals 2
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;
    .param p2, "spansFactory"    # Lio/noties/markwon/MarkwonSpansFactory;

    .line 144
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 145
    iput-object p2, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    .line 148
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lio/noties/markwon/image/AsyncDrawableLoader;->noOp()Lio/noties/markwon/image/AsyncDrawableLoader;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 152
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lio/noties/markwon/syntax/SyntaxHighlightNoOp;

    invoke-direct {v0}, Lio/noties/markwon/syntax/SyntaxHighlightNoOp;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 156
    :cond_1
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Lio/noties/markwon/LinkResolverDef;

    invoke-direct {v0}, Lio/noties/markwon/LinkResolverDef;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    .line 161
    :cond_2
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    if-nez v0, :cond_3

    .line 162
    invoke-static {}, Lio/noties/markwon/image/destination/ImageDestinationProcessor;->noOp()Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    .line 165
    :cond_3
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    if-nez v0, :cond_4

    .line 166
    new-instance v0, Lio/noties/markwon/image/ImageSizeResolverDef;

    invoke-direct {v0}, Lio/noties/markwon/image/ImageSizeResolverDef;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 169
    :cond_4
    new-instance v0, Lio/noties/markwon/MarkwonConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/noties/markwon/MarkwonConfiguration;-><init>(Lio/noties/markwon/MarkwonConfiguration$Builder;Lio/noties/markwon/MarkwonConfiguration$1;)V

    return-object v0
.end method

.method public imageDestinationProcessor(Lio/noties/markwon/image/destination/ImageDestinationProcessor;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .locals 0
    .param p1, "imageDestinationProcessor"    # Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    .line 126
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    .line 127
    return-object p0
.end method

.method public imageSizeResolver(Lio/noties/markwon/image/ImageSizeResolver;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .locals 0
    .param p1, "imageSizeResolver"    # Lio/noties/markwon/image/ImageSizeResolver;

    .line 135
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 136
    return-object p0
.end method

.method public linkResolver(Lio/noties/markwon/LinkResolver;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .locals 0
    .param p1, "linkResolver"    # Lio/noties/markwon/LinkResolver;

    .line 117
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    .line 118
    return-object p0
.end method

.method public syntaxHighlight(Lio/noties/markwon/syntax/SyntaxHighlight;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .locals 0
    .param p1, "syntaxHighlight"    # Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 111
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 112
    return-object p0
.end method
