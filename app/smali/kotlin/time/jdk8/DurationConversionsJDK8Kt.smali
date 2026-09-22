.class public final Lkotlin/time/jdk8/DurationConversionsJDK8Kt;
.super Ljava/lang/Object;
.source "DurationConversions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDurationConversions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n+ 2 Duration.kt\nkotlin/time/Duration\n*L\n1#1,35:1\n437#2,2:36\n*S KotlinDebug\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n*L\n35#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u0015\u0010\u0005\u001a\u00020\u0002*\u00020\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "toJavaDuration",
        "Ljava/time/Duration;",
        "Lkotlin/time/Duration;",
        "toJavaDuration-LRDsOJo",
        "(J)Ljava/time/Duration;",
        "toKotlinDuration",
        "(Ljava/time/Duration;)J",
        "kotlin-stdlib-jdk8"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    pn = "kotlin.time"
.end annotation


# direct methods
.method private static final toJavaDuration-LRDsOJo(J)Ljava/time/Duration;
    .locals 10
    .param p0, "$this$toJavaDuration"    # J

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$toJavaDuration-LRDsOJo":I
    move-wide v1, p0

    .local v1, "$this$iv":J
    const/4 v3, 0x0

    .line 36
    .local v3, "$i$f$toComponents":I
    nop

    .line 37
    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v4

    .local v4, "seconds":J
    invoke-static {v1, v2}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v6

    .local v6, "nanoseconds":I
    const/4 v7, 0x0

    .line 35
    .local v7, "$i$a$-toComponents-DurationConversionsJDK8Kt$toJavaDuration$1":I
    int-to-long v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v1

    .end local v1    # "$this$iv":J
    .end local v3    # "$i$f$toComponents":I
    .end local v4    # "seconds":J
    .end local v6    # "nanoseconds":I
    .end local v7    # "$i$a$-toComponents-DurationConversionsJDK8Kt$toJavaDuration$1":I
    const-string v2, "toComponents { seconds, \u2026, nanoseconds.toLong()) }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toKotlinDuration(Ljava/time/Duration;)J
    .locals 5
    .param p0, "$this$toKotlinDuration"    # Ljava/time/Duration;

    const/4 v0, 0x0

    .line 23
    .local v0, "$i$f$toKotlinDuration":I
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lkotlin/time/Duration$Companion;->seconds-UwyO8pc(J)J

    move-result-wide v1

    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v4

    invoke-virtual {v3, v4}, Lkotlin/time/Duration$Companion;->nanoseconds-UwyO8pc(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v1

    return-wide v1
.end method
