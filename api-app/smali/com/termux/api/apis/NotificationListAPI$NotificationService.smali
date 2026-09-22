.class public Lcom/termux/api/apis/NotificationListAPI$NotificationService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/NotificationListAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationService"
.end annotation


# static fields
.field static _this:Lcom/termux/api/apis/NotificationListAPI$NotificationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public static get()Lcom/termux/api/apis/NotificationListAPI$NotificationService;
    .locals 1

    .line 102
    sget-object v0, Lcom/termux/api/apis/NotificationListAPI$NotificationService;->_this:Lcom/termux/api/apis/NotificationListAPI$NotificationService;

    return-object v0
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 0

    .line 107
    sput-object p0, Lcom/termux/api/apis/NotificationListAPI$NotificationService;->_this:Lcom/termux/api/apis/NotificationListAPI$NotificationService;

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/termux/api/apis/NotificationListAPI$NotificationService;->_this:Lcom/termux/api/apis/NotificationListAPI$NotificationService;

    return-void
.end method
