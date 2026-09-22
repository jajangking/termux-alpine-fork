.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxActivity$qdYLq_g9hmw-YQf9CQfie5WvXW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$qdYLq_g9hmw-YQf9CQfie5WvXW0;->f$0:Lcom/termux/terminal/TerminalSession;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$qdYLq_g9hmw-YQf9CQfie5WvXW0;->f$0:Lcom/termux/terminal/TerminalSession;

    invoke-static {v0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$showKillSessionDialog$9(Lcom/termux/terminal/TerminalSession;Landroid/content/DialogInterface;I)V

    return-void
.end method
