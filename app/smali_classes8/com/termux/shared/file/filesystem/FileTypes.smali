.class public Lcom/termux/shared/file/filesystem/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# static fields
.field public static final FILE_TYPE_ANY_FLAGS:I = 0x7fffffff

.field public static final FILE_TYPE_NORMAL_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFileTypeFlagsToNamesString(I)Ljava/lang/String;
    .locals 8
    .param p0, "fileTypeFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileTypeFlags"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v0, "fileTypeFlagsStringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/termux/shared/file/filesystem/FileType;

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 23
    .local v1, "fileTypes":[Lcom/termux/shared/file/filesystem/FileType;
    array-length v2, v1

    move v4, v3

    :goto_0
    const-string v5, ","

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 24
    .local v6, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v7

    and-int/2addr v7, p0

    if-lez v7, :cond_0

    .line 25
    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .end local v6    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "fileTypeFlagsString":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_2
    return-object v2
.end method

.method public static getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1
    .param p0, "fileAttributes"    # Lcom/termux/shared/file/filesystem/FileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileAttributes"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isRegularFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isFifo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0

    .line 113
    :cond_5
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0
.end method

.method public static getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filePath",
            "followLinks"
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/file/filesystem/FileAttributes;->get(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileAttributes;

    move-result-object v0

    .line 90
    .local v0, "fileAttributes":Lcom/termux/shared/file/filesystem/FileAttributes;
    invoke-static {v0}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    .end local v0    # "fileAttributes":Lcom/termux/shared/file/filesystem/FileAttributes;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENOENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get file type for file at path \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 95
    :cond_1
    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    return-object v1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    return-object v0
.end method
