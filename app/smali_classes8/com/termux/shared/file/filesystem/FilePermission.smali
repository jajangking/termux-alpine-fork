.class public final enum Lcom/termux/shared/file/filesystem/FilePermission;
.super Ljava/lang/Enum;
.source "FilePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/file/filesystem/FilePermission;",
        ">;"
    }
.end annotation


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
.method private static synthetic $values()[Lcom/termux/shared/file/filesystem/FilePermission;
    .locals 3

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/termux/shared/file/filesystem/FilePermission;

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 51
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OWNER_WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 56
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OWNER_EXECUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 61
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "GROUP_READ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 66
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "GROUP_WRITE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 71
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "GROUP_EXECUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 76
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OTHERS_READ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 81
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OTHERS_WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 86
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OTHERS_EXECUTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 41
    invoke-static {}, Lcom/termux/shared/file/filesystem/FilePermission;->$values()[Lcom/termux/shared/file/filesystem/FilePermission;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->$VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/file/filesystem/FilePermission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/file/filesystem/FilePermission;

    return-object v0
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
