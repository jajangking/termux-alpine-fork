.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpecialButtonsLongHoldRunnable"
.end annotation


# instance fields
.field private final mState:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

.field final synthetic this$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;)V
    .locals 0
    .param p2, "state"    # Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "state"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->this$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    .line 552
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->setIsLocked(Z)V

    .line 557
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    iget-boolean v1, v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 558
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->this$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    invoke-static {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->access$008(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)I

    .line 559
    return-void
.end method
