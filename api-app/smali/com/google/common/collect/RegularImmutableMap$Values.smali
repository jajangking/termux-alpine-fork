.class final Lcom/google/common/collect/RegularImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    return v0
.end method
