.class public final enum Lcom/termux/shared/android/SettingsProviderUtils$SettingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/android/SettingsProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

.field public static final enum FLOAT:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

.field public static final enum INT:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

.field public static final enum LONG:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

.field public static final enum STRING:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

.field public static final enum URI:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->FLOAT:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    .line 30
    new-instance v1, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->INT:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    .line 31
    new-instance v2, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->LONG:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    .line 32
    new-instance v3, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v4, "STRING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->STRING:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    .line 33
    new-instance v4, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v5, "URI"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->URI:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    .line 28
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->$VALUES:[Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/android/SettingsProviderUtils$SettingType;
    .locals 1

    .line 28
    const-class v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/android/SettingsProviderUtils$SettingType;
    .locals 1

    .line 28
    sget-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->$VALUES:[Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    invoke-virtual {v0}, [Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    return-object v0
.end method
