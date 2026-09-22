.class public Lcom/termux/shared/activities/TextIOActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TextIOActivity.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field public static final EXTRA_TEXT_IO_INFO_OBJECT:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "TextIOActivity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

.field private mTextIOLabel:Landroid/widget/TextView;

.field private mTextIOLabelSeparator:Landroid/view/View;

.field private mTextIOText:Landroid/widget/EditText;

.field private mTextIOTextCharacterUsage:Landroid/widget/TextView;

.field private mTextIOTextLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lcom/termux/shared/activities/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/TextIOActivity;->CLASS_NAME:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EXTRA_TEXT_IO_INFO_OBJECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/TextIOActivity;->EXTRA_TEXT_IO_INFO_OBJECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/termux/shared/activities/TextIOActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/shared/activities/TextIOActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/termux/shared/activities/TextIOActivity;->updateTextIOTextCharacterUsage(Ljava/lang/String;)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/termux/shared/view/KeyboardUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 251
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/activities/TextIOActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->finish()V

    .line 253
    return-void
.end method

.method private confirm()V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->updateTextIOInfoText()V

    .line 243
    iget-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/termux/shared/view/KeyboardUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 244
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/activities/TextIOActivity;->setResult(ILandroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->finish()V

    .line 246
    return-void
.end method

.method private getResultIntent()Landroid/content/Intent;
    .locals 4

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/termux/shared/activities/TextIOActivity;->EXTRA_TEXT_IO_INFO_OBJECT:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 261
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/termux/shared/models/TextIOInfo;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textIOInfo"    # Lcom/termux/shared/models/TextIOInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "textIOInfo"
        }
    .end annotation

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/TextIOActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/termux/shared/activities/TextIOActivity;->EXTRA_TEXT_IO_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    return-object v0
.end method

.method private updateTextIOInfoText()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/shared/models/TextIOInfo;->setText(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method private updateTextIOTextCharacterUsage(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 195
    if-nez p1, :cond_0

    const-string p1, ""

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOTextCharacterUsage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v4}, Lcom/termux/shared/models/TextIOInfo;->getTextLengthLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%1$d/%2$d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    return-void
.end method

.method private updateUI()V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->finish()V

    return-void

    .line 107
    :cond_0
    sget-object v1, Lcom/termux/shared/activities/TextIOActivity;->EXTRA_TEXT_IO_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/TextIOInfo;

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    .line 108
    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->finish()V

    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 113
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 114
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_2
    const-string v2, "Text Input"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->shouldShowBackButtonInActionBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 121
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabelSeparator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->isLabelEnabled()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabelSeparator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    new-array v5, v1, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xfa0

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 132
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getLabelSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 133
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getLabelColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getLabelTypeFaceFamily()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v6}, Lcom/termux/shared/models/TextIOInfo;->getLabelTypeFaceStyle()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->isHorizontallyScrollable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 140
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    goto :goto_1

    .line 143
    :cond_5
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 144
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_6

    .line 145
    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 146
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 147
    .local v6, "index":I
    iget-object v7, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOTextLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 148
    iget-object v7, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->removeAllViews()V

    .line 149
    iget-object v7, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    iget-object v7, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v2, v7, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v7, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 155
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "index":I
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    new-array v5, v1, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    iget-object v7, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v7}, Lcom/termux/shared/models/TextIOInfo;->getTextLengthLimit()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 157
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getTextSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 158
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getTextColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 159
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v5}, Lcom/termux/shared/models/TextIOInfo;->getTextTypeFaceFamily()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v6}, Lcom/termux/shared/models/TextIOInfo;->getTextTypeFaceStyle()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->isEditingTextDisabled()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    .line 163
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 164
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 165
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 168
    :cond_7
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v1}, Lcom/termux/shared/models/TextIOInfo;->shouldShowTextCharacterUsage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOTextCharacterUsage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v1}, Lcom/termux/shared/models/TextIOInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/shared/activities/TextIOActivity;->updateTextIOTextCharacterUsage(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    new-instance v2, Lcom/termux/shared/activities/TextIOActivity$1;

    invoke-direct {v2, p0}, Lcom/termux/shared/activities/TextIOActivity$1;-><init>(Lcom/termux/shared/activities/TextIOActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOTextCharacterUsage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    :goto_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->confirm()V

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "TextIOActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget v0, Lcom/termux/shared/R$layout;->activity_text_io:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->setContentView(I)V

    .line 68
    sget v0, Lcom/termux/shared/R$id;->text_io_label:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabel:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/termux/shared/R$id;->text_io_label_separator:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOLabelSeparator:Landroid/view/View;

    .line 70
    sget v0, Lcom/termux/shared/R$id;->text_io_text:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    .line 71
    sget v0, Lcom/termux/shared/R$id;->text_io_horizontal_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 72
    sget v0, Lcom/termux/shared/R$id;->text_io_text_linear_layout:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOTextLinearLayout:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/termux/shared/R$id;->text_io_text_character_usage:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOTextCharacterUsage:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 76
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/TextIOActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 80
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mBundle:Landroid/os/Bundle;

    .line 81
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    .line 85
    iput-object p1, p0, Lcom/termux/shared/activities/TextIOActivity;->mBundle:Landroid/os/Bundle;

    .line 87
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->updateUI()V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "menu"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 211
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/termux/shared/R$menu;->menu_text_io:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 212
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    const-string v0, "TextIOActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/termux/shared/activities/TextIOActivity;->finish()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/termux/shared/activities/TextIOActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .line 217
    const-string v0, ""

    .line 218
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 222
    .local v1, "id":I
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->confirm()V

    .line 224
    :cond_1
    sget v2, Lcom/termux/shared/R$id;->menu_item_cancel:I

    if-ne v1, v2, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->cancel()V

    goto :goto_0

    .line 226
    :cond_2
    sget v2, Lcom/termux/shared/R$id;->menu_item_share_text:I

    if-ne v1, v2, :cond_3

    .line 227
    iget-object v2, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {v2}, Lcom/termux/shared/models/TextIOInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/termux/shared/interact/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    sget v2, Lcom/termux/shared/R$id;->menu_item_copy_text:I

    if-ne v1, v2, :cond_4

    .line 229
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/termux/shared/interact/ShareUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_4
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 202
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    invoke-direct {p0}, Lcom/termux/shared/activities/TextIOActivity;->updateTextIOInfoText()V

    .line 205
    sget-object v0, Lcom/termux/shared/activities/TextIOActivity;->EXTRA_TEXT_IO_INFO_OBJECT:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/TextIOActivity;->mTextIOInfo:Lcom/termux/shared/models/TextIOInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    return-void
.end method
