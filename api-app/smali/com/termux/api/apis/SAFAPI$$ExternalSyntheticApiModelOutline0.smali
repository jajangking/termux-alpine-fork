.class public abstract synthetic Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method
