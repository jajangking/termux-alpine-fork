.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 75
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .locals 5

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 404
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 408
    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 410
    iget-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v1

    .line 411
    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 412
    iget p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    move p3, v3

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 413
    iget v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    .line 416
    iget-object p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p3, p3, v1

    if-ne p3, v4, :cond_4

    .line 417
    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v2, :cond_5

    .line 421
    iget-object p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p3, p3, v3

    if-ne p3, v4, :cond_5

    .line 422
    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 426
    :cond_5
    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 427
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 428
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 429
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 430
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 431
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 432
    iget-boolean p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return p1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 9

    .line 79
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 82
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 83
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    const/4 v6, 0x1

    .line 92
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 94
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    invoke-direct {p0, v1, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_3
    invoke-interface {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result p2

    .line 120
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 122
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 123
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 124
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 125
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 126
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 130
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 159
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    const/16 v9, 0x80

    .line 163
    invoke-static {v2, v9}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v9

    const/4 v11, 0x1

    if-nez v9, :cond_1

    const/16 v12, 0x40

    .line 164
    invoke-static {v2, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v11

    :goto_1
    if-eqz v2, :cond_a

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_a

    .line 168
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 169
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_2

    move v14, v11

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 170
    :goto_3
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    if-ne v10, v15, :cond_3

    move v10, v11

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v10, :cond_4

    .line 171
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v10

    const/4 v14, 0x0

    cmpl-float v10, v10, v14

    if-lez v10, :cond_4

    move v10, v11

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    .line 172
    :goto_5
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v10, :cond_6

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    .line 176
    :cond_6
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v10, :cond_7

    goto :goto_6

    .line 180
    :cond_7
    instance-of v10, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_8

    goto :goto_6

    .line 184
    :cond_8
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_5

    .line 185
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    add-int/2addr v12, v11

    goto :goto_2

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    .line 192
    sget-boolean v10, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_c

    if-eq v4, v10, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    move v12, v11

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    and-int/2addr v2, v12

    const/4 v12, 0x2

    if-eqz v2, :cond_16

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMaxWidth()I

    move-result v2

    move/from16 v13, p6

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMaxHeight()I

    move-result v13

    move/from16 v14, p8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ne v3, v10, :cond_f

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-eq v14, v2, :cond_f

    .line 210
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_f
    if-ne v4, v10, :cond_10

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    if-eq v2, v13, :cond_10

    .line 214
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_10
    if-ne v3, v10, :cond_11

    if-ne v4, v10, :cond_11

    .line 218
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    move v14, v12

    const/4 v13, 0x0

    goto :goto_a

    .line 221
    :cond_11
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    const/4 v13, 0x0

    if-ne v3, v10, :cond_12

    .line 223
    invoke-virtual {v1, v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v14

    and-int/2addr v2, v14

    move v14, v11

    goto :goto_9

    :cond_12
    move v14, v13

    :goto_9
    if-ne v4, v10, :cond_13

    .line 227
    invoke-virtual {v1, v9, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v9

    and-int/2addr v2, v9

    add-int/2addr v14, v11

    :cond_13
    :goto_a
    if-eqz v2, :cond_17

    if-ne v3, v10, :cond_14

    move v3, v11

    goto :goto_b

    :cond_14
    move v3, v13

    :goto_b
    if-ne v4, v10, :cond_15

    move v4, v11

    goto :goto_c

    :cond_15
    move v4, v13

    .line 232
    :goto_c
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    goto :goto_d

    :cond_16
    const/4 v13, 0x0

    move v2, v13

    move v14, v2

    :cond_17
    :goto_d
    if-eqz v2, :cond_18

    if-eq v14, v12, :cond_35

    :cond_18
    if-lez v6, :cond_19

    .line 247
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 252
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v2

    .line 255
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v6, :cond_1a

    .line 259
    const-string v4, "First pass"

    invoke-direct {v0, v1, v4, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    :cond_1a
    if-lez v3, :cond_34

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_1b

    move v4, v11

    goto :goto_e

    :cond_1b
    move v4, v13

    .line 270
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    if-ne v9, v6, :cond_1c

    move v6, v11

    goto :goto_f

    :cond_1c
    move v6, v13

    .line 272
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v14, v13

    move v15, v14

    :goto_10
    if-ge v14, v3, :cond_22

    .line 279
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 280
    instance-of v12, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v12, :cond_1d

    move/from16 p4, v2

    move v2, v11

    goto :goto_12

    .line 283
    :cond_1d
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    move/from16 p4, v2

    .line 284
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    .line 285
    invoke-direct {v0, v5, v13, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v16

    or-int v15, v15, v16

    .line 289
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    move/from16 p5, v15

    .line 290
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-eq v11, v12, :cond_1f

    .line 292
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v4, :cond_1e

    .line 293
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v11

    if-le v11, v9, :cond_1e

    .line 294
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 295
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    add-int/2addr v11, v12

    .line 296
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_1e
    const/4 v11, 0x1

    goto :goto_11

    :cond_1f
    move/from16 v11, p5

    :goto_11
    if-eq v15, v2, :cond_21

    .line 301
    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v6, :cond_20

    .line 302
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v10, :cond_20

    .line 303
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 304
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v2, v11

    .line 305
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_20
    const/4 v11, 0x1

    .line 309
    :cond_21
    check-cast v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 310
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v2

    or-int v15, v11, v2

    const/4 v2, 0x1

    :goto_12
    add-int/2addr v14, v2

    move v11, v2

    const/4 v12, 0x2

    const/4 v13, 0x0

    move/from16 v2, p4

    goto/16 :goto_10

    :cond_22
    move/from16 p4, v2

    move v2, v12

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v2, :cond_30

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v3, :cond_2e

    .line 317
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 318
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v14, :cond_23

    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_27

    :cond_23
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v14, :cond_24

    goto :goto_15

    .line 321
    :cond_24
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v2, 0x8

    if-ne v14, v2, :cond_25

    goto :goto_15

    .line 324
    :cond_25
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_26

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_26

    goto :goto_15

    .line 327
    :cond_26
    instance-of v2, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_28

    :cond_27
    :goto_15
    move/from16 p5, v3

    move-object/from16 p10, v5

    move/from16 v16, v11

    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_18

    .line 331
    :cond_28
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    .line 332
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    move/from16 p5, v3

    .line 333
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v3

    move/from16 v16, v11

    const/4 v11, 0x1

    .line 335
    invoke-direct {v0, v5, v13, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v17

    or-int v11, v15, v17

    .line 340
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    move-object/from16 p10, v5

    .line 341
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    if-eq v15, v2, :cond_2a

    .line 344
    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v4, :cond_29

    .line 345
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    if-le v2, v9, :cond_29

    .line 346
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 347
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v2, v11

    .line 348
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_29
    const/4 v2, 0x1

    goto :goto_17

    :cond_2a
    move v2, v11

    :goto_17
    if-eq v5, v14, :cond_2c

    .line 353
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v6, :cond_2b

    .line 354
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v10, :cond_2b

    .line 355
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 356
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v2, v5

    .line 357
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_2b
    const/4 v2, 0x1

    .line 361
    :cond_2c
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    if-eq v3, v5, :cond_2d

    const/4 v2, 0x1

    const/4 v15, 0x1

    goto :goto_18

    :cond_2d
    move v15, v2

    goto :goto_16

    :goto_18
    add-int/2addr v12, v2

    move/from16 v3, p5

    move-object/from16 v5, p10

    move/from16 v11, v16

    const/4 v2, 0x2

    goto/16 :goto_14

    :cond_2e
    move/from16 p5, v3

    move-object/from16 p10, v5

    move/from16 v16, v11

    const/4 v2, 0x1

    if-eqz v15, :cond_2f

    .line 366
    const-string v3, "intermediate pass"

    invoke-direct {v0, v1, v3, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    const/4 v15, 0x0

    :cond_2f
    add-int/lit8 v11, v16, 0x1

    move/from16 v3, p5

    move-object/from16 v5, p10

    const/4 v2, 0x2

    goto/16 :goto_13

    :cond_30
    const/4 v2, 0x1

    if-eqz v15, :cond_33

    .line 371
    const-string v3, "2nd pass"

    invoke-direct {v0, v1, v3, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    if-ge v3, v9, :cond_31

    .line 374
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    move v3, v2

    goto :goto_19

    :cond_31
    const/4 v3, 0x0

    .line 377
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    if-ge v4, v10, :cond_32

    .line 378
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    move v11, v2

    goto :goto_1a

    :cond_32
    move v11, v3

    :goto_1a
    if-eqz v11, :cond_33

    .line 382
    const-string v2, "3rd pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    :cond_33
    move/from16 v2, p4

    .line 386
    :cond_34
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    :cond_35
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 6

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 57
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 58
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 59
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v5, :cond_0

    .line 60
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    if-eq v3, v4, :cond_0

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    if-ne v3, v5, :cond_1

    .line 62
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    return-void
.end method
