.class public abstract synthetic Lcom/termux/api/apis/TelephonyAPI$2$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
