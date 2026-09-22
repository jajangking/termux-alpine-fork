.class public final synthetic Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$4:Z

    iput-object p6, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$5:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$4:Z

    iget-object v5, p0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;->f$5:Landroid/content/Context;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/termux/api/apis/ShareAPI;->$r8$lambda$mAyZu0iazdjJ_L6pcv7y4ngoe0U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method
