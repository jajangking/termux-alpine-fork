.class Lcom/termux/shared/shell/command/runner/app/AppShell$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/shell/command/runner/app/AppShell;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appShell:Lcom/termux/shared/shell/command/runner/app/AppShell;

.field final synthetic val$currentPackageContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/termux/shared/shell/command/runner/app/AppShell;Landroid/content/Context;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell$1;->val$appShell:Lcom/termux/shared/shell/command/runner/app/AppShell;

    iput-object p2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell$1;->val$currentPackageContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell$1;->val$appShell:Lcom/termux/shared/shell/command/runner/app/AppShell;

    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell$1;->val$currentPackageContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->access$000(Lcom/termux/shared/shell/command/runner/app/AppShell;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
