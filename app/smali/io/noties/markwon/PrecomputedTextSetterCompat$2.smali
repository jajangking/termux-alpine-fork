.class Lio/noties/markwon/PrecomputedTextSetterCompat$2;
.super Ljava/lang/Object;
.source "PrecomputedTextSetterCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/PrecomputedTextSetterCompat;->applyText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bufferType:Landroid/widget/TextView$BufferType;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$text:Landroid/text/Spanned;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$textView:Landroid/widget/TextView;

    iput-object p2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$text:Landroid/text/Spanned;

    iput-object p3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$bufferType:Landroid/widget/TextView$BufferType;

    iput-object p4, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$text:Landroid/text/Spanned;

    iget-object v2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$bufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 114
    iget-object v0, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 115
    return-void
.end method
