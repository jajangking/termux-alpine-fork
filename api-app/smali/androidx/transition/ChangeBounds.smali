.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;,
        Landroidx/transition/ChangeBounds$ClipListener;,
        Landroidx/transition/ChangeBounds$SuppressLayoutListener;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

.field private static final POSITION_PROPERTY:Landroid/util/Property;

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;

.field private static final sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mResizeClip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    const-string v0, "android:changeBounds:windowX"

    const-string v1, "android:changeBounds:windowY"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:clip"

    const-string v4, "android:changeBounds:parent"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 62
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 75
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 88
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 105
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 122
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 141
    new-instance v0, Landroidx/transition/RectEvaluator;

    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    .line 196
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_1

    .line 203
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 2

    .line 210
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 211
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 215
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 232
    :cond_1
    iget-object v7, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 233
    iget-object v8, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 234
    const-string v9, "android:changeBounds:parent"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 235
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    if-nez v8, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 239
    :cond_3
    iget-object v7, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 240
    iget-object v8, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:bounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 241
    iget-object v10, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 242
    iget v15, v8, Landroid/graphics/Rect;->left:I

    .line 243
    iget v14, v9, Landroid/graphics/Rect;->left:I

    .line 244
    iget v13, v8, Landroid/graphics/Rect;->top:I

    .line 245
    iget v12, v9, Landroid/graphics/Rect;->top:I

    .line 246
    iget v11, v8, Landroid/graphics/Rect;->right:I

    .line 247
    iget v10, v9, Landroid/graphics/Rect;->right:I

    .line 248
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 249
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v11, v15

    sub-int v4, v8, v13

    sub-int v3, v10, v14

    sub-int v5, v9, v12

    .line 254
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v23, v7

    const-string v7, "android:changeBounds:clip"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 255
    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    :cond_5
    if-ne v15, v14, :cond_7

    if-eq v13, v12, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-ne v11, v10, :cond_8

    if-eq v8, v9, :cond_a

    :cond_8
    const/16 v18, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_2
    if-eqz v1, :cond_c

    .line 261
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    const/16 v18, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    goto :goto_3

    :goto_5
    add-int/lit8 v7, v7, 0x1

    :cond_d
    if-lez v7, :cond_1b

    move-object/from16 p2, v2

    .line 267
    iget-boolean v2, v0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-nez v2, :cond_12

    move-object/from16 v2, v23

    .line 268
    invoke-static {v2, v15, v13, v11, v8}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    const/4 v1, 0x2

    if-ne v7, v1, :cond_f

    if-ne v6, v3, :cond_e

    if-ne v4, v5, :cond_e

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v1

    int-to-float v3, v15

    int-to-float v4, v13

    int-to-float v5, v14

    int-to-float v6, v12

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 274
    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v3, v1}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_f

    .line 277
    :cond_e
    new-instance v1, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v1, v2}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v4, v15

    int-to-float v5, v13

    int-to-float v6, v14

    int-to-float v7, v12

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 280
    sget-object v4, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 281
    invoke-static {v1, v4, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v4

    int-to-float v5, v11

    int-to-float v6, v8

    int-to-float v7, v10

    int-to-float v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v4

    .line 285
    sget-object v5, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v1, v5, v4}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 287
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    .line 288
    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 290
    new-instance v3, Landroidx/transition/ChangeBounds$6;

    invoke-direct {v3, v0, v1}, Landroidx/transition/ChangeBounds$6;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v5

    goto/16 :goto_f

    :cond_f
    if-ne v15, v14, :cond_11

    if-eq v13, v12, :cond_10

    goto :goto_6

    .line 303
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v1

    int-to-float v3, v11

    int-to-float v4, v8

    int-to-float v5, v10

    int-to-float v6, v9

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 305
    sget-object v3, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v3, v1}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_f

    .line 298
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v1

    int-to-float v3, v15

    int-to-float v4, v13

    int-to-float v5, v14

    int-to-float v6, v12

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 300
    sget-object v3, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v3, v1}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_f

    :cond_12
    move-object/from16 v2, v23

    .line 309
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/2addr v7, v15

    move/from16 v18, v9

    add-int v9, v13, v17

    .line 312
    invoke-static {v2, v15, v13, v7, v9}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-ne v15, v14, :cond_14

    if-eq v13, v12, :cond_13

    goto :goto_7

    :cond_13
    move/from16 v17, v10

    move/from16 v19, v11

    move/from16 v20, v13

    const/4 v7, 0x0

    goto :goto_8

    .line 317
    :cond_14
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v7

    int-to-float v9, v15

    move/from16 v17, v10

    int-to-float v10, v13

    move/from16 v19, v11

    int-to-float v11, v14

    move/from16 v20, v13

    int-to-float v13, v12

    invoke-virtual {v7, v9, v10, v11, v13}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    .line 319
    sget-object v9, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v9, v7}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_8
    if-nez v1, :cond_15

    const/4 v13, 0x1

    goto :goto_9

    :cond_15
    const/4 v13, 0x0

    :goto_9
    if-eqz v13, :cond_16

    .line 324
    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_a
    move-object v11, v1

    goto :goto_b

    :cond_16
    const/4 v9, 0x0

    goto :goto_a

    :goto_b
    if-nez p2, :cond_17

    const/4 v1, 0x1

    goto :goto_c

    :cond_17
    move v1, v9

    :goto_c
    if-eqz v1, :cond_18

    .line 328
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_d

    :cond_18
    move-object/from16 v4, p2

    .line 331
    :goto_d
    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 332
    invoke-virtual {v2, v11}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 333
    sget-object v3, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    filled-new-array {v11, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "clipBounds"

    invoke-static {v2, v6, v3, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 335
    new-instance v3, Landroidx/transition/ChangeBounds$ClipListener;

    move/from16 v5, v18

    move-object v9, v3

    move/from16 v21, v17

    move-object v10, v2

    move/from16 v17, v19

    move/from16 v22, v12

    move v12, v13

    move/from16 v16, v20

    move-object v13, v4

    move v4, v14

    move v14, v1

    move/from16 v18, v8

    move/from16 v19, v4

    move/from16 v20, v22

    move/from16 v22, v5

    invoke-direct/range {v9 .. v22}, Landroidx/transition/ChangeBounds$ClipListener;-><init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V

    .line 340
    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 341
    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    .line 343
    :goto_e
    invoke-static {v7, v6}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    .line 346
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1a

    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    .line 348
    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v3

    new-instance v4, Landroidx/transition/ChangeBounds$SuppressLayoutListener;

    invoke-direct {v4, v2}, Landroidx/transition/ChangeBounds$SuppressLayoutListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    :cond_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
