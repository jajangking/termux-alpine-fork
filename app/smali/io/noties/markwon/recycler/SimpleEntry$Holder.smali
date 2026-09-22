.class public Lio/noties/markwon/recycler/SimpleEntry$Holder;
.super Lio/noties/markwon/recycler/MarkwonAdapter$Holder;
.source "SimpleEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/recycler/SimpleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field final textView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(ILandroid/view/View;)V
    .locals 3
    .param p1, "textViewIdRes"    # I
    .param p2, "itemView"    # Landroid/view/View;

    .line 78
    invoke-direct {p0, p2}, Lio/noties/markwon/recycler/MarkwonAdapter$Holder;-><init>(Landroid/view/View;)V

    .line 81
    if-nez p1, :cond_1

    .line 82
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .local v0, "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 83
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextView is not root of layout (specify TextView ID explicitly): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Lio/noties/markwon/recycler/SimpleEntry$Holder;->requireView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .restart local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    iput-object v0, p0, Lio/noties/markwon/recycler/SimpleEntry$Holder;->textView:Landroid/widget/TextView;

    .line 91
    invoke-static {}, Lio/noties/markwon/utils/NoCopySpannableFactory;->getInstance()Lio/noties/markwon/utils/NoCopySpannableFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    .line 92
    return-void
.end method
