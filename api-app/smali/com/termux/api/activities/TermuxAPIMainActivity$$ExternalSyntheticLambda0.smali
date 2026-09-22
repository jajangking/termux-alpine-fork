.class public final synthetic Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/activities/TermuxAPIMainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/activities/TermuxAPIMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/activities/TermuxAPIMainActivity;

    iput-object p2, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/activities/TermuxAPIMainActivity;

    iget-object v1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;->f$4:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/api/activities/TermuxAPIMainActivity;->$r8$lambda$QC1PIzjWcDPirSvkvRt4JFXJaaw(Lcom/termux/api/activities/TermuxAPIMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    return-void
.end method
