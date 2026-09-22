.class public interface abstract Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IExtraKeysView"
.end annotation


# virtual methods
.method public abstract onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation
.end method

.method public abstract performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation
.end method
