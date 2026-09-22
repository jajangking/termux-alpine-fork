.class public Lcom/termux/shared/jni/models/JniResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public errmsg:Ljava/lang/String;

.field public errno:I

.field public intData:I

.field public retval:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/termux/shared/jni/models/JniResult;->retval:I

    .line 54
    iput p2, p0, Lcom/termux/shared/jni/models/JniResult;->errno:I

    .line 55
    iput-object p3, p0, Lcom/termux/shared/jni/models/JniResult;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/jni/models/JniResult;-><init>(IILjava/lang/String;)V

    .line 68
    iput p4, p0, Lcom/termux/shared/jni/models/JniResult;->intData:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p2, v0, p1}, Lcom/termux/shared/jni/models/JniResult;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 89
    const-string p0, "null"

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/jni/models/JniResult;->getErrorString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorString()Ljava/lang/String;
    .locals 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget v1, p0, Lcom/termux/shared/jni/models/JniResult;->retval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Retval"

    const-string v3, "-"

    invoke-static {v2, v1, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/termux/shared/jni/models/JniResult;->errno:I

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/shared/jni/models/JniResult;->errno:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Errno"

    invoke-static {v4, v1, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/jni/models/JniResult;->errmsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Errmsg"

    iget-object v2, p0, Lcom/termux/shared/jni/models/JniResult;->errmsg:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
