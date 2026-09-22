.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 617
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .locals 0

    .line 609
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 610
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 611
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 612
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 613
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 614
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    return-void
.end method

.method public final didMeasures()V
    .locals 4

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 859
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 868
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 869
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 628
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 630
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    .line 643
    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 652
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v8, v9

    .line 653
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 660
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x4

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-eq v12, v14, :cond_a

    if-eq v12, v5, :cond_9

    if-eq v12, v15, :cond_8

    if-eq v12, v13, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 680
    :cond_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 682
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v14, :cond_3

    move v9, v14

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 683
    :goto_1
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v12, v5

    .line 684
    iget-boolean v13, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v13, :cond_7

    if-eqz v9, :cond_5

    .line 685
    aget v13, v12, v15

    if-eqz v13, :cond_5

    aget v12, v12, v16

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_2

    :cond_4
    move v12, v14

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v12, :cond_7

    .line 691
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    :cond_7
    :goto_4
    move v9, v14

    goto :goto_5

    .line 674
    :cond_8
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v12

    add-int/2addr v9, v12

    const/4 v12, -0x1

    .line 674
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 676
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v12, v9, v5

    goto :goto_0

    .line 667
    :cond_9
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 669
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v12, v9, v5

    goto :goto_4

    :cond_a
    const/high16 v9, 0x40000000    # 2.0f

    .line 662
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 663
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v9, v5

    move v6, v12

    goto :goto_0

    .line 699
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v14, :cond_13

    if-eq v11, v5, :cond_12

    if-eq v11, v15, :cond_11

    const/4 v7, 0x4

    if-eq v11, v7, :cond_b

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 720
    :cond_b
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 723
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v8, v14, :cond_c

    move v8, v14

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    .line 724
    :goto_6
    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v12, 0x0

    aput v12, v11, v15

    .line 725
    iget-boolean v12, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v12, :cond_10

    if-eqz v8, :cond_e

    .line 726
    aget v12, v11, v5

    if-eqz v12, :cond_e

    aget v11, v11, v14

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_d

    goto :goto_7

    :cond_d
    move v11, v14

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v11, 0x0

    :goto_8
    if-eqz v8, :cond_f

    if-eqz v11, :cond_10

    .line 731
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_9
    move v11, v7

    :goto_a
    const/4 v7, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move v11, v7

    move v7, v14

    goto :goto_c

    .line 714
    :cond_11
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    .line 714
    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 716
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v8, v15

    goto :goto_9

    .line 706
    :cond_12
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 709
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v8, v15

    goto :goto_b

    :cond_13
    const/high16 v8, 0x40000000    # 2.0f

    .line 701
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 702
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v8, v15

    goto :goto_a

    .line 739
    :goto_c
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_14

    move v12, v14

    goto :goto_d

    :cond_14
    const/4 v12, 0x0

    :goto_d
    if-ne v4, v8, :cond_15

    move v8, v14

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    .line 742
    :goto_e
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v13, :cond_17

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_16

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    move v4, v14

    :goto_10
    if-eq v3, v13, :cond_19

    .line 744
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v13, :cond_18

    goto :goto_11

    :cond_18
    const/4 v3, 0x0

    goto :goto_12

    :cond_19
    :goto_11
    move v3, v14

    :goto_12
    const/4 v13, 0x0

    if-eqz v12, :cond_1a

    .line 746
    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v15, v15, v13

    if-lez v15, :cond_1a

    move v15, v14

    goto :goto_13

    :cond_1a
    const/4 v15, 0x0

    :goto_13
    if-eqz v8, :cond_1b

    .line 747
    iget v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v13, v14, v13

    if-lez v13, :cond_1b

    const/4 v13, 0x1

    goto :goto_14

    :cond_1b
    const/4 v13, 0x0

    .line 749
    :goto_14
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 755
    iget-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v5, :cond_1d

    if-eqz v12, :cond_1d

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_1d

    if-eqz v8, :cond_1d

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v5, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v16, 0x0

    goto/16 :goto_1e

    .line 759
    :cond_1d
    :goto_15
    instance-of v5, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v5, :cond_1e

    instance-of v5, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v5, :cond_1e

    .line 760
    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 761
    move-object v8, v10

    check-cast v8, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v8, v5, v6, v11}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    goto :goto_16

    .line 763
    :cond_1e
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 766
    :goto_16
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 767
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 768
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    if-eqz v9, :cond_1f

    .line 779
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v9, v16

    const/16 v18, 0x2

    .line 780
    aput v8, v9, v18

    goto :goto_17

    :cond_1f
    const/16 v16, 0x0

    const/16 v18, 0x2

    .line 782
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v16

    .line 783
    aput v16, v9, v18

    :goto_17
    if-eqz v7, :cond_20

    .line 786
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v9, 0x1

    aput v8, v7, v9

    const/16 v17, 0x3

    .line 787
    aput v5, v7, v17

    goto :goto_18

    :cond_20
    const/4 v9, 0x1

    const/16 v17, 0x3

    .line 789
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v7, v9

    .line 790
    aput v16, v7, v17

    .line 793
    :goto_18
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v7, :cond_21

    .line 794
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_19

    :cond_21
    move v7, v5

    .line 796
    :goto_19
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v9, :cond_22

    .line 797
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 799
    :cond_22
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v9, :cond_23

    .line 800
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1a

    :cond_23
    move v9, v8

    .line 802
    :goto_1a
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v0, :cond_24

    .line 803
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_24
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v15, :cond_25

    if-eqz v4, :cond_25

    .line 807
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v9

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v7, v0

    goto :goto_1b

    :cond_25
    if-eqz v13, :cond_26

    if-eqz v3, :cond_26

    .line 810
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v7

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_26
    :goto_1b
    if-ne v5, v7, :cond_28

    if-eq v8, v9, :cond_27

    goto :goto_1d

    :cond_27
    move v0, v7

    move v3, v9

    move v4, v12

    :goto_1c
    const/4 v5, -0x1

    goto :goto_1e

    :cond_28
    :goto_1d
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_29

    .line 816
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_29
    if-eq v8, v9, :cond_2a

    .line 819
    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 821
    :cond_2a
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 823
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 824
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    goto :goto_1c

    :goto_1e
    if-eq v4, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_1f

    :cond_2b
    move/from16 v5, v16

    .line 835
    :goto_1f
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v0, v6, :cond_2d

    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v3, v6, :cond_2c

    goto :goto_20

    :cond_2c
    move/from16 v6, v16

    goto :goto_21

    :cond_2d
    :goto_20
    const/4 v6, 0x1

    :goto_21
    iput-boolean v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 837
    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v6, :cond_2e

    const/4 v9, 0x1

    goto :goto_22

    :cond_2e
    move v9, v5

    :goto_22
    if-eqz v9, :cond_2f

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v1, v4, :cond_2f

    const/4 v1, 0x1

    .line 841
    iput-boolean v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 843
    :cond_2f
    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 844
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 845
    iput-boolean v9, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 846
    iput v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void
.end method
