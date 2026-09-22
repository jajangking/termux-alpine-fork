.class public Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/renderer/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attributeProviderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/html/AttributeProviderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private escapeHtml:Z

.field private nodeRendererFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;",
            ">;"
        }
    .end annotation
.end field

.field private percentEncodeUrls:Z

.field private softbreak:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "\n"

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->softbreak:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml:Z

    .line 86
    iput-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->percentEncodeUrls:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->attributeProviderFactories:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 82
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->softbreak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 82
    iget-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml:Z

    return v0
.end method

.method static synthetic access$200(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 82
    iget-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->percentEncodeUrls:Z

    return v0
.end method

.method static synthetic access$300(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 82
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->attributeProviderFactories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 82
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public attributeProviderFactory(Lorg/commonmark/renderer/html/AttributeProviderFactory;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 2
    .param p1, "attributeProviderFactory"    # Lorg/commonmark/renderer/html/AttributeProviderFactory;

    .line 153
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->attributeProviderFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object p0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeProviderFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lorg/commonmark/renderer/html/HtmlRenderer;
    .locals 2

    .line 94
    new-instance v0, Lorg/commonmark/renderer/html/HtmlRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/renderer/html/HtmlRenderer;-><init>(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;Lorg/commonmark/renderer/html/HtmlRenderer$1;)V

    return-object v0
.end method

.method public escapeHtml(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "escapeHtml"    # Z

    .line 123
    iput-boolean p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml:Z

    .line 124
    return-object p0
.end method

.method public extensions(Ljava/lang/Iterable;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/commonmark/Extension;",
            ">;)",
            "Lorg/commonmark/renderer/html/HtmlRenderer$Builder;"
        }
    .end annotation

    .line 183
    .local p1, "extensions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/commonmark/Extension;>;"
    if-eqz p1, :cond_2

    .line 186
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/Extension;

    .line 187
    .local v1, "extension":Lorg/commonmark/Extension;
    instance-of v2, v1, Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v1

    check-cast v2, Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;

    .line 189
    .local v2, "htmlRendererExtension":Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;
    invoke-interface {v2, p0}, Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;->extend(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)V

    .line 191
    .end local v1    # "extension":Lorg/commonmark/Extension;
    .end local v2    # "htmlRendererExtension":Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    return-object p0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extensions must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nodeRendererFactory(Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 2
    .param p1, "nodeRendererFactory"    # Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;

    .line 171
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object p0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nodeRendererFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public percentEncodeUrls(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "percentEncodeUrls"    # Z

    .line 142
    iput-boolean p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->percentEncodeUrls:Z

    .line 143
    return-object p0
.end method

.method public softbreak(Ljava/lang/String;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "softbreak"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->softbreak:Ljava/lang/String;

    .line 110
    return-object p0
.end method
