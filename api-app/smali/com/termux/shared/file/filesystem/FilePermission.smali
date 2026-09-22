.class public final enum Lcom/termux/shared/file/filesystem/FilePermission;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 46
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 51
    new-instance v1, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v2, "OWNER_WRITE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 56
    new-instance v2, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v3, "OWNER_EXECUTE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 61
    new-instance v3, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v4, "GROUP_READ"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 66
    new-instance v4, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v5, "GROUP_WRITE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 71
    new-instance v5, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v6, "GROUP_EXECUTE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 76
    new-instance v6, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v7, "OTHERS_READ"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 81
    new-instance v7, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v8, "OTHERS_WRITE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 86
    new-instance v8, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v9, "OTHERS_EXECUTE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 41
    filled-new-array/range {v0 .. v8}, [Lcom/termux/shared/file/filesystem/FilePermission;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->$VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/file/filesystem/FilePermission;
    .locals 1

    .line 41
    const-class v0, Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/file/filesystem/FilePermission;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/file/filesystem/FilePermission;
    .locals 1

    .line 41
    sget-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->$VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v0}, [Lcom/termux/shared/file/filesystem/FilePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/file/filesystem/FilePermission;

    return-object v0
.end method
