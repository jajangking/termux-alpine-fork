.class Lcom/termux/api/apis/NotificationAPI$1;
.super Lcom/termux/api/util/ResultReturner$WithStringInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/NotificationAPI;->onReceiveShowNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$notification:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$notificationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p3, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$notificationId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithStringInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 3

    .line 60
    iget-object p1, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$context:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 62
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 66
    iget-object v1, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 72
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 73
    invoke-static {}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline3;->m()V

    iget-object v0, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$intent:Landroid/content/Intent;

    .line 74
    invoke-static {v0}, Lcom/termux/api/apis/NotificationAPI;->-$$Nest$smpriorityFromIntent(Landroid/content/Intent;)I

    move-result v0

    const-string v1, "termux-notification"

    const-string v2, "Termux API notification channel"

    invoke-static {v1, v2, v0}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 75
    invoke-static {p1, v0}, Lcom/termux/api/apis/NotificationAPI$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$notificationId:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/api/apis/NotificationAPI$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
