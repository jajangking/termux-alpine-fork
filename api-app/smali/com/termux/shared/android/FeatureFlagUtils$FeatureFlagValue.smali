.class public final enum Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/android/FeatureFlagUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureFlagValue"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v1, 0x0

    const-string v2, "<unknown>"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 61
    new-instance v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v2, 0x1

    const-string v3, "<unsupported>"

    const-string v4, "UNSUPPORTED"

    invoke-direct {v1, v4, v2, v3}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 64
    new-instance v2, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v3, 0x2

    const-string v4, "true"

    const-string v5, "TRUE"

    invoke-direct {v2, v5, v3, v4}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 67
    new-instance v3, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v4, 0x3

    const-string v5, "false"

    const-string v6, "FALSE"

    invoke-direct {v3, v6, v4, v5}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 55
    filled-new-array {v0, v1, v2, v3}, [Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->$VALUES:[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 1

    .line 55
    const-class v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 1

    .line 55
    sget-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->$VALUES:[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    invoke-virtual {v0}, [Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->name:Ljava/lang/String;

    return-object v0
.end method
