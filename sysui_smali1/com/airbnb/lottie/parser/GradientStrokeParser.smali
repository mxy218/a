.class Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 38
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v13, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 40
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_299

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    move/from16 v17, v15

    const-string v15, "o"

    move-object/from16 v19, v14

    const-string v14, "g"

    move/from16 v20, v13

    const-string v13, "d"

    const/16 v21, -0x1

    move-object/from16 v22, v12

    const/16 v12, 0x64

    if-eq v1, v12, :cond_d5

    const/16 v12, 0x65

    if-eq v1, v12, :cond_cb

    const/16 v12, 0x67

    if-eq v1, v12, :cond_c3

    const/16 v12, 0x6f

    if-eq v1, v12, :cond_bb

    const/16 v12, 0x77

    if-eq v1, v12, :cond_b0

    const/16 v12, 0xcfc

    if-eq v1, v12, :cond_a5

    const/16 v12, 0xd77

    if-eq v1, v12, :cond_9b

    const/16 v12, 0xd7e

    if-eq v1, v12, :cond_90

    const/16 v12, 0xd9f

    if-eq v1, v12, :cond_85

    const/16 v12, 0xdbf

    if-eq v1, v12, :cond_7b

    const/16 v12, 0x73

    if-eq v1, v12, :cond_70

    const/16 v12, 0x74

    if-eq v1, v12, :cond_64

    goto/16 :goto_de

    :cond_64
    const-string/jumbo v1, "t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x3

    goto/16 :goto_e0

    :cond_70
    const-string v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x4

    goto/16 :goto_e0

    :cond_7b
    const-string v1, "nm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x0

    goto :goto_e0

    :cond_85
    const-string v1, "ml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/16 v1, 0x9

    goto :goto_e0

    :cond_90
    const-string v1, "lj"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/16 v1, 0x8

    goto :goto_e0

    :cond_9b
    const-string v1, "lc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x7

    goto :goto_e0

    :cond_a5
    const-string v1, "hd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/16 v1, 0xa

    goto :goto_e0

    :cond_b0
    const-string/jumbo v1, "w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x6

    goto :goto_e0

    :cond_bb
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x2

    goto :goto_e0

    :cond_c3
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x1

    goto :goto_e0

    :cond_cb
    const-string v1, "e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/4 v1, 0x5

    goto :goto_e0

    :cond_d5
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    const/16 v1, 0xb

    goto :goto_e0

    :cond_de
    :goto_de
    move/from16 v1, v21

    :goto_e0
    packed-switch v1, :pswitch_data_2be

    const/4 v1, 0x0

    move-object/from16 v23, v9

    move-object/from16 v18, v10

    move-object/from16 v9, p0

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_ed
    move/from16 v15, v17

    :goto_ef
    move-object/from16 v14, v19

    move/from16 v13, v20

    :goto_f3
    move-object/from16 v12, v22

    goto/16 :goto_295

    .line 90
    :pswitch_f7  #0xb
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 91
    :goto_fa
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_177

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    :goto_105
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14e

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    move-object/from16 v23, v9

    const/16 v9, 0x6e

    if-eq v10, v9, :cond_12b

    const/16 v9, 0x76

    if-eq v10, v9, :cond_120

    goto :goto_135

    :cond_120
    const-string/jumbo v9, "v"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_135

    const/4 v9, 0x1

    goto :goto_137

    :cond_12b
    const-string v9, "n"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_135

    const/4 v9, 0x0

    goto :goto_137

    :cond_135
    :goto_135
    move/from16 v9, v21

    :goto_137
    if-eqz v9, :cond_145

    const/4 v10, 0x1

    if-eq v9, v10, :cond_140

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_149

    .line 101
    :cond_140
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    goto :goto_149

    .line 98
    :cond_145
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    :goto_149
    move-object/from16 v10, v18

    move-object/from16 v9, v23

    goto :goto_105

    :cond_14e
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15f

    move-object/from16 v19, v2

    :cond_15d
    const/4 v1, 0x1

    goto :goto_172

    .line 111
    :cond_15f
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16b

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    :cond_16b
    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 113
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_172
    move-object/from16 v10, v18

    move-object/from16 v9, v23

    goto :goto_fa

    :cond_177
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x1

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 117
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_18f

    const/4 v1, 0x0

    .line 119
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21b

    :cond_18f
    const/4 v1, 0x0

    goto/16 :goto_21b

    :pswitch_192  #0xa
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v15

    move-object/from16 v9, p0

    goto/16 :goto_ef

    :pswitch_19f  #0x9
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v9

    double-to-float v13, v9

    move-object/from16 v9, p0

    move/from16 v15, v17

    move-object/from16 v10, v18

    move-object/from16 v14, v19

    goto/16 :goto_f3

    :pswitch_1b3  #0x8
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v12, v2, v9

    move-object/from16 v9, p0

    move/from16 v15, v17

    move-object/from16 v10, v18

    move-object/from16 v14, v19

    move/from16 v13, v20

    goto/16 :goto_295

    :pswitch_1d0  #0x7
    move-object/from16 v23, v9

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 78
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    sub-int/2addr v9, v10

    aget-object v10, v2, v9

    goto :goto_228

    :pswitch_1e0  #0x6
    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 75
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    move-object/from16 v23, v9

    move/from16 v15, v17

    move-object/from16 v14, v19

    move/from16 v13, v20

    move-object/from16 v12, v22

    move-object/from16 v9, p0

    goto/16 :goto_295

    :pswitch_1f5  #0x5
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 72
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    goto :goto_228

    :pswitch_1ff  #0x4
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 69
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v7

    goto :goto_228

    :pswitch_209  #0x3
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-ne v2, v10, :cond_218

    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_21a

    :cond_218
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_21a
    move-object v4, v2

    :goto_21b
    move-object/from16 v9, p0

    goto/16 :goto_282

    :pswitch_21f  #0x2
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 63
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    :goto_228
    move-object/from16 v9, p0

    goto/16 :goto_ed

    :pswitch_22c  #0x1
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move/from16 v2, v21

    .line 48
    :goto_236
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27d

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v12, 0x6b

    if-eq v10, v12, :cond_257

    const/16 v12, 0x70

    if-eq v10, v12, :cond_24d

    goto :goto_261

    :cond_24d
    const-string v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_261

    move v9, v1

    goto :goto_263

    :cond_257
    const-string v10, "k"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_261

    const/4 v9, 0x1

    goto :goto_263

    :cond_261
    :goto_261
    move/from16 v9, v21

    :goto_263
    if-eqz v9, :cond_275

    const/4 v10, 0x1

    if-eq v9, v10, :cond_26e

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v9, p0

    goto :goto_236

    :cond_26e
    move-object/from16 v9, p0

    .line 54
    invoke-static {v9, v0, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v5

    goto :goto_236

    :cond_275
    const/4 v10, 0x1

    move-object/from16 v9, p0

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_236

    :cond_27d
    move-object/from16 v9, p0

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :goto_282
    move/from16 v15, v17

    move-object/from16 v10, v18

    goto/16 :goto_ef

    :pswitch_288  #0x0
    const/4 v1, 0x0

    move-object/from16 v23, v9

    move-object/from16 v18, v10

    move-object/from16 v9, p0

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_ed

    :goto_295
    move-object/from16 v9, v23

    goto/16 :goto_14

    :cond_299
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    move-object/from16 v22, v12

    move/from16 v20, v13

    move-object/from16 v19, v14

    move/from16 v17, v15

    .line 127
    new-instance v14, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object v0, v14

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object/from16 v7, v23

    move-object/from16 v8, v18

    move-object/from16 v9, v22

    move/from16 v10, v20

    move-object/from16 v12, v19

    move/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v14

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_288  #00000000
        :pswitch_22c  #00000001
        :pswitch_21f  #00000002
        :pswitch_209  #00000003
        :pswitch_1ff  #00000004
        :pswitch_1f5  #00000005
        :pswitch_1e0  #00000006
        :pswitch_1d0  #00000007
        :pswitch_1b3  #00000008
        :pswitch_19f  #00000009
        :pswitch_192  #0000000a
        :pswitch_f7  #0000000b
    .end packed-switch
.end method
