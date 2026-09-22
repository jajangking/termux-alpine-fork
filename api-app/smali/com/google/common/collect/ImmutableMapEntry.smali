.class Lcom/google/common/collect/ImmutableMapEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;,
        Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 0

    .line 43
    new-array p0, p0, [Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method


# virtual methods
.method getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method isReusable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
