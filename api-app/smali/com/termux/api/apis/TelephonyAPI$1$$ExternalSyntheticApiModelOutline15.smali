.class public abstract synthetic Lcom/termux/api/apis/TelephonyAPI$1$$ExternalSyntheticApiModelOutline15;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/telephony/CellSignalStrengthLte;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result p0

    return p0
.end method
