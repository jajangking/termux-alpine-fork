.class public abstract Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
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
    name = "ResultJsonWriter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract writeJson(Landroid/util/JsonWriter;)V
.end method

.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 167
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 168
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;->writeJson(Landroid/util/JsonWriter;)V

    .line 170
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
