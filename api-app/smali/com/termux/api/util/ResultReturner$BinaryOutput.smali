.class public abstract Lcom/termux/api/util/ResultReturner$BinaryOutput;
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
    name = "BinaryOutput"
.end annotation


# instance fields
.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOutput(Ljava/io/OutputStream;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/termux/api/util/ResultReturner$BinaryOutput;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public abstract writeResult(Ljava/io/OutputStream;)V
.end method

.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/termux/api/util/ResultReturner$BinaryOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/termux/api/util/ResultReturner$BinaryOutput;->writeResult(Ljava/io/OutputStream;)V

    .line 86
    iget-object p1, p0, Lcom/termux/api/util/ResultReturner$BinaryOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
