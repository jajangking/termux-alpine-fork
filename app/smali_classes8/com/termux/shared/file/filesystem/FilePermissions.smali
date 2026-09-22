.class public final Lcom/termux/shared/file/filesystem/FilePermissions;
.super Ljava/lang/Object;
.source "FilePermissions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0, "perms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/termux/shared/file/filesystem/FilePermission;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 132
    const-class v0, Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 133
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/termux/shared/file/filesystem/FilePermission;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_8
    return-object v0

    .line 131
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/termux/shared/file/filesystem/FilePermission;>;"
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isR(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 94
    const/16 v0, 0x72

    invoke-static {p0, v0}, Lcom/termux/shared/file/filesystem/FilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method private static isSet(CC)Z
    .locals 2
    .param p0, "c"    # C
    .param p1, "setValue"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "setValue"
        }
    .end annotation

    .line 88
    if-ne p0, p1, :cond_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    .line 91
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isW(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 95
    const/16 v0, 0x77

    invoke-static {p0, v0}, Lcom/termux/shared/file/filesystem/FilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method private static isX(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 96
    const/16 v0, 0x78

    invoke-static {p0, v0}, Lcom/termux/shared/file/filesystem/FilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method public static toString(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/termux/shared/file/filesystem/FilePermission;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 77
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Lcom/termux/shared/file/filesystem/FilePermission;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 79
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/file/filesystem/FilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    .line 80
    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 81
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 80
    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/file/filesystem/FilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    .line 82
    sget-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 83
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 82
    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/file/filesystem/FilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static writeBits(Ljava/lang/StringBuilder;ZZZ)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "r"    # Z
    .param p2, "w"    # Z
    .param p3, "x"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "r",
            "w",
            "x"
        }
    .end annotation

    .line 46
    const/16 v0, 0x2d

    if-eqz p1, :cond_0

    .line 47
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :goto_0
    if-eqz p2, :cond_1

    .line 52
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_1
    if-eqz p3, :cond_2

    .line 57
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :goto_2
    return-void
.end method
