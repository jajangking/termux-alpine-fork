.class public abstract Lio/noties/markwon/utils/DumpNodes;
.super Ljava/lang/Object;
.source "DumpNodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;,
        Lio/noties/markwon/utils/DumpNodes$Indent;,
        Lio/noties/markwon/utils/DumpNodes$NodeProcessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$200(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V
    .locals 0
    .param p0, "x0"    # Lorg/commonmark/node/Visitor;
    .param p1, "x1"    # Lorg/commonmark/node/Node;

    .line 16
    invoke-static {p0, p1}, Lio/noties/markwon/utils/DumpNodes;->visitChildren(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public static dump(Lorg/commonmark/node/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lorg/commonmark/node/Node;

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/noties/markwon/utils/DumpNodes;->dump(Lorg/commonmark/node/Node;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dump(Lorg/commonmark/node/Node;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)Ljava/lang/String;
    .locals 7
    .param p0, "node"    # Lorg/commonmark/node/Node;
    .param p1, "nodeProcessor"    # Lio/noties/markwon/utils/DumpNodes$NodeProcessor;

    .line 36
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 37
    move-object v1, p1

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;

    invoke-direct {v1, v0}, Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;-><init>(Lio/noties/markwon/utils/DumpNodes$1;)V

    :goto_0
    nop

    .line 40
    .local v1, "processor":Lio/noties/markwon/utils/DumpNodes$NodeProcessor;
    new-instance v2, Lio/noties/markwon/utils/DumpNodes$Indent;

    invoke-direct {v2, v0}, Lio/noties/markwon/utils/DumpNodes$Indent;-><init>(Lio/noties/markwon/utils/DumpNodes$1;)V

    move-object v0, v2

    .line 41
    .local v0, "indent":Lio/noties/markwon/utils/DumpNodes$Indent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-class v3, Lorg/commonmark/node/Visitor;

    .line 43
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/commonmark/node/Visitor;

    aput-object v6, v4, v5

    new-instance v5, Lio/noties/markwon/utils/DumpNodes$1;

    invoke-direct {v5, v0, v2, v1}, Lio/noties/markwon/utils/DumpNodes$1;-><init>(Lio/noties/markwon/utils/DumpNodes$Indent;Ljava/lang/StringBuilder;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)V

    .line 42
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/node/Visitor;

    .line 73
    .local v3, "visitor":Lorg/commonmark/node/Visitor;
    invoke-virtual {p0, v3}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static visitChildren(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V
    .locals 2
    .param p0, "visitor"    # Lorg/commonmark/node/Visitor;
    .param p1, "parent"    # Lorg/commonmark/node/Node;

    .line 102
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 103
    .local v0, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 107
    .local v1, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v0, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 108
    move-object v0, v1

    .line 109
    .end local v1    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method
