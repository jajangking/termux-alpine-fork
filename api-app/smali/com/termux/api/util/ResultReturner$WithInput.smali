.class public abstract Lcom/termux/api/util/ResultReturner$WithInput;
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
    name = "WithInput"
.end annotation


# instance fields
.field protected in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setInput(Ljava/io/InputStream;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/termux/api/util/ResultReturner$WithInput;->in:Ljava/io/InputStream;

    return-void
.end method
