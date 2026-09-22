.class Lio/noties/markwon/SoftBreakAddsNewLinePlugin$1;
.super Ljava/lang/Object;
.source "SoftBreakAddsNewLinePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/SoftBreakAddsNewLinePlugin;->configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/SoftLineBreak;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/SoftBreakAddsNewLinePlugin;


# direct methods
.method constructor <init>(Lio/noties/markwon/SoftBreakAddsNewLinePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lio/noties/markwon/SoftBreakAddsNewLinePlugin;

    .line 19
    iput-object p1, p0, Lio/noties/markwon/SoftBreakAddsNewLinePlugin$1;->this$0:Lio/noties/markwon/SoftBreakAddsNewLinePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 19
    check-cast p2, Lorg/commonmark/node/SoftLineBreak;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/SoftBreakAddsNewLinePlugin$1;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/SoftLineBreak;)V

    return-void
.end method

.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/SoftLineBreak;)V
    .locals 0
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "softLineBreak"    # Lorg/commonmark/node/SoftLineBreak;

    .line 22
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 23
    return-void
.end method
