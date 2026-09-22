.class public final synthetic Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/Integer;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$3:Z

    iput-boolean p5, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/Integer;

    iget-boolean v3, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$3:Z

    iget-boolean v4, p0, Lcom/termux/api/apis/MediaScannerAPI$$ExternalSyntheticLambda0;->f$4:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/api/apis/MediaScannerAPI;->$r8$lambda$Wo5EUQkErIiRREj6BZdY9sNNcgQ(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;ZZLjava/io/PrintWriter;)V

    return-void
.end method
