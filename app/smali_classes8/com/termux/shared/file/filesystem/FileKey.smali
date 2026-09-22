.class public Lcom/termux/shared/file/filesystem/FileKey;
.super Ljava/lang/Object;
.source "FileKey.java"


# instance fields
.field private final st_dev:J

.field private final st_ino:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "st_dev"    # J
    .param p3, "st_ino"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "st_dev",
            "st_ino"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_dev:J

    .line 39
    iput-wide p3, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_ino:J

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 50
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 51
    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/termux/shared/file/filesystem/FileKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 53
    return v2

    .line 54
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/termux/shared/file/filesystem/FileKey;

    .line 55
    .local v1, "other":Lcom/termux/shared/file/filesystem/FileKey;
    iget-wide v3, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_dev:J

    iget-wide v5, v1, Lcom/termux/shared/file/filesystem/FileKey;->st_dev:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_ino:J

    iget-wide v5, v1, Lcom/termux/shared/file/filesystem/FileKey;->st_ino:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 44
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_dev:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v3, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_ino:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "(dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_dev:J

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    const-string v2, ",ino="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/termux/shared/file/filesystem/FileKey;->st_ino:J

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
