.class public final Lcom/termux/shared/file/filesystem/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"


# instance fields
.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final value:J

.field private valueAsString:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "unit"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/termux/shared/file/filesystem/FileTime;->value:J

    .line 76
    iput-object p3, p0, Lcom/termux/shared/file/filesystem/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 77
    return-void
.end method

.method public static from(JLjava/util/concurrent/TimeUnit;)Lcom/termux/shared/file/filesystem/FileTime;
    .locals 1
    .param p0, "value"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "unit"
        }
    .end annotation

    .line 92
    const-string v0, "unit"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/termux/shared/file/filesystem/FileTime;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/shared/file/filesystem/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromMillis(J)Lcom/termux/shared/file/filesystem/FileTime;
    .locals 2
    .param p0, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/termux/shared/file/filesystem/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/termux/shared/file/filesystem/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static getDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "milliSeconds"    # J
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "milliSeconds",
            "format"
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 151
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public to(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .line 123
    const-string v0, "unit"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileTime;->value:J

    iget-object v2, p0, Lcom/termux/shared/file/filesystem/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis()J
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/termux/shared/file/filesystem/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileTime;->toMillis()J

    move-result-wide v0

    const-string v2, "yyyy.MM.dd HH:mm:ss.SSS z"

    invoke-static {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FileTime;->getDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
