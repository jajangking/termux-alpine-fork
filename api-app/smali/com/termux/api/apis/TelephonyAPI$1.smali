.class Lcom/termux/api/apis/TelephonyAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/TelephonyAPI;->onReceiveTelephonyCellInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
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

    .line 57
    iput-object p1, p0, Lcom/termux/api/apis/TelephonyAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 60
    iget-object v2, v0, Lcom/termux/api/apis/TelephonyAPI$1;->val$context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 66
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_9

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 75
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    const-string v5, "lac"

    const-string v6, "cid"

    const-string v7, "mnc"

    const-string v8, "mcc"

    const-string v9, "level"

    const-string v10, "dbm"

    const-string v11, "asu"

    const-string v12, "registered"

    const-string v13, "type"

    if-eqz v4, :cond_1

    .line 76
    move-object v4, v3

    check-cast v4, Landroid/telephony/CellInfoGsm;

    .line 77
    invoke-virtual {v1, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v13

    const-string v14, "gsm"

    invoke-virtual {v13, v14}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 78
    invoke-virtual {v1, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v12

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    invoke-virtual {v12, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 80
    invoke-virtual {v1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v3, v11, v12}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 81
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v3

    invoke-static {v1, v10, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v1, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v3, v9, v10}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 84
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    invoke-static {v1, v6, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    invoke-static {v1, v5, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-static {v1, v8, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-static {v1, v7, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    :cond_0
    :goto_2
    move-object/from16 v16, v2

    goto/16 :goto_3

    .line 88
    :cond_1
    instance-of v4, v3, Landroid/telephony/CellInfoLte;

    const-string v14, "bands"

    const-string v15, "tac"

    const-string v0, "pci"

    if-eqz v4, :cond_4

    .line 89
    move-object v4, v3

    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 90
    invoke-virtual {v1, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const-string v6, "lte"

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 91
    invoke-virtual {v1, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 93
    invoke-virtual {v1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 94
    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 95
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v3

    invoke-static {v1, v9, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 96
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v3

    const-string v5, "timing_advance"

    invoke-static {v1, v5, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 98
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    const-string v5, "ci"

    invoke-static {v1, v5, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 99
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v0

    invoke-static {v1, v15, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v0

    invoke-static {v1, v8, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v0

    invoke-static {v1, v7, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 105
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellSignalStrengthLte;)I

    move-result v3

    const-string v5, "rsrp"

    invoke-static {v1, v5, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline11;->m(Landroid/telephony/CellSignalStrengthLte;)I

    move-result v3

    const-string v5, "rsrq"

    invoke-static {v1, v5, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    :cond_2
    const/16 v3, 0x1d

    if-lt v0, v3, :cond_3

    .line 110
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline15;->m(Landroid/telephony/CellSignalStrengthLte;)I

    move-result v3

    const-string v5, "rssi"

    invoke-static {v1, v5, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    :cond_3
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    .line 114
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline16;->m(Landroid/telephony/CellIdentityLte;)[I

    move-result-object v0

    invoke-static {v1, v14, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;[I)V

    goto/16 :goto_2

    .line 116
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v16, v2

    const/16 v2, 0x1d

    if-lt v4, v2, :cond_6

    invoke-static {v3}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline17;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    invoke-static {v3}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline18;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object v2

    .line 118
    invoke-static {v2}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline19;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline20;->m(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v5

    .line 119
    invoke-static {v2}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline21;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    const-string v13, "nr"

    invoke-virtual {v6, v13}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 121
    invoke-virtual {v1, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    invoke-virtual {v6, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 123
    invoke-virtual {v1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v6

    int-to-long v11, v6

    invoke-virtual {v3, v11, v12}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 124
    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v3, v10, v11}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 125
    invoke-virtual {v2}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v3

    invoke-static {v1, v9, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 126
    const-string v3, "nci"

    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline22;->m(Landroid/telephony/CellIdentityNr;)J

    move-result-wide v9

    invoke-static {v1, v3, v9, v10}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;J)V

    .line 127
    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline1;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 128
    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline2;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v0

    invoke-static {v1, v15, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 129
    invoke-virtual {v1, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline3;->m(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 130
    invoke-virtual {v1, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline4;->m(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 131
    invoke-static {v2}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-static {v2}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    .line 133
    const-string v2, "csi_rsrp"

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline7;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 134
    const-string v2, "csi_rsrq"

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline8;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 135
    const-string v2, "csi_sinr"

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline9;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 136
    const-string v2, "ss_rsrp"

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline10;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 137
    const-string v2, "ss_rsrq"

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline12;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 138
    const-string v2, "ss_sinr"

    invoke-static {v0}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline13;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    :cond_5
    const/16 v0, 0x1e

    if-lt v4, v0, :cond_8

    .line 141
    invoke-static {v5}, Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline14;->m(Landroid/telephony/CellIdentityNr;)[I

    move-result-object v0

    invoke-static {v1, v14, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;[I)V

    goto/16 :goto_3

    .line 143
    :cond_6
    instance-of v0, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_7

    .line 144
    move-object v0, v3

    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 145
    invoke-virtual {v1, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-string v4, "cdma"

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 146
    invoke-virtual {v1, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 148
    invoke-virtual {v1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 149
    invoke-virtual {v1, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 150
    invoke-virtual {v1, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 151
    const-string v2, "cdma_dbm"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 152
    const-string v2, "cdma_ecio"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 153
    const-string v2, "cdma_level"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 154
    const-string v2, "evdo_dbm"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 155
    const-string v2, "evdo_ecio"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 156
    const-string v2, "evdo_level"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 157
    const-string v2, "evdo_snr"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 159
    const-string v2, "basestation"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 160
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 161
    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 162
    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 163
    const-string v2, "system"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto/16 :goto_3

    .line 164
    :cond_7
    instance-of v0, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_8

    .line 165
    move-object v0, v3

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    .line 166
    invoke-virtual {v1, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-string v4, "wcdma"

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 167
    invoke-virtual {v1, v12}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 169
    invoke-virtual {v1, v11}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 170
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v2

    invoke-static {v1, v10, v2}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 173
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-static {v1, v5, v2}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-static {v1, v8, v2}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v2

    invoke-static {v1, v7, v2}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 177
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v0

    const-string v2, "psc"

    invoke-static {v1, v2, v0}, Lcom/termux/api/apis/TelephonyAPI;->-$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    .line 179
    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 183
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method
