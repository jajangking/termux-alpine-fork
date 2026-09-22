.class public abstract Lcom/termux/api/util/ResultReturner$WithStringInput;
.super Lcom/termux/api/util/ResultReturner$WithInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/util/ResultReturner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithStringInput"
.end annotation


# instance fields
.field protected inputString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithInput;-><init>()V

    return-void
.end method


# virtual methods
.method public final setInput(Ljava/io/InputStream;)V
    .locals 4

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 103
    new-array v1, v1, [B

    .line 105
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/termux/api/util/ResultReturner$WithStringInput;->trimInput()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected trimInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
