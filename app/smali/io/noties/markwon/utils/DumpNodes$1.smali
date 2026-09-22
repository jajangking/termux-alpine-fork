.class Lio/noties/markwon/utils/DumpNodes$1;
.super Ljava/lang/Object;
.source "DumpNodes.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/utils/DumpNodes;->dump(Lorg/commonmark/node/Node;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Ljava/lang/StringBuilder;

.field final synthetic val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

.field final synthetic val$processor:Lio/noties/markwon/utils/DumpNodes$NodeProcessor;


# direct methods
.method constructor <init>(Lio/noties/markwon/utils/DumpNodes$Indent;Ljava/lang/StringBuilder;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    iput-object p2, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$processor:Lio/noties/markwon/utils/DumpNodes$NodeProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lorg/commonmark/node/Node;

    .line 52
    .local v0, "argument":Lorg/commonmark/node/Node;
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    iget-object v2, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lio/noties/markwon/utils/DumpNodes$Indent;->appendTo(Ljava/lang/StringBuilder;)V

    .line 55
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$processor:Lio/noties/markwon/utils/DumpNodes$NodeProcessor;

    invoke-interface {v2, v0}, Lio/noties/markwon/utils/DumpNodes$NodeProcessor;->process(Lorg/commonmark/node/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v2, " [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    invoke-virtual {v1}, Lio/noties/markwon/utils/DumpNodes$Indent;->increment()V

    .line 62
    move-object v1, p1

    check-cast v1, Lorg/commonmark/node/Visitor;

    invoke-static {v1, v0}, Lio/noties/markwon/utils/DumpNodes;->access$200(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V

    .line 63
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    invoke-virtual {v1}, Lio/noties/markwon/utils/DumpNodes$Indent;->decrement()V

    .line 64
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    iget-object v2, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lio/noties/markwon/utils/DumpNodes$Indent;->appendTo(Ljava/lang/StringBuilder;)V

    .line 65
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
