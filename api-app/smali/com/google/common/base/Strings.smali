.class public abstract Lcom/google/common/base/Strings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 143
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    if-ltz p1, :cond_0

    move v0, v1

    .line 146
    :cond_0
    const-string v1, "invalid count: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-nez p1, :cond_1

    .line 147
    const-string p0, ""

    :cond_1
    return-object p0

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v2, v1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    long-to-int p1, v2

    int-to-long v4, p1

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    .line 158
    new-array v2, p1, [C

    .line 159
    invoke-virtual {p0, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    sub-int p0, p1, v1

    if-ge v1, p0, :cond_3

    .line 162
    invoke-static {v2, v0, v2, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {v2, v0, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 155
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required array size too large: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
