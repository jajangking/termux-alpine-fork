.class public Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/activities/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewInstanceResult"
.end annotation


# instance fields
.field public contentIntent:Landroid/content/Intent;

.field public deleteIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    .line 299
    iput-object p2, p0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    return-void
.end method
