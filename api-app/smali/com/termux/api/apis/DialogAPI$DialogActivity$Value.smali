.class public Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public index:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;->index:I

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;->text:Ljava/lang/String;

    return-void
.end method
