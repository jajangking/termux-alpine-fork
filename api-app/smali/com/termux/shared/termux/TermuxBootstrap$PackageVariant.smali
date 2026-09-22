.class public final enum Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageVariant"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

.field public static final enum APT_ANDROID_5:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

.field public static final enum APT_ANDROID_7:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 180
    new-instance v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const/4 v1, 0x0

    const-string v2, "apt-android-7"

    const-string v3, "APT_ANDROID_7"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_7:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    .line 183
    new-instance v1, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const/4 v2, 0x1

    const-string v3, "apt-android-5"

    const-string v4, "APT_ANDROID_5"

    invoke-direct {v1, v4, v2, v3}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_5:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    .line 177
    filled-new-array {v0, v1}, [Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput-object p3, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    .locals 1

    .line 177
    const-class v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    .locals 1

    .line 177
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    return-object v0
.end method
