.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;
.super Ljava/util/HashMap;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;",
        "Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

.field final synthetic val$extraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;


# direct methods
.method constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$extraKeysView"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;->this$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 350
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    new-instance v1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    invoke-direct {v1, p2}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    new-instance v1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    invoke-direct {v1, p2}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    new-instance v1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    invoke-direct {v1, p2}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->FN:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    new-instance v1, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;

    invoke-direct {v1, p2}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method
