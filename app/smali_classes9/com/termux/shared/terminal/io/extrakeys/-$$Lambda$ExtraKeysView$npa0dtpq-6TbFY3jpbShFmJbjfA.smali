.class public final synthetic Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

.field public final synthetic f$3:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$2:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    iput-object p4, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$3:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$2:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    iget-object v3, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$npa0dtpq-6TbFY3jpbShFmJbjfA;->f$3:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->lambda$startScheduledExecutors$2$ExtraKeysView(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    return-void
.end method
