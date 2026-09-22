.class public abstract synthetic Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api34Impl$$ExternalSyntheticAPIConversion1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(Landroid/view/accessibility/AccessibilityNodeInfo;)Lj$/time/Duration;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMinDurationBetweenContentChanges()Ljava/time/Duration;

    move-result-object p0

    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Ljava/time/Duration;)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method
