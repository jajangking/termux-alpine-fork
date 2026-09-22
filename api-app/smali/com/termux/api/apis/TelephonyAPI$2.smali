.class Lcom/termux/api/apis/TelephonyAPI$2;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/TelephonyAPI;->onReceiveTelephonyDeviceInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/termux/api/apis/TelephonyAPI$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 12

    .line 196
    iget-object v0, p0, Lcom/termux/api/apis/TelephonyAPI$2;->val$context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 197
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 201
    const-string v3, "data_enabled"

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v3

    .line 206
    const-string v4, "none"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 221
    :cond_1
    const-string v3, "dormant"

    goto :goto_0

    .line 218
    :cond_2
    const-string v3, "inout"

    goto :goto_0

    .line 215
    :cond_3
    const-string v3, "out"

    goto :goto_0

    .line 212
    :cond_4
    const-string v3, "in"

    goto :goto_0

    :cond_5
    move-object v3, v4

    .line 226
    :goto_0
    const-string v9, "data_activity"

    invoke-virtual {p1, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 228
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    if-eqz v3, :cond_9

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 242
    :cond_6
    const-string v3, "suspended"

    goto :goto_1

    .line 239
    :cond_7
    const-string v3, "connected"

    goto :goto_1

    .line 236
    :cond_8
    const-string v3, "connecting"

    goto :goto_1

    .line 233
    :cond_9
    const-string v3, "disconnected"

    .line 247
    :goto_1
    const-string v9, "data_state"

    invoke-virtual {p1, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 249
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v9, 0x0

    if-lt v1, v2, :cond_b

    if-ne v3, v8, :cond_a

    .line 255
    :try_start_0
    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$2$$ExternalSyntheticApiModelOutline2;->m(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_b
    move-object v1, v9

    .line 263
    :goto_2
    const-string v10, "device_id"

    invoke-virtual {p1, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 264
    const-string v1, "device_software_version"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 265
    const-string v1, "phone_count"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 267
    const-string v1, "cdma"

    if-eqz v3, :cond_f

    if-eq v3, v8, :cond_e

    if-eq v3, v7, :cond_d

    if-eq v3, v6, :cond_c

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 279
    :cond_c
    const-string v4, "sip"

    goto :goto_3

    :cond_d
    move-object v4, v1

    goto :goto_3

    .line 273
    :cond_e
    const-string v4, "gsm"

    .line 284
    :cond_f
    :goto_3
    const-string v3, "phone_type"

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 286
    const-string v3, "network_operator"

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 287
    const-string v3, "network_operator_name"

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 288
    const-string v3, "network_country_iso"

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 289
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 291
    const-string v4, "unknown"

    packed-switch v3, :pswitch_data_0

    .line 341
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_10

    const/16 v1, 0x14

    if-ne v3, v1, :cond_10

    .line 343
    const-string v1, "nr"

    goto :goto_4

    .line 345
    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 324
    :pswitch_0
    const-string v1, "hspap"

    goto :goto_4

    .line 303
    :pswitch_1
    const-string v1, "ehrpd"

    goto :goto_4

    .line 333
    :pswitch_2
    const-string v1, "lte"

    goto :goto_4

    .line 312
    :pswitch_3
    const-string v1, "evdo_b"

    goto :goto_4

    .line 330
    :pswitch_4
    const-string v1, "iden"

    goto :goto_4

    .line 321
    :pswitch_5
    const-string v1, "hspa"

    goto :goto_4

    .line 327
    :pswitch_6
    const-string v1, "hsupa"

    goto :goto_4

    .line 318
    :pswitch_7
    const-string v1, "hdspa"

    goto :goto_4

    .line 294
    :pswitch_8
    const-string v1, "1xrtt"

    goto :goto_4

    .line 309
    :pswitch_9
    const-string v1, "evdo_a"

    goto :goto_4

    .line 306
    :pswitch_a
    const-string v1, "evdo_0"

    goto :goto_4

    .line 336
    :pswitch_b
    const-string v1, "umts"

    goto :goto_4

    .line 300
    :pswitch_c
    const-string v1, "edge"

    goto :goto_4

    .line 315
    :pswitch_d
    const-string v1, "gprs"

    goto :goto_4

    :pswitch_e
    move-object v1, v4

    .line 348
    :goto_4
    :pswitch_f
    const-string v2, "network_type"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 349
    const-string v1, "network_roaming"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 350
    const-string v1, "sim_country_iso"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 351
    const-string v1, "sim_operator"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 352
    const-string v1, "sim_operator_name"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 357
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_1
    move-object v1, v9

    .line 363
    :catch_2
    :goto_5
    const-string v2, "sim_serial_number"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 364
    const-string v1, "sim_subscriber_id"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 366
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_16

    if-eq v0, v8, :cond_15

    if-eq v0, v7, :cond_14

    if-eq v0, v6, :cond_13

    if-eq v0, v5, :cond_12

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 383
    :cond_11
    const-string v4, "ready"

    goto :goto_6

    .line 374
    :cond_12
    const-string v4, "network_locked"

    goto :goto_6

    .line 380
    :cond_13
    const-string v4, "puk_required"

    goto :goto_6

    .line 377
    :cond_14
    const-string v4, "pin_required"

    goto :goto_6

    .line 371
    :cond_15
    const-string v4, "absent"

    .line 391
    :cond_16
    :goto_6
    const-string v0, "sim_state"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 394
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
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
