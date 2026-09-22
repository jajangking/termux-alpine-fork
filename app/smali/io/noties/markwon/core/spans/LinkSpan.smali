.class public Lio/noties/markwon/core/spans/LinkSpan;
.super Landroid/text/style/URLSpan;
.source "LinkSpan.java"


# instance fields
.field private final link:Ljava/lang/String;

.field private final resolver:Lio/noties/markwon/LinkResolver;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;Lio/noties/markwon/LinkResolver;)V
    .locals 0
    .param p1, "theme"    # Lio/noties/markwon/core/MarkwonTheme;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "resolver"    # Lio/noties/markwon/LinkResolver;

    .line 22
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lio/noties/markwon/core/spans/LinkSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 24
    iput-object p2, p0, Lio/noties/markwon/core/spans/LinkSpan;->link:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lio/noties/markwon/core/spans/LinkSpan;->resolver:Lio/noties/markwon/LinkResolver;

    .line 26
    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->link:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .line 30
    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->resolver:Lio/noties/markwon/LinkResolver;

    iget-object v1, p0, Lio/noties/markwon/core/spans/LinkSpan;->link:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lio/noties/markwon/LinkResolver;->resolve(Landroid/view/View;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 35
    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0, p1}, Lio/noties/markwon/core/MarkwonTheme;->applyLinkStyle(Landroid/text/TextPaint;)V

    .line 36
    return-void
.end method
