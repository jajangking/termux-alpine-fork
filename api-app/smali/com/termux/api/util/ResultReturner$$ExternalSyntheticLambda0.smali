.class public final synthetic Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Lcom/termux/api/util/ResultReturner$ResultWriter;

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;

.field public final synthetic f$3:Landroid/content/BroadcastReceiver;

.field public final synthetic f$4:Landroid/app/Activity;

.field public final synthetic f$5:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/BroadcastReceiver;Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$1:Lcom/termux/api/util/ResultReturner$ResultWriter;

    iput-object p3, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p4, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$3:Landroid/content/BroadcastReceiver;

    iput-object p5, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    iput-object p6, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$1:Lcom/termux/api/util/ResultReturner$ResultWriter;

    iget-object v2, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v3, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$3:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    iget-object v5, p0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Throwable;

    invoke-static/range {v0 .. v5}, Lcom/termux/api/util/ResultReturner;->$r8$lambda$RFR2zSHu5FsJH7JvuCx4CPnUmMY(Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/BroadcastReceiver;Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method
