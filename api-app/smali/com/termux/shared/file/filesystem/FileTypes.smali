.class public abstract Lcom/termux/shared/file/filesystem/FileTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
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

.method public static convertFileTypeFlagsToNamesString(I)Ljava/lang/String;
    .locals 8

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    sget-object v4, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    sget-object v7, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    filled-new-array/range {v1 .. v7}, [Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 23
    :goto_0
    const-string v4, ","

    const/4 v5, 0x7

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    .line 24
    invoke-virtual {v5}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    and-int/2addr v6, p0

    if-lez v6, :cond_0

    .line 25
    invoke-virtual {v5}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isRegularFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isSocket()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->SOCKET:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isFifo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isBlock()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 114
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 116
    :cond_6
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;
    .locals 2

    if-eqz p0, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/file/filesystem/FileAttributes;->get(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileAttributes;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENOENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get file type for file at path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 96
    :cond_1
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 87
    :cond_2
    :goto_0
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0
.end method
