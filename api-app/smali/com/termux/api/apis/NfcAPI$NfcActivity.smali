.class public Lcom/termux/api/apis/NfcAPI$NfcActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/NfcAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcActivity"
.end annotation


# static fields
.field static socket_input:Ljava/lang/String;

.field static socket_output:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mIntent:Landroid/content/Intent;

.field mode:Ljava/lang/String;

.field param:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected errorNfc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/termux/api/apis/NfcAPI$NfcActivity$1;-><init>(Lcom/termux/api/apis/NfcAPI$NfcActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    const-string v0, "NfcActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 70
    const-string v0, ""

    if-eqz p1, :cond_4

    .line 71
    iput-object p1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mIntent:Landroid/content/Intent;

    .line 72
    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mode:Ljava/lang/String;

    .line 73
    const-string v2, "noData"

    if-nez v1, :cond_0

    .line 74
    iput-object v2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mode:Ljava/lang/String;

    .line 75
    :cond_0
    const-string v1, "param"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->param:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 77
    iput-object v2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->param:Ljava/lang/String;

    .line 78
    :cond_1
    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->value:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_input:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "socket_input"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_input:Ljava/lang/String;

    .line 80
    :cond_2
    sget-object v1, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_output:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "socket_output"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_output:Ljava/lang/String;

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {p0, p0, p1, v0}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->errorNfc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 88
    :cond_4
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 90
    :cond_5
    invoke-virtual {p0, p0, p1, v0}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->errorNfc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 148
    const-string v0, "NfcActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_input:Ljava/lang/String;

    .line 151
    sput-object v0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_output:Ljava/lang/String;

    .line 152
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 122
    const-string v0, "onNewIntent"

    const-string v1, "NfcActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "socket_input"

    sget-object v2, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_input:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v0, "socket_output"

    sget-object v2, Lcom/termux/api/apis/NfcAPI$NfcActivity;->socket_output:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0, p0, p1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->postResult(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    const-string v2, "Error posting result"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 140
    const-string v0, "NfcActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onReceiveNfcWrite(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 202
    const-string v0, "NfcActivity"

    const-string v1, "onReceiveNfcWrite"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 205
    const-string p1, "android.nfc.extra.TAG"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/nfc/Tag;

    .line 206
    const-string p2, "en"

    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->value:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p2

    .line 207
    new-instance v0, Landroid/nfc/NdefMessage;

    filled-new-array {p2}, [Landroid/nfc/NdefRecord;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 208
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->connect()V

    .line 210
    invoke-virtual {p1, v0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 211
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 97
    const-string v0, "NfcActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 101
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/apis/NfcAPI$NfcActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-static {}, Lcom/termux/api/util/PendingIntentUtils;->getPendingIntentMutableFlag()I

    move-result v2

    .line 111
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2, v3}, [Landroid/content/IntentFilter;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 104
    const-string v1, ""

    invoke-virtual {p0, p0, v0, v1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->errorNfc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 331
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 332
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 333
    const-string p2, "description"

    invoke-virtual {p1, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 334
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 335
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method protected postResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;-><init>(Lcom/termux/api/apis/NfcAPI$NfcActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public readFullNDEFTag(Landroid/content/Intent;Landroid/util/JsonWriter;)V
    .locals 11

    .line 263
    const-string v0, "readFullNDEFTag"

    const-string v1, "NfcActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 266
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 267
    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 268
    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 270
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    .line 272
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v7, v3, v6

    .line 273
    const-string v8, "android.nfc.tech.Ndef"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 282
    array-length v3, p1

    new-array v3, v3, [Landroid/nfc/NdefMessage;

    .line 283
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 285
    invoke-virtual {v0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v4

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    array-length v7, v4

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_0

    aget-byte v9, v4, v8

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%02x"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 288
    :cond_0
    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 289
    const-string v4, "typeTag"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 290
    const-string v4, "maxSize"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 291
    const-string v2, "techList"

    invoke-virtual {p2, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 293
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 294
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 295
    array-length v2, v0

    move v4, v5

    :goto_2
    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    .line 296
    invoke-virtual {p2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 298
    :cond_1
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 300
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 301
    const-string v0, "-->> readFullNDEFTag - 06"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    aget-object p1, p1, v5

    check-cast p1, Landroid/nfc/NdefMessage;

    aput-object p1, v3, v5

    .line 303
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p1

    .line 305
    const-string v0, "record"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 306
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 307
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 308
    :cond_2
    array-length v0, p1

    move v1, v5

    :goto_3
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 309
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 310
    const-string v4, "type"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 311
    const-string v4, "tnf"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 312
    aget-object v4, p1, v5

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "URI"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 313
    :cond_3
    const-string v4, "mime"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 314
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    aget-byte v4, v4, v5

    .line 315
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    aget-byte v4, v4, v5

    add-int/2addr v4, v2

    goto :goto_4

    :cond_4
    move v4, v5

    .line 316
    :goto_4
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v4

    .line 317
    new-array v7, v6, [B

    .line 318
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3, v4, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    const-string v3, "payload"

    invoke-virtual {p2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 320
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 322
    :cond_5
    array-length p1, p1

    if-le p1, v2, :cond_6

    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 327
    :cond_6
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 279
    :cond_8
    const-string p1, "Wrong Technology"

    const-string v0, "termux API support only NFEF Tag"

    invoke-virtual {p0, p2, p1, v0}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readNDEFTag(Landroid/content/Intent;Landroid/util/JsonWriter;)V
    .locals 8

    .line 216
    const-string v0, "NfcActivity"

    const-string v1, "readNDEFTag"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 219
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 220
    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/nfc/Tag;

    .line 221
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    .line 223
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object p1

    .line 224
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 225
    const-string v5, "android.nfc.tech.Ndef"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 234
    array-length p1, v0

    new-array p1, p1, [Landroid/nfc/NdefMessage;

    .line 235
    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 236
    aget-object v0, v0, v2

    check-cast v0, Landroid/nfc/NdefMessage;

    aput-object v0, p1, v2

    .line 237
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 239
    array-length v0, p1

    if-lez v0, :cond_3

    .line 241
    const-string v0, "Record"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 242
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 243
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 244
    :cond_0
    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 245
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 246
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    aget-byte v5, v5, v2

    .line 247
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v3, v5, :cond_1

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    aget-byte v5, v5, v2

    add-int/2addr v5, v3

    goto :goto_2

    :cond_1
    move v5, v2

    .line 248
    :goto_2
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v5

    .line 249
    new-array v7, v6, [B

    .line 250
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    invoke-static {v4, v5, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    const-string v4, "Payload"

    invoke-virtual {p2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 252
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_2
    array-length p1, p1

    if-le p1, v3, :cond_3

    .line 255
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 258
    :cond_3
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_6
    const-string p1, "Wrong Technology"

    const-string v0, "termux API support only NFEF Tag"

    invoke-virtual {p0, p2, p1, v0}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
