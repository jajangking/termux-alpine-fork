.class Lio/noties/markwon/MarkwonImpl;
.super Lio/noties/markwon/Markwon;
.source "MarkwonImpl.java"


# instance fields
.field private final bufferType:Landroid/widget/TextView$BufferType;

.field private final configuration:Lio/noties/markwon/MarkwonConfiguration;

.field private final fallbackToRawInputWhenEmpty:Z

.field private final parser:Lorg/commonmark/parser/Parser;

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final textSetter:Lio/noties/markwon/Markwon$TextSetter;

.field private final visitorFactory:Lio/noties/markwon/MarkwonVisitorFactory;


# direct methods
.method constructor <init>(Landroid/widget/TextView$BufferType;Lio/noties/markwon/Markwon$TextSetter;Lorg/commonmark/parser/Parser;Lio/noties/markwon/MarkwonVisitorFactory;Lio/noties/markwon/MarkwonConfiguration;Ljava/util/List;Z)V
    .locals 0
    .param p1, "bufferType"    # Landroid/widget/TextView$BufferType;
    .param p2, "textSetter"    # Lio/noties/markwon/Markwon$TextSetter;
    .param p3, "parser"    # Lorg/commonmark/parser/Parser;
    .param p4, "visitorFactory"    # Lio/noties/markwon/MarkwonVisitorFactory;
    .param p5, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p7, "fallbackToRawInputWhenEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView$BufferType;",
            "Lio/noties/markwon/Markwon$TextSetter;",
            "Lorg/commonmark/parser/Parser;",
            "Lio/noties/markwon/MarkwonVisitorFactory;",
            "Lio/noties/markwon/MarkwonConfiguration;",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;Z)V"
        }
    .end annotation

    .line 44
    .local p6, "plugins":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/MarkwonPlugin;>;"
    invoke-direct {p0}, Lio/noties/markwon/Markwon;-><init>()V

    .line 45
    iput-object p1, p0, Lio/noties/markwon/MarkwonImpl;->bufferType:Landroid/widget/TextView$BufferType;

    .line 46
    iput-object p2, p0, Lio/noties/markwon/MarkwonImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    .line 47
    iput-object p3, p0, Lio/noties/markwon/MarkwonImpl;->parser:Lorg/commonmark/parser/Parser;

    .line 48
    iput-object p4, p0, Lio/noties/markwon/MarkwonImpl;->visitorFactory:Lio/noties/markwon/MarkwonVisitorFactory;

    .line 49
    iput-object p5, p0, Lio/noties/markwon/MarkwonImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    .line 50
    iput-object p6, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    .line 51
    iput-boolean p7, p0, Lio/noties/markwon/MarkwonImpl;->fallbackToRawInputWhenEmpty:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/MarkwonImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/MarkwonImpl;

    .line 21
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public configuration()Lio/noties/markwon/MarkwonConfiguration;
    .locals 1

    .line 183
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    return-object v0
.end method

.method public getPlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 153
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "out":Lio/noties/markwon/MarkwonPlugin;
    iget-object v1, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/MarkwonPlugin;

    .line 155
    .local v2, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    move-object v0, v2

    .line 158
    .end local v2    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    return-object v0
.end method

.method public getPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPlugin(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)Z"
        }
    .end annotation

    .line 147
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/noties/markwon/MarkwonPlugin;>;"
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->getPlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Lorg/commonmark/node/Node;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 60
    .local v1, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-interface {v1, p1}, Lio/noties/markwon/MarkwonPlugin;->processMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->parser:Lorg/commonmark/parser/Parser;

    invoke-virtual {v0, p1}, Lorg/commonmark/parser/Parser;->parse(Ljava/lang/String;)Lorg/commonmark/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public render(Lorg/commonmark/node/Node;)Landroid/text/Spanned;
    .locals 3
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 70
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 71
    .local v1, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-interface {v1, p1}, Lio/noties/markwon/MarkwonPlugin;->beforeRender(Lorg/commonmark/node/Node;)V

    .line 72
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->visitorFactory:Lio/noties/markwon/MarkwonVisitorFactory;

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonVisitorFactory;->create()Lio/noties/markwon/MarkwonVisitor;

    move-result-object v0

    .line 77
    .local v0, "visitor":Lio/noties/markwon/MarkwonVisitor;
    invoke-virtual {p1, v0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 79
    iget-object v1, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/MarkwonPlugin;

    .line 80
    .local v2, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-interface {v2, p1, v0}, Lio/noties/markwon/MarkwonPlugin;->afterRender(Lorg/commonmark/node/Node;Lio/noties/markwon/MarkwonVisitor;)V

    .line 81
    .end local v2    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_1

    .line 84
    :cond_1
    invoke-interface {v0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/noties/markwon/SpannableBuilder;->spannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 91
    .local v1, "spanned":Landroid/text/Spanned;
    return-object v1
.end method

.method public requirePlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 166
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->getPlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    .line 167
    .local v0, "plugin":Lio/noties/markwon/MarkwonPlugin;, "TP;"
    if-eqz v0, :cond_0

    .line 171
    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 168
    const-string v4, "Requested plugin `%s` is not registered with this Markwon instance"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMarkdown(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p2}, Lio/noties/markwon/MarkwonImpl;->toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/noties/markwon/MarkwonImpl;->setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V

    .line 114
    return-void
.end method

.method public setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Landroid/text/Spanned;

    .line 119
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 120
    .local v1, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-interface {v1, p1, p2}, Lio/noties/markwon/MarkwonPlugin;->beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V

    .line 121
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lio/noties/markwon/MarkwonImpl;->bufferType:Landroid/widget/TextView$BufferType;

    new-instance v2, Lio/noties/markwon/MarkwonImpl$1;

    invoke-direct {v2, p0, p1}, Lio/noties/markwon/MarkwonImpl$1;-><init>(Lio/noties/markwon/MarkwonImpl;Landroid/widget/TextView;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lio/noties/markwon/Markwon$TextSetter;->setText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 137
    :cond_1
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->bufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 140
    .restart local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-interface {v1, p1}, Lio/noties/markwon/MarkwonPlugin;->afterSetText(Landroid/widget/TextView;)V

    .line 141
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_1

    .line 143
    :cond_2
    :goto_2
    return-void
.end method

.method public toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->parse(Ljava/lang/String;)Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/noties/markwon/MarkwonImpl;->render(Lorg/commonmark/node/Node;)Landroid/text/Spanned;

    move-result-object v0

    .line 101
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/noties/markwon/MarkwonImpl;->fallbackToRawInputWhenEmpty:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 108
    :cond_0
    return-object v0
.end method
