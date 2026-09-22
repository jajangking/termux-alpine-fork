.class public Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;
.super Ljava/lang/Object;
.source "SpecialButtonState.java"


# instance fields
.field buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field isActive:Z

.field isCreated:Z

.field isLocked:Z

.field mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V
    .locals 1
    .param p1, "extraKeysView"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKeysView"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isCreated:Z

    .line 14
    iput-boolean v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    .line 17
    iput-boolean v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isLocked:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    .line 31
    return-void
.end method


# virtual methods
.method public synthetic lambda$setIsActive$0$SpecialButtonState(ZLandroid/widget/Button;)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "button"    # Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getButtonActiveTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getButtonTextColor()I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setIsActive(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 40
    iput-boolean p1, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isActive:Z

    .line 41
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    new-instance v1, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;

    invoke-direct {v1, p0, p1}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;-><init>(Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 42
    return-void
.end method

.method public setIsCreated(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 35
    iput-boolean p1, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isCreated:Z

    .line 36
    return-void
.end method

.method public setIsLocked(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 46
    iput-boolean p1, p0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->isLocked:Z

    .line 47
    return-void
.end method
