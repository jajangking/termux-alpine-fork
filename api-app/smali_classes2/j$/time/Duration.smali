.class public final Lj$/time/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/Duration;


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 139
    new-instance v0, Lj$/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Duration;-><init>(JI)V

    sput-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    const-wide/32 v0, 0x3b9aca00

    .line 147
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 151
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    .line 152
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-wide p1, p0, Lj$/time/Duration;->a:J

    .line 518
    iput p3, p0, Lj$/time/Duration;->b:I

    return-void
.end method

.method public static c(JJ)Lj$/time/Duration;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    .line 245
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p0

    .line 246
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 504
    sget-object p0, Lj$/time/Duration;->c:Lj$/time/Duration;

    goto :goto_0

    .line 506
    :cond_0
    new-instance p3, Lj$/time/Duration;

    invoke-direct {p3, p0, p1, p2}, Lj$/time/Duration;-><init>(JI)V

    move-object p0, p3

    :goto_0
    return-object p0
.end method

.method public static ofMillis(J)Lj$/time/Duration;
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 260
    div-long v2, p0, v0

    .line 261
    rem-long/2addr p0, v0

    long-to-int p0, p0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x3e8

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    :cond_0
    const p1, 0xf4240

    mul-int/2addr p0, p1

    int-to-long v0, p0

    or-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    .line 504
    sget-object p0, Lj$/time/Duration;->c:Lj$/time/Duration;

    goto :goto_0

    .line 506
    :cond_1
    new-instance p1, Lj$/time/Duration;

    invoke-direct {p1, v2, v3, p0}, Lj$/time/Duration;-><init>(JI)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 633
    iget v0, p0, Lj$/time/Duration;->b:I

    return v0
.end method

.method public final b()J
    .locals 2

    .line 615
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    return-wide v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 133
    check-cast p1, Lj$/time/Duration;

    .line 1207
    iget-wide v0, p1, Lj$/time/Duration;->a:J

    iget-wide v2, p0, Lj$/time/Duration;->a:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1211
    :cond_0
    iget v0, p0, Lj$/time/Duration;->b:I

    iget p1, p1, Lj$/time/Duration;->b:I

    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1228
    :cond_0
    instance-of v1, p1, Lj$/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1229
    check-cast p1, Lj$/time/Duration;

    .line 1230
    iget-wide v3, p1, Lj$/time/Duration;->a:J

    iget-wide v5, p0, Lj$/time/Duration;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    iget v1, p0, Lj$/time/Duration;->b:I

    iget p1, p1, Lj$/time/Duration;->b:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    .line 1243
    iget-wide v1, p0, Lj$/time/Duration;->a:J

    ushr-long v3, v1, v0

    xor-long v0, v1, v3

    long-to-int v0, v0

    iget v1, p0, Lj$/time/Duration;->b:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public toMillis()J
    .locals 4

    .line 1175
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1176
    iget v2, p0, Lj$/time/Duration;->b:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1271
    sget-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    if-ne p0, v0, :cond_0

    .line 1272
    const-string v0, "PT0S"

    return-object v0

    .line 1274
    :cond_0
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    .line 1275
    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 1276
    rem-long/2addr v0, v6

    long-to-int v0, v0

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1278
    const-string v3, "PT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 1280
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    .line 1283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    :cond_2
    iget v2, p0, Lj$/time/Duration;->b:I

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 1286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-gez v0, :cond_5

    if-lez v2, :cond_5

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 1290
    const-string v3, "-0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 1292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1295
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-lez v2, :cond_8

    .line 1298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gez v0, :cond_6

    const-wide/32 v4, 0x77359400

    int-to-long v6, v2

    sub-long/2addr v4, v6

    .line 1300
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    int-to-long v4, v2

    const-wide/32 v6, 0x3b9aca00

    add-long/2addr v4, v6

    .line 1302
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1304
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_7

    .line 1305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x2e

    .line 1307
    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_8
    const/16 v0, 0x53

    .line 1309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
