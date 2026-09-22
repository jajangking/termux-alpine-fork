.class public abstract Lcom/termux/api/util/ResultReturner$WithAncillaryFd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/util/ResultReturner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithAncillaryFd"
.end annotation


# instance fields
.field private outputSocket:Landroid/net/LocalSocket;

.field private final pfds:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->outputSocket:Landroid/net/LocalSocket;

    .line 115
    filled-new-array {v0}, [Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->pfds:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final cleanupFds()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->pfds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    const-string v1, "ResultReturner"

    const-string v2, "Failed to close file descriptor"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final sendFd(Ljava/io/PrintWriter;I)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->pfds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 124
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "ResultReturner"

    const-string v0, "File descriptor already sent"

    invoke-static {p2, v0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 128
    :cond_0
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    aput-object p2, v0, v1

    .line 129
    iget-object p2, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->pfds:[Landroid/os/ParcelFileDescriptor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    filled-new-array {p2}, [Ljava/io/FileDescriptor;

    move-result-object p2

    .line 132
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->outputSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p2}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 141
    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 150
    iget-object p1, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->outputSocket:Landroid/net/LocalSocket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final setOutputSocketForFds(Landroid/net/LocalSocket;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->outputSocket:Landroid/net/LocalSocket;

    return-void
.end method
