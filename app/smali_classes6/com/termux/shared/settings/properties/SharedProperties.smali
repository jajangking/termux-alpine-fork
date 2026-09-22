.class public Lcom/termux/shared/settings/properties/SharedProperties;
.super Ljava/lang/Object;
.source "SharedProperties.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SharedProperties"

.field public static final MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAP_GENERIC_INVERTED_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProperties:Ljava/util/Properties;

.field private final mPropertiesFile:Ljava/io/File;

.field private final mPropertiesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 70
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 71
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    .line 75
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 77
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v4, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_INVERTED_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertiesFile"    # Ljava/io/File;
    .param p4, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "propertiesFile",
            "propertiesList",
            "sharedPropertiesParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/termux/shared/settings/properties/SharedPropertiesParser;",
            ")V"
        }
    .end annotation

    .line 93
    .local p3, "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesFile:Ljava/io/File;

    .line 96
    iput-object p3, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesList:Ljava/util/Set;

    .line 97
    iput-object p4, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 99
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    .line 101
    return-void
.end method

.method public static getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .param p3, "logErrorOnInvalidValue"    # Z
    .param p4, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "def",
            "logErrorOnInvalidValue",
            "logTag"
        }
    .end annotation

    .line 434
    sget-object v1, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p1}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "inputValue"    # Ljava/lang/Object;
    .param p3, "defaultOutputValue"    # Ljava/lang/Object;
    .param p4, "logErrorOnInvalidValue"    # Z
    .param p5, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "map",
            "inputValue",
            "defaultOutputValue",
            "logErrorOnInvalidValue",
            "logTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/BiMap<",
            "**>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 468
    .local p1, "map":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<**>;"
    invoke-interface {p1, p2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "outputValue":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 470
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 471
    .local v1, "defaultInputValue":Ljava/lang/Object;
    const-string v2, "\" for the key \""

    if-nez v1, :cond_0

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The default output value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" does not exist as a value in the BiMap passed to getDefaultIfNotInMap(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SharedProperties"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    .line 475
    const-string v3, "\" instead."

    const-string v4, "\" is invalid. Using default value \""

    const-string v5, "The value \""

    if-eqz p0, :cond_1

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_2
    :goto_0
    return-object p3

    .line 483
    .end local v1    # "defaultInputValue":Ljava/lang/Object;
    :cond_3
    return-object v0
.end method

.method public static getDefaultIfNotInRange(Ljava/lang/String;FFFFZZLjava/lang/String;)F
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "def"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "logErrorOnInvalidValue"    # Z
    .param p6, "ignoreErrorIfValueZero"    # Z
    .param p7, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "def",
            "min",
            "max",
            "logErrorOnInvalidValue",
            "ignoreErrorIfValueZero",
            "logTag"
        }
    .end annotation

    .line 532
    cmpg-float v0, p1, p3

    if-ltz v0, :cond_1

    cmpl-float v0, p1, p4

    if-lez v0, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    return p1

    .line 533
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    if-eqz p6, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    .line 534
    :cond_2
    const-string v0, "\" instead."

    const-string v1, " (inclusive). Using default value \""

    const-string v2, "-"

    const-string v3, "\" is not within the range "

    const-string v4, "The value \""

    if-eqz p0, :cond_3

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" for the key \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_4
    :goto_1
    return p2
.end method

.method public static getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "def"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "logErrorOnInvalidValue"    # Z
    .param p6, "ignoreErrorIfValueZero"    # Z
    .param p7, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "def",
            "min",
            "max",
            "logErrorOnInvalidValue",
            "ignoreErrorIfValueZero",
            "logTag"
        }
    .end annotation

    .line 503
    if-lt p1, p3, :cond_1

    if-le p1, p4, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    return p1

    .line 504
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    if-eqz p6, :cond_2

    if-eqz p1, :cond_4

    .line 505
    :cond_2
    const-string v0, "\" instead."

    const-string v1, " (inclusive). Using default value \""

    const-string v2, "-"

    const-string v3, "\" is not within the range "

    const-string v4, "The value \""

    if-eqz p0, :cond_3

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" for the key \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_4
    :goto_1
    return p2
.end method

.method public static getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "def"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 553
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "def":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getDefaultIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "def"
        }
    .end annotation

    .line 564
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method public static getInternalProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "propertiesFile",
            "key",
            "sharedPropertiesParser"
        }
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p3, p0, p2, v0}, Lcom/termux/shared/settings/properties/SharedPropertiesParser;->getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getInvertedBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .param p3, "logErrorOnInvalidValue"    # Z
    .param p4, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "def",
            "logErrorOnInvalidValue",
            "logTag"
        }
    .end annotation

    .line 449
    sget-object v1, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_INVERTED_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p1}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getMapCopy(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 413
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getPropertiesCopy(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 4
    .param p0, "inputProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProperties"
        }
    .end annotation

    .line 402
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 405
    .local v0, "outputProperties":Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 409
    :cond_1
    return-object v0
.end method

.method public static getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "propertiesFile"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 233
    .local v0, "properties":Ljava/util/Properties;
    const-string v1, "SharedProperties"

    if-nez p1, :cond_0

    .line 234
    const-string v2, "Not loading properties since file is null"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v0

    .line 239
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading properties from \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    .end local v2    # "in":Ljava/io/FileInputStream;
    nop

    .line 250
    return-object v0

    .line 239
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "properties":Ljava/util/Properties;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "propertiesFile":Ljava/io/File;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 243
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "properties":Ljava/util/Properties;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "propertiesFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p0, :cond_1

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open properties file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 246
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading properties file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "propertiesFile",
            "key",
            "def"
        }
    .end annotation

    .line 264
    invoke-static {p0, p1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isPropertyValueFalse(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "logErrorOnInvalidValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "propertiesFile",
            "key",
            "logErrorOnInvalidValue"
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SharedProperties"

    invoke-static {p2, v0, v1, p3, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getInvertedBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPropertyValueTrue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "logErrorOnInvalidValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "propertiesFile",
            "key",
            "logErrorOnInvalidValue"
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SharedProperties"

    invoke-static {p2, v0, v1, p3, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putToMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 337
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    const-string v1, "SharedProperties"

    if-nez p0, :cond_0

    .line 338
    const-string v2, "Map passed to SharedProperties.putToProperties() is null"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return v0

    .line 343
    :cond_0
    if-nez p1, :cond_1

    .line 344
    const-string v2, "Cannot put a null key into properties map"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return v0

    .line 348
    :cond_1
    const/4 v2, 0x0

    .line 349
    .local v2, "put":Z
    if-eqz p2, :cond_4

    .line 350
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 351
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/common/primitives/Primitives;->isWrapperType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 352
    :cond_2
    const/4 v2, 0x1

    .line 354
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    goto :goto_0

    .line 355
    :cond_4
    const/4 v2, 0x1

    .line 358
    :goto_0
    if-eqz v2, :cond_5

    .line 359
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot put a non-primitive value for the key \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" into properties map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return v0
.end method

.method public static putToProperties(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "properties",
            "key",
            "value"
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    const-string v1, "SharedProperties"

    if-nez p0, :cond_0

    .line 381
    const-string v2, "Properties passed to SharedProperties.putToProperties() is null"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return v0

    .line 386
    :cond_0
    if-nez p1, :cond_1

    .line 387
    const-string v2, "Cannot put a null key into properties"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return v0

    .line 391
    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 392
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return v0

    .line 395
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 574
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInternalProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInternalProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 212
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProperties(Z)Ljava/util/Properties;
    .locals 3
    .param p1, "cached"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cached"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    if-eqz p1, :cond_1

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    invoke-static {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "cached"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadPropertiesFromDisk()V
    .locals 10

    .line 110
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v1

    .line 116
    .local v1, "properties":Ljava/util/Properties;
    if-nez v1, :cond_0

    .line 117
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    move-object v1, v2

    .line 119
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 122
    .local v3, "newProperties":Ljava/util/Properties;
    iget-object v4, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesList:Ljava/util/Set;

    .line 123
    .local v4, "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 124
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v5

    move-object v4, v5

    .line 128
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 129
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    iget-object v9, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mContext:Landroid/content/Context;

    invoke-interface {v8, v9, v6, v7}, Lcom/termux/shared/settings/properties/SharedPropertiesParser;->getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 138
    .local v8, "internalValue":Ljava/lang/Object;
    invoke-static {v2, v6, v8}, Lcom/termux/shared/settings/properties/SharedProperties;->putToMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 139
    invoke-static {v3, v6, v7}, Lcom/termux/shared/settings/properties/SharedProperties;->putToProperties(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 143
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "internalValue":Ljava/lang/Object;
    :cond_3
    iput-object v2, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    .line 144
    iput-object v3, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    .line 145
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "newProperties":Ljava/util/Properties;
    .end local v4    # "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
