.class public Lio/noties/markwon/MarkwonConfiguration;
.super Ljava/lang/Object;
.source "MarkwonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

.field private final imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

.field private final imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

.field private final linkResolver:Lio/noties/markwon/LinkResolver;

.field private final spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

.field private final syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method private constructor <init>(Lio/noties/markwon/MarkwonConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$000(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 36
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$100(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/AsyncDrawableLoader;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 37
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$200(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 38
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$300(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/LinkResolver;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->linkResolver:Lio/noties/markwon/LinkResolver;

    .line 39
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$400(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    .line 40
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$500(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/ImageSizeResolver;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 41
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$600(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lio/noties/markwon/MarkwonConfiguration$Builder;Lio/noties/markwon/MarkwonConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lio/noties/markwon/MarkwonConfiguration$Builder;
    .param p2, "x1"    # Lio/noties/markwon/MarkwonConfiguration$1;

    .line 16
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonConfiguration;-><init>(Lio/noties/markwon/MarkwonConfiguration$Builder;)V

    return-void
.end method

.method public static builder()Lio/noties/markwon/MarkwonConfiguration$Builder;
    .locals 1

    .line 20
    new-instance v0, Lio/noties/markwon/MarkwonConfiguration$Builder;

    invoke-direct {v0}, Lio/noties/markwon/MarkwonConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asyncDrawableLoader()Lio/noties/markwon/image/AsyncDrawableLoader;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    return-object v0
.end method

.method public imageDestinationProcessor()Lio/noties/markwon/image/destination/ImageDestinationProcessor;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    return-object v0
.end method

.method public imageSizeResolver()Lio/noties/markwon/image/ImageSizeResolver;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object v0
.end method

.method public linkResolver()Lio/noties/markwon/LinkResolver;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->linkResolver:Lio/noties/markwon/LinkResolver;

    return-object v0
.end method

.method public spansFactory()Lio/noties/markwon/MarkwonSpansFactory;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    return-object v0
.end method

.method public syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    return-object v0
.end method

.method public theme()Lio/noties/markwon/core/MarkwonTheme;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->theme:Lio/noties/markwon/core/MarkwonTheme;

    return-object v0
.end method
