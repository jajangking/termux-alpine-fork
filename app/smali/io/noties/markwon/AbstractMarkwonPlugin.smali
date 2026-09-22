.class public abstract Lio/noties/markwon/AbstractMarkwonPlugin;
.super Ljava/lang/Object;
.source "AbstractMarkwonPlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonPlugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRender(Lorg/commonmark/node/Node;Lio/noties/markwon/MarkwonVisitor;)V
    .locals 0
    .param p1, "node"    # Lorg/commonmark/node/Node;
    .param p2, "visitor"    # Lio/noties/markwon/MarkwonVisitor;

    .line 66
    return-void
.end method

.method public afterSetText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method public beforeRender(Lorg/commonmark/node/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 61
    return-void
.end method

.method public beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Landroid/text/Spanned;

    .line 71
    return-void
.end method

.method public configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
    .locals 0
    .param p1, "registry"    # Lio/noties/markwon/MarkwonPlugin$Registry;

    .line 25
    return-void
.end method

.method public configureConfiguration(Lio/noties/markwon/MarkwonConfiguration$Builder;)V
    .locals 0
    .param p1, "builder"    # Lio/noties/markwon/MarkwonConfiguration$Builder;

    .line 40
    return-void
.end method

.method public configureParser(Lorg/commonmark/parser/Parser$Builder;)V
    .locals 0
    .param p1, "builder"    # Lorg/commonmark/parser/Parser$Builder;

    .line 30
    return-void
.end method

.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 0
    .param p1, "builder"    # Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 50
    return-void
.end method

.method public configureTheme(Lio/noties/markwon/core/MarkwonTheme$Builder;)V
    .locals 0
    .param p1, "builder"    # Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 35
    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 0
    .param p1, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 45
    return-void
.end method

.method public processMarkdown(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "markdown"    # Ljava/lang/String;

    .line 55
    return-object p1
.end method
