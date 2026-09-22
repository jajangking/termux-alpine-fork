.class public final synthetic Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$BE9D5qAMZz5Fz7pW2tSQZk2KB5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$BE9D5qAMZz5Fz7pW2tSQZk2KB5w;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$BE9D5qAMZz5Fz7pW2tSQZk2KB5w;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$getShowSoftKeyboardRunnable$0$TermuxTerminalViewClient()V

    return-void
.end method
