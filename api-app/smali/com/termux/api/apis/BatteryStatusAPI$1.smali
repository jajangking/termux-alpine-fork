.class Lcom/termux/api/apis/BatteryStatusAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/BatteryStatusAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
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

    .line 29
    iput-object p1, p0, Lcom/termux/api/apis/BatteryStatusAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 34
    iget-object v2, v0, Lcom/termux/api/apis/BatteryStatusAPI$1;->val$context:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 37
    :cond_0
    const-string v3, "level"

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 38
    const-string v7, "scale"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 40
    const-string v9, "health"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 42
    const-string v11, "UNKNOWN"

    packed-switch v10, :pswitch_data_0

    .line 65
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 45
    :pswitch_0
    const-string v10, "COLD"

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v10, "UNSPECIFIED_FAILURE"

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v10, "OVER_VOLTAGE"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v10, "DEAD"

    goto :goto_0

    .line 54
    :pswitch_4
    const-string v10, "OVERHEAT"

    goto :goto_0

    .line 51
    :pswitch_5
    const-string v10, "GOOD"

    goto :goto_0

    :pswitch_6
    move-object v10, v11

    .line 71
    :goto_0
    const-string v12, "plugged"

    invoke-virtual {v2, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v4, 0x1

    if-eqz v13, :cond_5

    if-eq v13, v4, :cond_4

    if-eq v13, v15, :cond_3

    if-eq v13, v14, :cond_2

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    .line 90
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PLUGGED_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 82
    :cond_1
    const-string v13, "PLUGGED_DOCK"

    goto :goto_1

    .line 88
    :cond_2
    const-string v13, "PLUGGED_WIRELESS"

    goto :goto_1

    .line 85
    :cond_3
    const-string v13, "PLUGGED_USB"

    goto :goto_1

    .line 79
    :cond_4
    const-string v13, "PLUGGED_AC"

    goto :goto_1

    .line 76
    :cond_5
    const-string v13, "UNPLUGGED"

    :goto_1
    const/high16 v14, -0x80000000

    .line 95
    const-string v15, "temperature"

    invoke-virtual {v2, v15, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    int-to-double v4, v14

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v4, v4, v16

    mul-double v4, v4, v16

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, v4, v16

    .line 100
    const-string v14, "status"

    move-object/from16 v17, v7

    move-object/from16 v16, v11

    const/4 v11, -0x1

    invoke-virtual {v2, v14, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 101
    const-string v11, "BatteryStatusAPI"

    move/from16 v18, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_6

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "Invalid BatteryManager.EXTRA_STATUS value: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v3, v16

    goto :goto_3

    :cond_6
    move-object/from16 v19, v3

    .line 110
    const-string v3, "FULL"

    goto :goto_3

    :cond_7
    move-object/from16 v19, v3

    .line 113
    const-string v3, "NOT_CHARGING"

    goto :goto_3

    :cond_8
    move-object/from16 v19, v3

    .line 107
    const-string v3, "DISCHARGING"

    goto :goto_3

    :cond_9
    move-object/from16 v19, v3

    .line 104
    const-string v3, "CHARGING"

    goto :goto_3

    :cond_a
    move-object/from16 v19, v3

    goto :goto_2

    .line 123
    :goto_3
    const-string v7, "voltage"

    move/from16 v16, v6

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/16 v8, 0x64

    move-object/from16 v20, v7

    .line 125
    const-string v7, " to "

    if-ge v6, v8, :cond_b

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    const-string v15, "Fixing voltage from "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object/from16 v21, v15

    .line 130
    :goto_4
    iget-object v8, v0, Lcom/termux/api/apis/BatteryStatusAPI$1;->val$context:Landroid/content/Context;

    const-string v15, "batterymanager"

    invoke-virtual {v8, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryManager;

    const/4 v15, 0x2

    .line 141
    invoke-static {v8, v15}, Lcom/termux/api/apis/BatteryStatusAPI;->-$$Nest$smgetIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 144
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move-wide/from16 v22, v4

    int-to-double v4, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v24

    if-gez v0, :cond_d

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fixing current_now from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_5

    :cond_c
    move-wide/from16 v22, v4

    .line 149
    :cond_d
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    .line 150
    const-string v4, "present"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/termux/api/util/JsonUtils;->putBooleanValueIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    const-string v0, "technology"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/termux/api/util/JsonUtils;->putStringIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v1, v9, v10}, Lcom/termux/api/util/JsonUtils;->putStringIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v1, v12, v13}, Lcom/termux/api/util/JsonUtils;->putStringIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v1, v14, v3}, Lcom/termux/api/util/JsonUtils;->putStringIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v3, v21

    invoke-static {v1, v3, v0}, Lcom/termux/api/util/JsonUtils;->putDoubleIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Double;)V

    .line 156
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v20

    invoke-static {v1, v3, v0}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v0, "current"

    invoke-static {v1, v0, v15}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v0, "current_average"

    const/4 v3, 0x3

    invoke-static {v8, v3}, Lcom/termux/api/apis/BatteryStatusAPI;->-$$Nest$smgetIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "percentage"

    const/4 v3, 0x4

    invoke-static {v8, v3}, Lcom/termux/api/apis/BatteryStatusAPI;->-$$Nest$smgetIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-static {v1, v3, v0}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-static {v1, v3, v0}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v0, "charge_counter"

    const/4 v3, 0x1

    invoke-static {v8, v3}, Lcom/termux/api/apis/BatteryStatusAPI;->-$$Nest$smgetIntProperty(Landroid/os/BatteryManager;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v0, "energy"

    const/4 v3, 0x5

    invoke-static {v8, v3}, Lcom/termux/api/apis/BatteryStatusAPI;->-$$Nest$smgetLongProperty(Landroid/os/BatteryManager;I)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/termux/api/util/JsonUtils;->putLongIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_f

    .line 165
    const-string v0, "android.os.extra.CYCLE_COUNT"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_e

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    const-string v0, "cycle"

    invoke-static {v1, v0, v4}, Lcom/termux/api/util/JsonUtils;->putIntegerIfSet(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
