.class public Lcom/termux/api/TermuxApiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v0, 0x1

    .line 80
    const-string v1, "api_method"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "TermuxApiReceiver"

    if-nez v1, :cond_0

    .line 82
    const-string p1, "Missing \'api_method\' extra"

    invoke-static {v2, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android.permission.TRANSMIT_IR"

    const-string v6, "android.permission.READ_CONTACTS"

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "Vibrate"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0x2c

    goto/16 :goto_0

    :sswitch_1
    const-string v9, "MediaScanner"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0x2b

    goto/16 :goto_0

    :sswitch_2
    const-string v9, "Dialog"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x2a

    goto/16 :goto_0

    :sswitch_3
    const-string v9, "Location"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0x29

    goto/16 :goto_0

    :sswitch_4
    const-string v9, "WifiEnable"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0x28

    goto/16 :goto_0

    :sswitch_5
    const-string v9, "ContactList"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0x27

    goto/16 :goto_0

    :sswitch_6
    const-string v9, "TelephonyCellInfo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0x26

    goto/16 :goto_0

    :sswitch_7
    const-string v9, "Download"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0x25

    goto/16 :goto_0

    :sswitch_8
    const-string v9, "MediaPlayer"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v8, 0x24

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "TelephonyCall"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0x23

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "NotificationList"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v8, 0x22

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "Notification"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v8, 0x21

    goto/16 :goto_0

    :sswitch_c
    const-string v9, "InfraredFrequencies"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v8, 0x20

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "MicRecorder"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v8, 0x1f

    goto/16 :goto_0

    :sswitch_e
    const-string v9, "Keystore"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v8, 0x1e

    goto/16 :goto_0

    :sswitch_f
    const-string v9, "Clipboard"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v8, 0x1d

    goto/16 :goto_0

    :sswitch_10
    const-string v9, "Fingerprint"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v8, 0x1c

    goto/16 :goto_0

    :sswitch_11
    const-string v9, "Torch"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v8, 0x1b

    goto/16 :goto_0

    :sswitch_12
    const-string v9, "Toast"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v8, 0x1a

    goto/16 :goto_0

    :sswitch_13
    const-string v9, "Share"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v8, 0x19

    goto/16 :goto_0

    :sswitch_14
    const-string v9, "Usb"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v8, 0x18

    goto/16 :goto_0

    :sswitch_15
    const-string v9, "SAF"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v8, 0x17

    goto/16 :goto_0

    :sswitch_16
    const-string v9, "Nfc"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v8, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v9, "CameraInfo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v8, 0x15

    goto/16 :goto_0

    :sswitch_18
    const-string v9, "NotificationRemove"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v8, 0x14

    goto/16 :goto_0

    :sswitch_19
    const-string v9, "SmsInbox"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v8, 0x13

    goto/16 :goto_0

    :sswitch_1a
    const-string v9, "InfraredTransmit"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v8, 0x12

    goto/16 :goto_0

    :sswitch_1b
    const-string v9, "BatteryStatus"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v8, 0x11

    goto/16 :goto_0

    :sswitch_1c
    const-string v9, "SmsSend"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_1d
    const-string v9, "TelephonyDeviceInfo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_1e
    const-string v9, "CameraPhoto"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_1f
    const-string v9, "Wallpaper"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_20
    const-string v9, "SpeechToText"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_21
    const-string v9, "JobScheduler"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_22
    const-string v9, "NotificationChannel"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_23
    const-string v9, "WifiConnectionInfo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_24
    const-string v9, "StorageGet"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_25
    const-string v9, "WifiScanInfo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    goto :goto_0

    :cond_26
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_26
    const-string v9, "Brightness"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto :goto_0

    :cond_27
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_27
    const-string v9, "Volume"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto :goto_0

    :cond_28
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_28
    const-string v9, "Sensor"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    goto :goto_0

    :cond_29
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_29
    const-string v9, "TextToSpeech"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_2a
    const-string v9, "NotificationReply"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_2b
    const-string v9, "CallLog"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto :goto_0

    :cond_2c
    move v8, v0

    goto :goto_0

    :sswitch_2c
    const-string v9, "AudioInfo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v8, 0x0

    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized \'api_method\' extra: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/VibrateAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 160
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/MediaScannerAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 127
    :pswitch_2
    invoke-static {p1, p2}, Lcom/termux/api/apis/DialogAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 152
    :pswitch_3
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 153
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/LocationAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 265
    :pswitch_4
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/WifiAPI;->onReceiveWifiEnable(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 122
    :pswitch_5
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 123
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/ContactListAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 226
    :pswitch_6
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 227
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TelephonyAPI;->onReceiveTelephonyCellInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 130
    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/DownloadAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 157
    :pswitch_8
    invoke-static {p1, p2}, Lcom/termux/api/apis/MediaPlayerAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 221
    :pswitch_9
    const-string v0, "android.permission.CALL_PHONE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 222
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TelephonyAPI;->onReceiveTelephonyCall(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 171
    :pswitch_a
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/termux/api/apis/NotificationListAPI$NotificationService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 173
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 178
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/NotificationListAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 175
    :cond_2e
    const-string p2, "Please give Termux:API Notification Access"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 176
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 182
    :pswitch_b
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/NotificationAPI;->onReceiveShowNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 136
    :pswitch_c
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 137
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/InfraredAPI;->onReceiveCarrierFrequency(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 163
    :pswitch_d
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 164
    invoke-static {p1, p2}, Lcom/termux/api/apis/MicRecorderAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 149
    :pswitch_e
    invoke-static {p0, p2}, Lcom/termux/api/apis/KeystoreAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 119
    :pswitch_f
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/ClipboardAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 133
    :pswitch_10
    invoke-static {p1, p2}, Lcom/termux/api/apis/FingerprintAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 242
    :pswitch_11
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TorchAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 239
    :pswitch_12
    invoke-static {p1, p2}, Lcom/termux/api/apis/ToastAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 200
    :pswitch_13
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/ShareAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 245
    :pswitch_14
    invoke-static {p1, p2}, Lcom/termux/api/apis/UsbAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 194
    :pswitch_15
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SAFAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 168
    :pswitch_16
    invoke-static {p1, p2}, Lcom/termux/api/apis/NfcAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 106
    :pswitch_17
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/CameraInfoAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 188
    :pswitch_18
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/NotificationAPI;->onReceiveRemoveNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 203
    :pswitch_19
    const-string v0, "android.permission.READ_SMS"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 204
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SmsInboxAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 141
    :pswitch_1a
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 142
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/InfraredAPI;->onReceiveTransmit(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 91
    :pswitch_1b
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/BatteryStatusAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 208
    :pswitch_1c
    const-string v0, "android.permission.SEND_SMS"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 209
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SmsSendAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 231
    :pswitch_1d
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 232
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TelephonyAPI;->onReceiveTelephonyDeviceInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 109
    :pswitch_1e
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 110
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/CameraPhotoAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 254
    :pswitch_1f
    invoke-static {p1, p2}, Lcom/termux/api/apis/WallpaperAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 216
    :pswitch_20
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 217
    invoke-static {p1, p2}, Lcom/termux/api/apis/SpeechToTextAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 146
    :pswitch_21
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 185
    :pswitch_22
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/NotificationAPI;->onReceiveChannel(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 257
    :pswitch_23
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/WifiAPI;->onReceiveWifiConnectionInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 213
    :pswitch_24
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/StorageGetAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 260
    :pswitch_25
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 261
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/WifiAPI;->onReceiveWifiScanInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 94
    :pswitch_26
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 95
    const-string v1, "android.permission.WRITE_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    .line 96
    const-string p2, "Please enable permission for Termux:API"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 99
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 103
    :cond_2f
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/BrightnessAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 251
    :pswitch_27
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/VolumeAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 197
    :pswitch_28
    invoke-static {p1, p2}, Lcom/termux/api/apis/SensorAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 236
    :pswitch_29
    invoke-static {p1, p2}, Lcom/termux/api/apis/TextToSpeechAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 191
    :pswitch_2a
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/NotificationAPI;->onReceiveReplyToNotification(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 114
    :pswitch_2b
    const-string v0, "android.permission.READ_CALL_LOG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 115
    invoke-static {p1, p2}, Lcom/termux/api/apis/CallLogAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 88
    :pswitch_2c
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/AudioAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_30
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d5b467c -> :sswitch_2c
        -0x7c143c1a -> :sswitch_2b
        -0x73ab4b61 -> :sswitch_2a
        -0x70598456 -> :sswitch_29
        -0x6c9ac026 -> :sswitch_28
        -0x66f02cc6 -> :sswitch_27
        -0x628bf78f -> :sswitch_26
        -0x5cbd64e0 -> :sswitch_25
        -0x58a4a505 -> :sswitch_24
        -0x51ab98bf -> :sswitch_23
        -0x4b377a88 -> :sswitch_22
        -0x45818262 -> :sswitch_21
        -0x3e285616 -> :sswitch_20
        -0x30a7d21e -> :sswitch_1f
        -0x22b29e13 -> :sswitch_1e
        -0x1fa109c4 -> :sswitch_1d
        -0x18debb9f -> :sswitch_1c
        -0x18b5e3c1 -> :sswitch_1b
        -0x859614f -> :sswitch_1a
        -0x381b733 -> :sswitch_19
        -0x1bf7291 -> :sswitch_18
        -0x121a26d -> :sswitch_17
        0x1318b -> :sswitch_16
        0x13fb8 -> :sswitch_15
        0x14d64 -> :sswitch_14
        0x4c25fbf -> :sswitch_13
        0x4d3a607 -> :sswitch_12
        0x4d3e3dc -> :sswitch_11
        0x116690c4 -> :sswitch_10
        0x180dfd76 -> :sswitch_f
        0x22d2e202 -> :sswitch_e
        0x25972405 -> :sswitch_d
        0x27569759 -> :sswitch_c
        0x2d45dd0b -> :sswitch_b
        0x2dce8449 -> :sswitch_a
        0x41460676 -> :sswitch_9
        0x49ba23c5 -> :sswitch_8
        0x58f52ca8 -> :sswitch_7
        0x5d0da148 -> :sswitch_6
        0x65d5e0be -> :sswitch_5
        0x67273918 -> :sswitch_4
        0x752a03d5 -> :sswitch_3
        0x79fee968 -> :sswitch_2
        0x7cdc899a -> :sswitch_1
        0x7e1f0d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    .line 61
    invoke-static {p1, v0}, Lcom/termux/api/TermuxAPIApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent Received:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxApiReceiver"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/termux/api/TermuxApiReceiver;->doWork(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 70
    const-string v2, "Error in TermuxApiReceiver"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const-string v3, "Termux:API Error"

    invoke-static {p1, v1, v3, v2, v0}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
