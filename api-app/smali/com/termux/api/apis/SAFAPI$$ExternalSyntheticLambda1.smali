.class public final synthetic Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/api/apis/SAFAPI$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/termux/api/apis/SAFAPI;->$r8$lambda$IZyZlpKZ8_xkY8fgYwcgdv8Yusw(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
