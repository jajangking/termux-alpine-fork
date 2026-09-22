.class Lio/noties/markwon/core/CorePlugin$12;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 478
    check-cast p2, Lorg/commonmark/node/SoftLineBreak;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$12;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/SoftLineBreak;)V

    return-void
.end method

.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/SoftLineBreak;)V
    .locals 2
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "softLineBreak"    # Lorg/commonmark/node/SoftLineBreak;

    .line 481
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 482
    return-void
.end method
