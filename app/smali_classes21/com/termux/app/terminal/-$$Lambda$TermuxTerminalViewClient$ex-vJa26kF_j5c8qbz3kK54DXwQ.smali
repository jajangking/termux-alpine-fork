.class public final synthetic Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iput-object p2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;->f$2:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8

    iget-object v0, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;->f$2:[Ljava/lang/CharSequence;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$showUrlSelection$2$TermuxTerminalViewClient(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
