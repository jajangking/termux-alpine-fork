.class Lcom/termux/api/apis/DialogAPI$DialogActivity$TimeInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeInputMethod"
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 570
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$TimeInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/TimePicker;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/TimePicker;
    .locals 1

    .line 583
    new-instance v0, Landroid/widget/TimePicker;

    invoke-direct {v0, p1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getResult()Ljava/lang/String;
    .locals 3

    .line 578
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v1, Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v2, Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d:%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
