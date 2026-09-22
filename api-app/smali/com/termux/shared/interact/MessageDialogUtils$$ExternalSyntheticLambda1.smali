.class public final synthetic Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    invoke-static {v0, p1}, Lcom/termux/shared/interact/MessageDialogUtils;->$r8$lambda$Bl0Ytq5Y-Maj2ASmavM3JUoe8gQ(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
