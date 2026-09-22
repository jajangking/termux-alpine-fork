.class public final synthetic Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;->f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;->f$1:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    iput-object p3, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;->f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;->f$1:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    iget-object v2, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$hm_nokxqYL_tFvNY_QXDKMRajUs;->f$2:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->lambda$reload$0$ExtraKeysView(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
