.class abstract Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethodFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodFactory"
.end annotation


# direct methods
.method public static get(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;
    .locals 2

    if-nez p0, :cond_0

    .line 222
    const-string p0, ""

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "checkbox"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "counter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "confirm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "sheet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "radio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "time"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "date"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "speech"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "spinner"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :pswitch_0
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CheckBoxInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CheckBoxInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 228
    :pswitch_1
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 224
    :pswitch_2
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$ConfirmInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$ConfirmInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 234
    :pswitch_3
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-direct {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;-><init>()V

    return-object p0

    .line 232
    :pswitch_4
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 242
    :pswitch_5
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$TimeInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$TimeInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 240
    :pswitch_6
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$TextInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$TextInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 230
    :pswitch_7
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$DateInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$DateInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 236
    :pswitch_8
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    .line 238
    :pswitch_9
    new-instance p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpinnerInputMethod;

    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpinnerInputMethod;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x77794de7 -> :sswitch_9
        -0x3568f71e -> :sswitch_8
        0x2eefae -> :sswitch_7
        0x36452d -> :sswitch_6
        0x3652cd -> :sswitch_5
        0x67413fb -> :sswitch_4
        0x6855d5f -> :sswitch_3
        0x38b0e6c0 -> :sswitch_2
        0x391755fc -> :sswitch_1
        0x5b9b1bc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
