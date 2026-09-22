.class public final enum Lcom/termux/shared/file/filesystem/FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum BLOCK:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum FIFO:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum REGULAR:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum SOCKET:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 6
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const/4 v1, 0x0

    const-string v2, "no exist"

    const-string v3, "NO_EXIST"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    .line 7
    new-instance v1, Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x1

    const-string v3, "regular"

    const-string v4, "REGULAR"

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 8
    new-instance v2, Lcom/termux/shared/file/filesystem/FileType;

    const/4 v3, 0x2

    const-string v4, "directory"

    const-string v5, "DIRECTORY"

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 9
    new-instance v3, Lcom/termux/shared/file/filesystem/FileType;

    const-string v4, "SYMLINK"

    const/4 v5, 0x3

    const-string v6, "symlink"

    const/4 v7, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 10
    new-instance v4, Lcom/termux/shared/file/filesystem/FileType;

    const-string v5, "SOCKET"

    const-string v6, "socket"

    const/16 v8, 0x8

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/termux/shared/file/filesystem/FileType;->SOCKET:Lcom/termux/shared/file/filesystem/FileType;

    .line 11
    new-instance v5, Lcom/termux/shared/file/filesystem/FileType;

    const-string v6, "character"

    const/16 v7, 0x10

    const-string v9, "CHARACTER"

    const/4 v10, 0x5

    invoke-direct {v5, v9, v10, v6, v7}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    .line 12
    new-instance v6, Lcom/termux/shared/file/filesystem/FileType;

    const-string v7, "fifo"

    const/16 v9, 0x20

    const-string v10, "FIFO"

    const/4 v11, 0x6

    invoke-direct {v6, v10, v11, v7, v9}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    .line 13
    new-instance v7, Lcom/termux/shared/file/filesystem/FileType;

    const-string v9, "block"

    const/16 v10, 0x40

    const-string v11, "BLOCK"

    const/4 v12, 0x7

    invoke-direct {v7, v11, v12, v9, v10}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    .line 14
    new-instance v9, Lcom/termux/shared/file/filesystem/FileType;

    const-string v10, "unknown"

    const/16 v11, 0x80

    const-string v12, "UNKNOWN"

    invoke-direct {v9, v12, v8, v10, v11}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    move-object v8, v9

    .line 4
    filled-new-array/range {v0 .. v8}, [Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->$VALUES:[Lcom/termux/shared/file/filesystem/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/termux/shared/file/filesystem/FileType;->name:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/termux/shared/file/filesystem/FileType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1

    .line 4
    const-class v0, Lcom/termux/shared/file/filesystem/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/file/filesystem/FileType;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/file/filesystem/FileType;
    .locals 1

    .line 4
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->$VALUES:[Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, [Lcom/termux/shared/file/filesystem/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/file/filesystem/FileType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileType;->value:I

    return v0
.end method
