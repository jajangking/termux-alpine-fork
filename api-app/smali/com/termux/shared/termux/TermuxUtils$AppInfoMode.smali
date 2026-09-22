.class public final enum Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppInfoMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

.field public static final enum TERMUX_AND_CALLING_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

.field public static final enum TERMUX_AND_PLUGIN_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

.field public static final enum TERMUX_AND_PLUGIN_PACKAGES:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

.field public static final enum TERMUX_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

.field public static final enum TERMUX_PLUGIN_PACKAGES:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const-string v1, "TERMUX_PACKAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 44
    new-instance v1, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const-string v2, "TERMUX_AND_PLUGIN_PACKAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 46
    new-instance v2, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const-string v3, "TERMUX_AND_PLUGIN_PACKAGES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGES:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 48
    new-instance v3, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const-string v4, "TERMUX_PLUGIN_PACKAGES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_PLUGIN_PACKAGES:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 50
    new-instance v4, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const-string v5, "TERMUX_AND_CALLING_PACKAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_CALLING_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 40
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->$VALUES:[Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    .locals 1

    .line 40
    const-class v0, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    .locals 1

    .line 40
    sget-object v0, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->$VALUES:[Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    return-object v0
.end method
