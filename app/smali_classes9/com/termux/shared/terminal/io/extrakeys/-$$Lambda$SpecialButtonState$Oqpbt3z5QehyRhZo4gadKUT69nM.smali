.class public final synthetic Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;->f$0:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    iput-boolean p2, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;->f$0:Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    iget-boolean v1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$SpecialButtonState$Oqpbt3z5QehyRhZo4gadKUT69nM;->f$1:Z

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;->lambda$setIsActive$0$SpecialButtonState(ZLandroid/widget/Button;)V

    return-void
.end method
