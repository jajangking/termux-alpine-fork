.class public abstract synthetic Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/telephony/CellSignalStrengthNr;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getCsiSinr()I

    move-result p0

    return p0
.end method
