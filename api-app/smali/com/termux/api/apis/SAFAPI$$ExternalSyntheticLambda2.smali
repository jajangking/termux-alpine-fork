.class public final synthetic Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/api/apis/SAFAPI;->$r8$lambda$9-mal12hswqqENK-9MCVf0A5FKs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
