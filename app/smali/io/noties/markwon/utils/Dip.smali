.class public Lio/noties/markwon/utils/Dip;
.super Ljava/lang/Object;
.source "Dip.java"


# instance fields
.field private final density:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "density"    # F

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lio/noties/markwon/utils/Dip;->density:F

    .line 24
    return-void
.end method

.method public static create(F)Lio/noties/markwon/utils/Dip;
    .locals 1
    .param p0, "density"    # F

    .line 16
    new-instance v0, Lio/noties/markwon/utils/Dip;

    invoke-direct {v0, p0}, Lio/noties/markwon/utils/Dip;-><init>(F)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lio/noties/markwon/utils/Dip;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 11
    new-instance v0, Lio/noties/markwon/utils/Dip;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lio/noties/markwon/utils/Dip;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public toPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .line 27
    int-to-float v0, p1

    iget v1, p0, Lio/noties/markwon/utils/Dip;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
