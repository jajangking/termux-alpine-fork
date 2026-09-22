.class public final enum Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/android/SettingsProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingNamespace"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

.field public static final enum GLOBAL:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

.field public static final enum SECURE:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

.field public static final enum SYSTEM:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    const-string v1, "GLOBAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->GLOBAL:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    .line 21
    new-instance v1, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    const-string v2, "SECURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->SECURE:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    .line 24
    new-instance v2, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    const-string v3, "SYSTEM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->SYSTEM:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    .line 16
    filled-new-array {v0, v1, v2}, [Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->$VALUES:[Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;
    .locals 1

    .line 16
    const-class v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;
    .locals 1

    .line 16
    sget-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->$VALUES:[Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    invoke-virtual {v0}, [Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    return-object v0
.end method
