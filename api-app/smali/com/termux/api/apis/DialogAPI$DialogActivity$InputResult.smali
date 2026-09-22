.class Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputResult"
.end annotation


# static fields
.field public static index:I = -0x1


# instance fields
.field public code:I

.field public error:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public values:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->text:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->code:I

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->values:Ljava/util/List;

    return-void
.end method
