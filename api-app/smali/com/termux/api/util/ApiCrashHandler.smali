.class public Lcom/termux/api/util/ApiCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# Appends the error to /data/data/com.termux.alpine/files/home/.termux/alpine-api-crash.txt
# (readable from the Alpine guest at ~/.termux/alpine-api-crash.txt).
# Never throws: error reporting must not break the API app itself.
.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string v1, "alpine-api-crash.txt"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "=== "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
