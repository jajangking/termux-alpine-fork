.class abstract Lcom/google/common/collect/ImmutableAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->delegateCollection()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract delegateCollection()Lcom/google/common/collect/ImmutableCollection;
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->delegateCollection()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->delegateCollection()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
