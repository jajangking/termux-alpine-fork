.class public abstract Lcom/termux/api/util/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setWarningTextViewAndButtonState(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;ZLjava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 19
    sget p3, Lcom/termux/shared/R$color;->red_error:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    sget p3, Lcom/termux/shared/R$color;->red_error_link:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 p0, 0x1

    .line 21
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/theme/ThemeUtils;->getTextColorPrimary(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-static {p0}, Lcom/termux/shared/theme/ThemeUtils;->getTextColorLink(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 p0, 0x0

    .line 26
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 27
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 30
    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
