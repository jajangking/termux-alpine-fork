.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxActivity$siTi5_1JUnXP2tjnwmSeb6E43sw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$siTi5_1JUnXP2tjnwmSeb6E43sw;->f$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method


# virtual methods
.method public final onTextSet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$siTi5_1JUnXP2tjnwmSeb6E43sw;->f$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->lambda$setNewSessionButtonView$4$TermuxActivity(Ljava/lang/String;)V

    return-void
.end method
