.class Lio/noties/markwon/MarkwonBuilderImpl;
.super Ljava/lang/Object;
.source "MarkwonBuilderImpl.java"

# interfaces
.implements Lio/noties/markwon/Markwon$Builder;


# instance fields
.field private bufferType:Landroid/widget/TextView$BufferType;

.field private final context:Landroid/content/Context;

.field private fallbackToRawInputWhenEmpty:Z

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private textSetter:Lio/noties/markwon/Markwon$TextSetter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    .line 26
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->bufferType:Landroid/widget/TextView$BufferType;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->fallbackToRawInputWhenEmpty:Z

    .line 34
    iput-object p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private static preparePlugins(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation

    .line 134
    .local p0, "plugins":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/MarkwonPlugin;>;"
    new-instance v0, Lio/noties/markwon/RegistryImpl;

    invoke-direct {v0, p0}, Lio/noties/markwon/RegistryImpl;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/noties/markwon/RegistryImpl;->process()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bufferType(Landroid/widget/TextView$BufferType;)Lio/noties/markwon/Markwon$Builder;
    .locals 0
    .param p1, "bufferType"    # Landroid/widget/TextView$BufferType;

    .line 40
    iput-object p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->bufferType:Landroid/widget/TextView$BufferType;

    .line 41
    return-object p0
.end method

.method public build()Lio/noties/markwon/Markwon;
    .locals 18

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, v0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-static {v1}, Lio/noties/markwon/MarkwonBuilderImpl;->preparePlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "plugins":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/MarkwonPlugin;>;"
    new-instance v2, Lorg/commonmark/parser/Parser$Builder;

    invoke-direct {v2}, Lorg/commonmark/parser/Parser$Builder;-><init>()V

    .line 98
    .local v2, "parserBuilder":Lorg/commonmark/parser/Parser$Builder;
    iget-object v3, v0, Lio/noties/markwon/MarkwonBuilderImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lio/noties/markwon/core/MarkwonTheme;->builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v3

    .line 99
    .local v3, "themeBuilder":Lio/noties/markwon/core/MarkwonTheme$Builder;
    new-instance v4, Lio/noties/markwon/MarkwonConfiguration$Builder;

    invoke-direct {v4}, Lio/noties/markwon/MarkwonConfiguration$Builder;-><init>()V

    .line 100
    .local v4, "configurationBuilder":Lio/noties/markwon/MarkwonConfiguration$Builder;
    new-instance v5, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;

    invoke-direct {v5}, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;-><init>()V

    .line 101
    .local v5, "visitorBuilder":Lio/noties/markwon/MarkwonVisitor$Builder;
    new-instance v6, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;

    invoke-direct {v6}, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;-><init>()V

    .line 103
    .local v6, "spanFactoryBuilder":Lio/noties/markwon/MarkwonSpansFactory$Builder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/noties/markwon/MarkwonPlugin;

    .line 104
    .local v8, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-interface {v8, v2}, Lio/noties/markwon/MarkwonPlugin;->configureParser(Lorg/commonmark/parser/Parser$Builder;)V

    .line 105
    invoke-interface {v8, v3}, Lio/noties/markwon/MarkwonPlugin;->configureTheme(Lio/noties/markwon/core/MarkwonTheme$Builder;)V

    .line 106
    invoke-interface {v8, v4}, Lio/noties/markwon/MarkwonPlugin;->configureConfiguration(Lio/noties/markwon/MarkwonConfiguration$Builder;)V

    .line 107
    invoke-interface {v8, v5}, Lio/noties/markwon/MarkwonPlugin;->configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 108
    invoke-interface {v8, v6}, Lio/noties/markwon/MarkwonPlugin;->configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V

    .line 109
    .end local v8    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_0

    .line 111
    :cond_0
    nop

    .line 112
    invoke-virtual {v3}, Lio/noties/markwon/core/MarkwonTheme$Builder;->build()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v7

    .line 113
    invoke-interface {v6}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->build()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v8

    .line 111
    invoke-virtual {v4, v7, v8}, Lio/noties/markwon/MarkwonConfiguration$Builder;->build(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/MarkwonSpansFactory;)Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v7

    .line 117
    .local v7, "configuration":Lio/noties/markwon/MarkwonConfiguration;
    invoke-static {v5, v7}, Lio/noties/markwon/MarkwonVisitorFactory;->create(Lio/noties/markwon/MarkwonVisitor$Builder;Lio/noties/markwon/MarkwonConfiguration;)Lio/noties/markwon/MarkwonVisitorFactory;

    move-result-object v8

    .line 121
    .local v8, "visitorFactory":Lio/noties/markwon/MarkwonVisitorFactory;
    new-instance v17, Lio/noties/markwon/MarkwonImpl;

    iget-object v10, v0, Lio/noties/markwon/MarkwonBuilderImpl;->bufferType:Landroid/widget/TextView$BufferType;

    iget-object v11, v0, Lio/noties/markwon/MarkwonBuilderImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    .line 124
    invoke-virtual {v2}, Lorg/commonmark/parser/Parser$Builder;->build()Lorg/commonmark/parser/Parser;

    move-result-object v12

    .line 127
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    iget-boolean v14, v0, Lio/noties/markwon/MarkwonBuilderImpl;->fallbackToRawInputWhenEmpty:Z

    move-object/from16 v9, v17

    move-object v13, v8

    move/from16 v16, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v16}, Lio/noties/markwon/MarkwonImpl;-><init>(Landroid/widget/TextView$BufferType;Lio/noties/markwon/Markwon$TextSetter;Lorg/commonmark/parser/Parser;Lio/noties/markwon/MarkwonVisitorFactory;Lio/noties/markwon/MarkwonConfiguration;Ljava/util/List;Z)V

    .line 121
    return-object v17

    .line 89
    .end local v1    # "plugins":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/MarkwonPlugin;>;"
    .end local v2    # "parserBuilder":Lorg/commonmark/parser/Parser$Builder;
    .end local v3    # "themeBuilder":Lio/noties/markwon/core/MarkwonTheme$Builder;
    .end local v4    # "configurationBuilder":Lio/noties/markwon/MarkwonConfiguration$Builder;
    .end local v5    # "visitorBuilder":Lio/noties/markwon/MarkwonVisitor$Builder;
    .end local v6    # "spanFactoryBuilder":Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .end local v7    # "configuration":Lio/noties/markwon/MarkwonConfiguration;
    .end local v8    # "visitorFactory":Lio/noties/markwon/MarkwonVisitorFactory;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No plugins were added to this builder. Use #usePlugin method to add them"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fallbackToRawInputWhenEmpty(Z)Lio/noties/markwon/Markwon$Builder;
    .locals 0
    .param p1, "fallbackToRawInputWhenEmpty"    # Z

    .line 80
    iput-boolean p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->fallbackToRawInputWhenEmpty:Z

    .line 81
    return-object p0
.end method

.method public textSetter(Lio/noties/markwon/Markwon$TextSetter;)Lio/noties/markwon/Markwon$Builder;
    .locals 0
    .param p1, "textSetter"    # Lio/noties/markwon/Markwon$TextSetter;

    .line 47
    iput-object p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    .line 48
    return-object p0
.end method

.method public usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;
    .locals 1
    .param p1, "plugin"    # Lio/noties/markwon/MarkwonPlugin;

    .line 54
    iget-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public usePlugins(Ljava/lang/Iterable;)Lio/noties/markwon/Markwon$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)",
            "Lio/noties/markwon/Markwon$Builder;"
        }
    .end annotation

    .line 62
    .local p1, "plugins":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/noties/markwon/MarkwonPlugin;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/noties/markwon/MarkwonPlugin;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 68
    .local v1, "plugin":Lio/noties/markwon/MarkwonPlugin;
    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 74
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    :cond_1
    return-object p0
.end method
