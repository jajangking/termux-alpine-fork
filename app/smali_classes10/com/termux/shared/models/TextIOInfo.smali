.class public Lcom/termux/shared/models/TextIOInfo;
.super Ljava/lang/Object;
.source "TextIOInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GENERAL_DATA_SIZE_LIMIT_IN_BYTES:I = 0x3e8

.field public static final LABEL_SIZE_LIMIT_IN_BYTES:I = 0xfa0

.field public static final TEXT_SIZE_LIMIT_IN_BYTES:I = 0x17318

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mEditingTextDisabled:Z

.field private mLabel:Ljava/lang/String;

.field private mLabelColor:I

.field private mLabelEnabled:Z

.field private mLabelSize:I

.field private mLabelTypeFaceFamily:Ljava/lang/String;

.field private mLabelTypeFaceStyle:I

.field private final mSender:Ljava/lang/String;

.field private mShowBackButtonInActionBar:Z

.field private mShowTextCharacterUsage:Z

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHorizontallyScrolling:Z

.field private mTextLengthLimit:I

.field private mTextSize:I

.field private mTextTypeFaceFamily:Ljava/lang/String;

.field private mTextTypeFaceStyle:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "sender"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowBackButtonInActionBar:Z

    .line 59
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelEnabled:Z

    .line 66
    const/16 v1, 0xe

    iput v1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelSize:I

    .line 68
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelColor:I

    .line 70
    const-string v2, "sans-serif"

    iput-object v2, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceFamily:Ljava/lang/String;

    .line 72
    const/4 v3, 0x1

    iput v3, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceStyle:I

    .line 81
    const/16 v3, 0xc

    iput v3, p0, Lcom/termux/shared/models/TextIOInfo;->mTextSize:I

    .line 83
    const v3, 0x17318

    iput v3, p0, Lcom/termux/shared/models/TextIOInfo;->mTextLengthLimit:I

    .line 85
    iput v1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextColor:I

    .line 87
    iput-object v2, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceFamily:Ljava/lang/String;

    .line 89
    iput v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceStyle:I

    .line 91
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextHorizontallyScrolling:Z

    .line 93
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowTextCharacterUsage:Z

    .line 95
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mEditingTextDisabled:Z

    .line 99
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mAction:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/termux/shared/models/TextIOInfo;->mSender:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelColor()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelColor:I

    return v0
.end method

.method public getLabelSize()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelSize:I

    return v0
.end method

.method public getLabelTypeFaceFamily()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelTypeFaceStyle()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceStyle:I

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextColor:I

    return v0
.end method

.method public getTextLengthLimit()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextLengthLimit:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextSize:I

    return v0
.end method

.method public getTextTypeFaceFamily()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypeFaceStyle()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceStyle:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEditingTextDisabled()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mEditingTextDisabled:Z

    return v0
.end method

.method public isHorizontallyScrollable()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextHorizontallyScrolling:Z

    return v0
.end method

.method public isLabelEnabled()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelEnabled:Z

    return v0
.end method

.method public setEditingTextDisabled(Z)V
    .locals 0
    .param p1, "editingTextDisabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editingTextDisabled"
        }
    .end annotation

    .line 251
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mEditingTextDisabled:Z

    .line 252
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 143
    const/16 v0, 0xfa0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabel:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "labelColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelColor"
        }
    .end annotation

    .line 160
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelColor:I

    .line 161
    return-void
.end method

.method public setLabelEnabled(Z)V
    .locals 0
    .param p1, "labelEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelEnabled"
        }
    .end annotation

    .line 135
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelEnabled:Z

    .line 136
    return-void
.end method

.method public setLabelSize(I)V
    .locals 0
    .param p1, "labelSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelSize"
        }
    .end annotation

    .line 151
    if-lez p1, :cond_0

    .line 152
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelSize:I

    .line 153
    :cond_0
    return-void
.end method

.method public setLabelTypeFaceFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelTypeFaceFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelTypeFaceFamily"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceFamily:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setLabelTypeFaceStyle(I)V
    .locals 0
    .param p1, "labelTypeFaceStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelTypeFaceStyle"
        }
    .end annotation

    .line 176
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceStyle:I

    .line 177
    return-void
.end method

.method public setShowBackButtonInActionBar(Z)V
    .locals 0
    .param p1, "showBackButtonInActionBar"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showBackButtonInActionBar"
        }
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mShowBackButtonInActionBar:Z

    .line 127
    return-void
.end method

.method public setShowTextCharacterUsage(Z)V
    .locals 0
    .param p1, "showTextCharacterUsage"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTextCharacterUsage"
        }
    .end annotation

    .line 243
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mShowTextCharacterUsage:Z

    .line 244
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 185
    const v0, 0x17318

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mText:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 211
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextColor:I

    .line 212
    return-void
.end method

.method public setTextHorizontallyScrolling(Z)V
    .locals 0
    .param p1, "textHorizontallyScrolling"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textHorizontallyScrolling"
        }
    .end annotation

    .line 235
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextHorizontallyScrolling:Z

    .line 236
    return-void
.end method

.method public setTextLengthLimit(I)V
    .locals 1
    .param p1, "textLengthLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textLengthLimit"
        }
    .end annotation

    .line 202
    const v0, 0x17318

    if-ge p1, v0, :cond_0

    .line 203
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextLengthLimit:I

    .line 204
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 193
    if-lez p1, :cond_0

    .line 194
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextSize:I

    .line 195
    :cond_0
    return-void
.end method

.method public setTextTypeFaceFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "textTypeFaceFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textTypeFaceFamily"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceFamily:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setTextTypeFaceStyle(I)V
    .locals 0
    .param p1, "textTypeFaceStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textTypeFaceStyle"
        }
    .end annotation

    .line 227
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceStyle:I

    .line 228
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTitle:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public shouldShowBackButtonInActionBar()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowBackButtonInActionBar:Z

    return v0
.end method

.method public shouldShowTextCharacterUsage()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowTextCharacterUsage:Z

    return v0
.end method
