.class public final synthetic Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->$r8$lambda$m51dTG_B0gBgrisHSwnek95HM_E(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method
