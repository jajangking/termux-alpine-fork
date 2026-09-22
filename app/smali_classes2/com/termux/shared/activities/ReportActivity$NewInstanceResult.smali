.class public Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
.super Ljava/lang/Object;
.source "ReportActivity.java"


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
    .param p1, "contentIntent"    # Landroid/content/Intent;
    .param p2, "deleteIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentIntent",
            "deleteIntent"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    .line 295
    iput-object p2, p0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    .line 296
    return-void
.end method
