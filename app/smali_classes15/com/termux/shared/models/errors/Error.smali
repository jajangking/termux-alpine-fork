.class public Lcom/termux/shared/models/errors/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Error"


# instance fields
.field private code:I

.field private label:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private throwablesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwable"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 50
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p3, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message",
            "throwable"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 38
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 58
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/termux/shared/models/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method private InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "Error"

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    .line 75
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/termux/shared/models/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 76
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/termux/shared/models/errors/Error;->code:I

    goto :goto_1

    .line 78
    :cond_1
    sget-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v0

    iput v0, p0, Lcom/termux/shared/models/errors/Error;->code:I

    .line 80
    :goto_1
    iput-object p3, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    .line 82
    if-eqz p4, :cond_2

    .line 83
    iput-object p4, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 84
    :cond_2
    return-void
.end method

.method public static getErrorLogString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;
    .locals 4
    .param p0, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 181
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getCodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getTypeAndMessageLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->geStackTracesLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;
    .locals 5
    .param p0, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 234
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Error Code"

    const-string v3, "-"

    invoke-static {v2, v1, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Error Message"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Message ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->geStackTracesMarkdownString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMinimalErrorLogString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 200
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getCodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getTypeAndMessageLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;
    .locals 3
    .param p0, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 217
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "logString":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    .line 116
    :cond_0
    return-void
.end method

.method public geStackTracesLogString()Ljava/lang/String;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackTraces:"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geStackTracesMarkdownString()Ljava/lang/String;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackTraces"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 101
    iget v0, p0, Lcom/termux/shared/models/errors/Error;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCodeString()Ljava/lang/String;
    .locals 3

    .line 247
    iget v0, p0, Lcom/termux/shared/models/errors/Error;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Error Code"

    const-string v2, "-"

    invoke-static {v1, v0, v2}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowablesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAndMessageLogString()Ljava/lang/String;
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    const-string v1, "Error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error Message"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Message ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStateFailed()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/termux/shared/models/errors/Error;->code:I

    sget-object v1, Lcom/termux/shared/models/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prependMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/termux/shared/models/errors/Error;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    .line 111
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/termux/shared/models/errors/Error;->label:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 135
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 139
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p3, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 143
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 124
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 128
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/models/errors/Error;Ljava/util/List;)Z
    .locals 3
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/shared/models/errors/Error;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/termux/shared/models/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 131
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    .end local p1    # "error":Lcom/termux/shared/models/errors/Error;
    .end local p2    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 147
    :try_start_0
    iput-object p3, p0, Lcom/termux/shared/models/errors/Error;->message:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/termux/shared/models/errors/Error;->throwablesList:Ljava/util/List;

    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iput-object p1, p0, Lcom/termux/shared/models/errors/Error;->type:Ljava/lang/String;

    .line 153
    .end local p0    # "this":Lcom/termux/shared/models/errors/Error;
    :cond_0
    sget-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 154
    iput p2, p0, Lcom/termux/shared/models/errors/Error;->code:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 157
    :cond_1
    :try_start_1
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid error code value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\". Force setting it to RESULT_CODE_FAILED \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v2}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/termux/shared/models/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/models/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Errno;->getCode()I

    move-result v0

    iput v0, p0, Lcom/termux/shared/models/errors/Error;->code:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 146
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "code":I
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-static {p0}, Lcom/termux/shared/models/errors/Error;->getErrorLogString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
