.class public Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method private static isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 124
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method private static isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 128
    instance-of v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v1, :cond_23

    .line 130
    invoke-interface {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_23

    :cond_22
    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method private static isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 134
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method private static isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    .line 138
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/ScaleXY;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1, v1}, Lcom/airbnb/lottie/value/ScaleXY;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private static isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 146
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method private static isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_f

    const/4 v11, 0x1

    goto :goto_10

    :cond_f
    move v11, v10

    :goto_10
    if-eqz v11, :cond_15

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_15
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 39
    :goto_23
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_196

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_ba

    const/16 v5, 0xcaa

    if-eq v4, v5, :cond_b0

    const/16 v5, 0xe48

    if-eq v4, v5, :cond_a6

    const/16 v5, 0xe4e

    if-eq v4, v5, :cond_9b

    const/16 v5, 0xe58

    if-eq v4, v5, :cond_8f

    const/16 v5, 0xe5c

    if-eq v4, v5, :cond_84

    const/16 v5, 0x6f

    if-eq v4, v5, :cond_7a

    const/16 v5, 0x70

    if-eq v4, v5, :cond_70

    const/16 v5, 0x72

    if-eq v4, v5, :cond_66

    const/16 v5, 0x73

    if-eq v4, v5, :cond_5c

    goto/16 :goto_c4

    :cond_5c
    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x2

    goto :goto_c5

    :cond_66
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x4

    goto :goto_c5

    :cond_70
    const-string v4, "p"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x1

    goto :goto_c5

    :cond_7a
    const-string v4, "o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x5

    goto :goto_c5

    :cond_84
    const-string/jumbo v4, "so"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x6

    goto :goto_c5

    :cond_8f
    const-string/jumbo v4, "sk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/16 v2, 0x8

    goto :goto_c5

    :cond_9b
    const-string v4, "sa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/16 v2, 0x9

    goto :goto_c5

    :cond_a6
    const-string v4, "rz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x3

    goto :goto_c5

    :cond_b0
    const-string v4, "eo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x7

    goto :goto_c5

    :cond_ba
    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    move v2, v10

    goto :goto_c5

    :cond_c4
    :goto_c4
    move v2, v3

    :goto_c5
    packed-switch v2, :pswitch_data_1e4

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_23

    .line 92
    :pswitch_cd  #0x9
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v17, v2

    goto/16 :goto_23

    .line 89
    :pswitch_d5  #0x8
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v16, v2

    goto/16 :goto_23

    .line 86
    :pswitch_dd  #0x7
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v25, v2

    goto/16 :goto_23

    .line 83
    :pswitch_e5  #0x6
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v24, v2

    goto/16 :goto_23

    .line 80
    :pswitch_ed  #0x5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    move-object/from16 v23, v2

    goto/16 :goto_23

    :pswitch_f5  #0x3
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 60
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 72
    :pswitch_fa  #0x4
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v18

    .line 73
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_132

    .line 74
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v9, v6

    move/from16 v6, v19

    move-object v12, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_161

    .line 75
    :cond_132
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v1, :cond_161

    .line 76
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v9

    new-instance v12, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_161
    :goto_161
    move-object/from16 v1, v18

    goto/16 :goto_23

    .line 57
    :pswitch_165  #0x2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseScale(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v2

    move-object v15, v2

    goto/16 :goto_23

    .line 54
    :pswitch_16c  #0x1
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_23

    .line 42
    :pswitch_173  #0x0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 43
    :goto_176
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_191

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 45
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v13

    goto :goto_176

    .line 47
    :cond_18d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_176

    .line 50
    :cond_191
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_23

    :cond_196
    if-eqz v11, :cond_19b

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 102
    :cond_19b
    invoke-static {v13}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    const/4 v13, 0x0

    .line 105
    :cond_1a2
    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    const/16 v20, 0x0

    goto :goto_1ad

    :cond_1ab
    move-object/from16 v20, v14

    .line 108
    :goto_1ad
    invoke-static {v1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const/16 v22, 0x0

    goto :goto_1b8

    :cond_1b6
    move-object/from16 v22, v1

    .line 111
    :goto_1b8
    invoke-static {v15}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    const/16 v21, 0x0

    goto :goto_1c3

    :cond_1c1
    move-object/from16 v21, v15

    .line 114
    :goto_1c3
    invoke-static/range {v16 .. v16}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    const/16 v26, 0x0

    goto :goto_1ce

    :cond_1cc
    move-object/from16 v26, v16

    .line 117
    :goto_1ce
    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    const/16 v27, 0x0

    goto :goto_1d9

    :cond_1d7
    move-object/from16 v27, v17

    .line 120
    :goto_1d9
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    invoke-direct/range {v18 .. v27}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v0

    nop

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_173  #00000000
        :pswitch_16c  #00000001
        :pswitch_165  #00000002
        :pswitch_f5  #00000003
        :pswitch_fa  #00000004
        :pswitch_ed  #00000005
        :pswitch_e5  #00000006
        :pswitch_dd  #00000007
        :pswitch_d5  #00000008
        :pswitch_cd  #00000009
    .end packed-switch
.end method
