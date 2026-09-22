.class public abstract Lio/noties/markwon/recycler/MarkwonAdapter$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/recycler/MarkwonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Entry"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindHolder(Lio/noties/markwon/Markwon;Lio/noties/markwon/recycler/MarkwonAdapter$Holder;Lorg/commonmark/node/Node;)V
.end method

.method public abstract clear()V
.end method

.method public abstract createHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lio/noties/markwon/recycler/MarkwonAdapter$Holder;
.end method

.method public id(Lorg/commonmark/node/Node;)J
    .locals 2

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public onViewRecycled(Lio/noties/markwon/recycler/MarkwonAdapter$Holder;)V
    .locals 0

    return-void
.end method
