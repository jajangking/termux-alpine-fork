.class Lcom/termux/api/apis/DialogAPI$DialogActivity$DateInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateInputMethod"
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$DateInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/DatePicker;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/DatePicker;
    .locals 1

    .line 510
    new-instance v0, Landroid/widget/DatePicker;

    invoke-direct {v0, p1}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getResult()Ljava/lang/String;
    .locals 8

    .line 486
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    .line 487
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 488
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    .line 490
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 491
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 493
    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 494
    const-string v2, "date_format"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 499
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 501
    iget-object v2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->postCanceledResult()V

    .line 505
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
