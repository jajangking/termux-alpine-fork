.class public final enum Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageManager"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

.field public static final enum APT:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    new-instance v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    const/4 v1, 0x0

    const-string v2, "apt"

    const-string v3, "APT"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->APT:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    .line 124
    filled-new-array {v0}, [Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput-object p3, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    .locals 1

    .line 124
    const-class v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    .locals 1

    .line 124
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    return-object v0
.end method
