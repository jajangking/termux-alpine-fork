.class public abstract Lio/noties/markwon/recycler/MarkwonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MarkwonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/recycler/MarkwonAdapter$Holder;,
        Lio/noties/markwon/recycler/MarkwonAdapter$Entry;,
        Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static builder(II)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    .locals 1
    .param p0, "defaultEntryLayoutResId"    # I
    .param p1, "defaultEntryTextViewResId"    # I

    .line 52
    invoke-static {p0, p1}, Lio/noties/markwon/recycler/SimpleEntry;->create(II)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/recycler/MarkwonAdapter;->builder(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "+",
            "Lorg/commonmark/node/Node;",
            "+",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;)",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Builder;"
        }
    .end annotation

    .line 58
    .local p0, "defaultEntry":Lio/noties/markwon/recycler/MarkwonAdapter$Entry;, "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<+Lorg/commonmark/node/Node;+Lio/noties/markwon/recycler/MarkwonAdapter$Holder;>;"
    new-instance v0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;

    invoke-direct {v0, p0}, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;-><init>(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)V

    return-object v0
.end method

.method public static builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    .locals 1
    .param p0, "defaultEntryLayoutResId"    # I

    .line 39
    invoke-static {p0}, Lio/noties/markwon/recycler/SimpleEntry;->createTextViewIsRoot(I)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/recycler/MarkwonAdapter;->builder(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Lio/noties/markwon/recycler/MarkwonAdapter;
    .locals 1
    .param p0, "defaultEntryLayoutResId"    # I
    .param p1, "defaultEntryTextViewResId"    # I

    .line 81
    invoke-static {p0, p1}, Lio/noties/markwon/recycler/MarkwonAdapter;->builder(II)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v0

    invoke-interface {v0}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "+",
            "Lorg/commonmark/node/Node;",
            "+",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;)",
            "Lio/noties/markwon/recycler/MarkwonAdapter;"
        }
    .end annotation

    .line 93
    .local p0, "defaultEntry":Lio/noties/markwon/recycler/MarkwonAdapter$Entry;, "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<+Lorg/commonmark/node/Node;+Lio/noties/markwon/recycler/MarkwonAdapter$Holder;>;"
    invoke-static {p0}, Lio/noties/markwon/recycler/MarkwonAdapter;->builder(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v0

    invoke-interface {v0}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static createTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter;
    .locals 1
    .param p0, "defaultEntryLayoutResId"    # I

    .line 63
    invoke-static {p0}, Lio/noties/markwon/recycler/MarkwonAdapter;->builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v0

    .line 63
    return-object v0
.end method


# virtual methods
.method public abstract getNodeViewType(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setMarkdown(Lio/noties/markwon/Markwon;Ljava/lang/String;)V
.end method

.method public abstract setParsedMarkdown(Lio/noties/markwon/Markwon;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/Markwon;",
            "Ljava/util/List<",
            "Lorg/commonmark/node/Node;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setParsedMarkdown(Lio/noties/markwon/Markwon;Lorg/commonmark/node/Node;)V
.end method
