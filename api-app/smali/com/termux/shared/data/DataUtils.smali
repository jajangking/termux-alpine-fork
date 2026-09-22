.class public abstract Lcom/termux/shared/data/DataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/termux/shared/data/DataUtils;->HEX_ARRAY:[C

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 124
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 125
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 126
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    .line 127
    sget-object v5, Lcom/termux/shared/data/DataUtils;->HEX_ARRAY:[C

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 128
    aget-char v2, v5, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static getFloatFromString(Ljava/lang/String;F)F
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 80
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static getIntFromString(Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 99
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static getSerializedSize(Ljava/io/Serializable;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 247
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 251
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    add-int/lit8 p1, p1, -0xc

    :cond_1
    if-ltz p1, :cond_5

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    if-eqz p3, :cond_4

    const/16 p1, 0xa

    .line 39
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_4

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p1, p3, :cond_4

    add-int/lit8 p2, p1, 0x1

    .line 44
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p4, :cond_5

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(truncated) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
