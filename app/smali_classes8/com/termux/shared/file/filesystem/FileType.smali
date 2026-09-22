.class public final enum Lcom/termux/shared/file/filesystem/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/file/filesystem/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum BLOCK:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum FIFO:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum REGULAR:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/file/filesystem/FileType;
    .locals 3

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/termux/shared/file/filesystem/FileType;

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "NO_EXIST"

    const/4 v2, 0x0

    const-string v3, "no exist"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    .line 7
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "REGULAR"

    const/4 v2, 0x1

    const-string v3, "regular"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 8
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x2

    const-string v3, "directory"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 9
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "SYMLINK"

    const/4 v2, 0x3

    const-string v3, "symlink"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 10
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "CHARACTER"

    const-string v2, "character"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    .line 11
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "FIFO"

    const/4 v2, 0x5

    const-string v3, "fifo"

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    .line 12
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "BLOCK"

    const/4 v2, 0x6

    const-string v3, "block"

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    .line 13
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "unknown"

    const/16 v4, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    .line 4
    invoke-static {}, Lcom/termux/shared/file/filesystem/FileType;->$values()[Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->$VALUES:[Lcom/termux/shared/file/filesystem/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/termux/shared/file/filesystem/FileType;->name:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/termux/shared/file/filesystem/FileType;->value:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/file/filesystem/FileType;
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

    .line 4
    const-class v0, Lcom/termux/shared/file/filesystem/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/file/filesystem/FileType;

    return-object v0
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

    .line 24
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileType;->value:I

    return v0
.end method
