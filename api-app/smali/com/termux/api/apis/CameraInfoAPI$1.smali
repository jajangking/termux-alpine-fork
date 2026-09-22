.class Lcom/termux/api/apis/CameraInfoAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/CameraInfoAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
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

    .line 26
    iput-object p1, p0, Lcom/termux/api/apis/CameraInfoAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 29
    iget-object v2, v0, Lcom/termux/api/apis/CameraInfoAPI$1;->val$context:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 32
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_c

    aget-object v7, v3, v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 34
    const-string v8, "id"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 36
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 38
    const-string v8, "facing"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 39
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    if-eq v8, v9, :cond_0

    int-to-long v10, v8

    .line 48
    invoke-virtual {v1, v10, v11}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_1

    .line 45
    :cond_0
    const-string v8, "back"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 42
    :cond_1
    const-string v8, "front"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 51
    :goto_1
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 52
    const-string v10, "jpeg_output_sizes"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    const/16 v10, 0x100

    .line 53
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    const-string v12, "height"

    const-string v13, "width"

    if-ge v11, v10, :cond_2

    aget-object v14, v8, v11

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v13

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v15

    move/from16 v16, v6

    int-to-long v5, v15

    invoke-virtual {v13, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-long v12, v6

    invoke-virtual {v5, v12, v13}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v16

    goto :goto_2

    :cond_2
    move/from16 v16, v6

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 58
    const-string v5, "focal_lengths"

    invoke-virtual {v1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 59
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    array-length v6, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_3

    aget v10, v5, v8

    float-to-double v10, v10

    .line 60
    invoke-virtual {v1, v10, v11}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 63
    const-string v5, "auto_exposure_modes"

    invoke-virtual {v1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 64
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 65
    array-length v6, v5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_a

    aget v10, v5, v8

    if-eqz v10, :cond_9

    if-eq v10, v9, :cond_8

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    const/4 v11, 0x3

    if-eq v10, v11, :cond_6

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    const/4 v11, 0x5

    if-eq v10, v11, :cond_4

    int-to-long v10, v10

    .line 86
    invoke-virtual {v1, v10, v11}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_5

    .line 83
    :cond_4
    const-string v10, "CONTROL_AE_MODE_ON_EXTERNAL_FLASH"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 80
    :cond_5
    const-string v10, "CONTROL_AE_MODE_ON_AUTO_FLASH_REDEYE"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 74
    :cond_6
    const-string v10, "CONTROL_AE_MODE_ON_ALWAYS_FLASH"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 77
    :cond_7
    const-string v10, "CONTROL_AE_MODE_ON_AUTO_FLASH"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 71
    :cond_8
    const-string v10, "CONTROL_AE_MODE_ON"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 68
    :cond_9
    const-string v10, "CONTROL_AE_MODE_OFF"

    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 89
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 91
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SizeF;

    .line 92
    const-string v6, "physical_size"

    invoke-virtual {v1, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    .line 93
    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    float-to-double v8, v5

    invoke-virtual {v6, v8, v9}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 95
    const-string v5, "capabilities"

    invoke-virtual {v1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 96
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_b

    aget v8, v5, v7

    packed-switch v8, :pswitch_data_0

    int-to-long v8, v8

    .line 138
    invoke-virtual {v1, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_7

    .line 120
    :pswitch_0
    const-string v8, "monochrome"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 111
    :pswitch_1
    const-string v8, "logical_multi_camera"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 123
    :pswitch_2
    const-string v8, "motion_tracking"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 105
    :pswitch_3
    const-string v8, "constrained_high_speed_video"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 108
    :pswitch_4
    const-string v8, "depth_output"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 135
    :pswitch_5
    const-string v8, "yuv_reprocessing"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 102
    :pswitch_6
    const-string v8, "burst_capture"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 132
    :pswitch_7
    const-string v8, "read_sensor_settings"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 126
    :pswitch_8
    const-string v8, "private_reprocessing"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 129
    :pswitch_9
    const-string v8, "raw"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 114
    :pswitch_a
    const-string v8, "manual_post_processing"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 117
    :pswitch_b
    const-string v8, "manual_sensor"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_7

    .line 99
    :pswitch_c
    const-string v8, "backward_compatible"

    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 141
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v6, v16, 0x1

    goto/16 :goto_0

    .line 145
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
