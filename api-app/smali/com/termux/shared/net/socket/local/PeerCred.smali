.class public Lcom/termux/shared/net/socket/local/PeerCred;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PeerCred"


# instance fields
.field public cmdline:Ljava/lang/String;

.field public gid:I

.field public gname:Ljava/lang/String;

.field public pid:I

.field public pname:Ljava/lang/String;

.field public uid:I

.field public uname:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pid:I

    iput v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uid:I

    iput v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gid:I

    return-void
.end method

.method public static getPeerCredLogString(Lcom/termux/shared/net/socket/local/PeerCred;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 75
    const-string p0, "null"

    return-object p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getLogString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPeerCredMarkdownString(Lcom/termux/shared/net/socket/local/PeerCred;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 102
    const-string p0, "null"

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getMarkdownString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fillPeerCred(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/termux/shared/net/socket/local/PeerCred;->fillUnameAndGname(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/termux/shared/net/socket/local/PeerCred;->fillPname(Landroid/content/Context;)V

    return-void
.end method

.method public fillPname(Landroid/content/Context;)V
    .locals 2

    .line 63
    iget v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pid:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pname:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 64
    invoke-static {p1, v0}, Lcom/termux/shared/android/ProcessUtils;->getAppProcessNameForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pname:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public fillUnameAndGname(Landroid/content/Context;)V
    .locals 3

    .line 50
    iget v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uid:I

    invoke-static {p1, v0}, Lcom/termux/shared/android/UserUtils;->getNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uname:Ljava/lang/String;

    .line 52
    iget v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gid:I

    iget v2, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uid:I

    if-eq v1, v2, :cond_0

    .line 53
    invoke-static {p1, v1}, Lcom/termux/shared/android/UserUtils;->getNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gname:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    iput-object v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gname:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getGroupString()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->gid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v1, "Peer Cred:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getProcessString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Process"

    const-string v4, "-"

    invoke-static {v3, v2, v4}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getUserString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Group"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getGroupString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v2, p0, Lcom/termux/shared/net/socket/local/PeerCred;->cmdline:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cmdline"

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/PeerCred;->cmdline:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkdownString()Ljava/lang/String;
    .locals 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Peer Cred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getProcessString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Process"

    const-string v4, "-"

    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getUserString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Group"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getGroupString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v2, p0, Lcom/termux/shared/net/socket/local/PeerCred;->cmdline:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cmdline"

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/PeerCred;->cmdline:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimalString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getProcessString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getUserString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/PeerCred;->getGroupString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessString()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pname:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->pid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUserString()Ljava/lang/String;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/termux/shared/net/socket/local/PeerCred;->uid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
