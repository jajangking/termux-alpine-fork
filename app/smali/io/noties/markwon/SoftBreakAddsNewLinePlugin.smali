.class public Lio/noties/markwon/SoftBreakAddsNewLinePlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "SoftBreakAddsNewLinePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method public static create()Lio/noties/markwon/SoftBreakAddsNewLinePlugin;
    .locals 1

    .line 14
    new-instance v0, Lio/noties/markwon/SoftBreakAddsNewLinePlugin;

    invoke-direct {v0}, Lio/noties/markwon/SoftBreakAddsNewLinePlugin;-><init>()V

    return-object v0
.end method


# virtual methods
.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 19
    const-class v0, Lorg/commonmark/node/SoftLineBreak;

    new-instance v1, Lio/noties/markwon/SoftBreakAddsNewLinePlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/SoftBreakAddsNewLinePlugin$1;-><init>(Lio/noties/markwon/SoftBreakAddsNewLinePlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 25
    return-void
.end method
