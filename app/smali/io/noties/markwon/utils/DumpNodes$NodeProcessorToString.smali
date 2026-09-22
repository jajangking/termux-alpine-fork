.class Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;
.super Ljava/lang/Object;
.source "DumpNodes.java"

# interfaces
.implements Lio/noties/markwon/utils/DumpNodes$NodeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/utils/DumpNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeProcessorToString"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/noties/markwon/utils/DumpNodes$1;)V
    .locals 0
    .param p1, "x0"    # Lio/noties/markwon/utils/DumpNodes$1;

    .line 112
    invoke-direct {p0}, Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/commonmark/node/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 116
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
