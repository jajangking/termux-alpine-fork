.class public abstract Lorg/apache/commons/io/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final ONE_EB_BI:Ljava/math/BigInteger;

.field public static final ONE_GB_BI:Ljava/math/BigInteger;

.field public static final ONE_KB_BI:Ljava/math/BigInteger;

.field public static final ONE_MB_BI:Ljava/math/BigInteger;

.field public static final ONE_PB_BI:Ljava/math/BigInteger;

.field public static final ONE_TB_BI:Ljava/math/BigInteger;

.field public static final ONE_YB:Ljava/math/BigInteger;

.field public static final ONE_ZB:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v0, 0x400

    .line 93
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    .line 105
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    .line 122
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    .line 134
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    .line 146
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    .line 158
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;

    .line 163
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/high16 v3, 0x1000000000000000L

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_ZB:Ljava/math/BigInteger;

    .line 168
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_YB:Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 173
    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .locals 4

    .line 1674
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->verifiedListFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    .line 1677
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 1679
    :try_start_0
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 1686
    :cond_1
    throw v1
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 2

    .line 1570
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1574
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1575
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    .line 1578
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1579
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1581
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceDelete(Ljava/io/File;)V
    .locals 3

    .line 2371
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 2374
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 2375
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 2377
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2379
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2381
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private static isBrokenSymlink(Ljava/io/File;)Z
    .locals 3

    .line 3125
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3129
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 3130
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3137
    :cond_1
    new-instance v2, Lorg/apache/commons/io/FileUtils$1;

    invoke-direct {v2, p0}, Lorg/apache/commons/io/FileUtils$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3144
    array-length p0, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 3

    .line 3089
    invoke-static {}, Lorg/apache/commons/io/Java7Support;->isAtLeastJava7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3091
    invoke-static {p0}, Lorg/apache/commons/io/Java7Support;->isSymLink(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p0, :cond_4

    .line 3097
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3101
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v1, p0

    goto :goto_0

    .line 3104
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 3105
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3108
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3109
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isBrokenSymlink(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 3095
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "File must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static verifiedListFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 3

    .line 1697
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1702
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1707
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1709
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list contents of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1703
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a directory"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1698
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
