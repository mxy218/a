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

    if-eqz v16, :cond_29c

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    move/from16 v17, v15

    const-string/jumbo v15, "o"

    move-object/from16 v19, v14

    const-string v14, "g"

    move/from16 v20, v13

    const-string v13, "d"

    const/16 v21, -0x1

    move-object/from16 v22, v12

    const/16 v12, 0x64

    if-eq v1, v12, :cond_d7

    const/16 v12, 0x65

    if-eq v1, v12, :cond_cd

    const/16 v12, 0x67

    if-eq v1, v12, :cond_c5

    const/16 v12, 0x6f

    if-eq v1, v12, :cond_bd

    const/16 v12, 0x77

    if-eq v1, v12, :cond_b2

    const/16 v12, 0xcfc

    if-eq v1, v12, :cond_a7

    const/16 v12, 0xd77

    if-eq v1, v12, :cond_9d

    const/16 v12, 0xd7e

    if-eq v1, v12, :cond_92

    const/16 v12, 0xd9f

    if-eq v1, v12, :cond_87

    const/16 v12, 0xdbf

    if-eq v1, v12, :cond_7d

    const/16 v12, 0x73

    if-eq v1, v12, :cond_71

    const/16 v12, 0x74

    if-eq v1, v12, :cond_65

    goto/16 :goto_e0

    :cond_65
    const-string/jumbo v1, "t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x3

    goto/16 :goto_e2

    :cond_71
    const-string/jumbo v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x4

    goto/16 :goto_e2

    :cond_7d
    const-string v1, "nm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x0

    goto :goto_e2

    :cond_87
    const-string v1, "ml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/16 v1, 0x9

    goto :goto_e2

    :cond_92
    const-string v1, "lj"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/16 v1, 0x8

    goto :goto_e2

    :cond_9d
    const-string v1, "lc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x7

    goto :goto_e2

    :cond_a7
    const-string v1, "hd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/16 v1, 0xa

    goto :goto_e2

    :cond_b2
    const-string/jumbo v1, "w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x6

    goto :goto_e2

    :cond_bd
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x2

    goto :goto_e2

    :cond_c5
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x1

    goto :goto_e2

    :cond_cd
    const-string v1, "e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x5

    goto :goto_e2

    :cond_d7
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/16 v1, 0xb

    goto :goto_e2

    :cond_e0
    :goto_e0
    move/from16 v1, v21

    :goto_e2
    packed-switch v1, :pswitch_data_2c2

    const/4 v1, 0x0

    move-object/from16 v23, v9

    move-object/from16 v18, v10

    move-object/from16 v9, p0

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_ef
    move/from16 v15, v17

    :goto_f1
    move-object/from16 v14, v19

    move/from16 v13, v20

    :goto_f5
    move-object/from16 v12, v22

    goto/16 :goto_298

    .line 90
    :pswitch_f9  #0xb
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 91
    :goto_fc
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    :goto_107
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_150

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    move-object/from16 v23, v9

    const/16 v9, 0x6e

    if-eq v10, v9, :cond_12d

    const/16 v9, 0x76

    if-eq v10, v9, :cond_122

    goto :goto_137

    :cond_122
    const-string/jumbo v9, "v"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_137

    const/4 v9, 0x1

    goto :goto_139

    :cond_12d
    const-string v9, "n"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_137

    const/4 v9, 0x0

    goto :goto_139

    :cond_137
    :goto_137
    move/from16 v9, v21

    :goto_139
    if-eqz v9, :cond_147

    const/4 v10, 0x1

    if-eq v9, v10, :cond_142

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_14b

    .line 101
    :cond_142
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    goto :goto_14b

    .line 98
    :cond_147
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    :goto_14b
    move-object/from16 v10, v18

    move-object/from16 v9, v23

    goto :goto_107

    :cond_150
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_161

    move-object/from16 v19, v2

    :cond_15f
    const/4 v1, 0x1

    goto :goto_174

    .line 111
    :cond_161
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16d

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    :cond_16d
    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 113
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_174
    move-object/from16 v10, v18

    move-object/from16 v9, v23

    goto :goto_fc

    :cond_179
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x1

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 117
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_191

    const/4 v1, 0x0

    .line 119
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21d

    :cond_191
    const/4 v1, 0x0

    goto/16 :goto_21d

    :pswitch_194  #0xa
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v15

    move-object/from16 v9, p0

    goto/16 :goto_f1

    :pswitch_1a1  #0x9
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

    goto/16 :goto_f5

    :pswitch_1b5  #0x8
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

    goto/16 :goto_298

    :pswitch_1d2  #0x7
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

    goto :goto_22a

    :pswitch_1e2  #0x6
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

    goto/16 :goto_298

    :pswitch_1f7  #0x5
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 72
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    goto :goto_22a

    :pswitch_201  #0x4
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 69
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v7

    goto :goto_22a

    :pswitch_20b  #0x3
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-ne v2, v10, :cond_21a

    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_21c

    :cond_21a
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_21c
    move-object v4, v2

    :goto_21d
    move-object/from16 v9, p0

    goto/16 :goto_285

    :pswitch_221  #0x2
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 63
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    :goto_22a
    move-object/from16 v9, p0

    goto/16 :goto_ef

    :pswitch_22e  #0x1
    move-object/from16 v23, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move/from16 v2, v21

    .line 48
    :goto_238
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_280

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v12, 0x6b

    if-eq v10, v12, :cond_25a

    const/16 v12, 0x70

    if-eq v10, v12, :cond_24f

    goto :goto_264

    :cond_24f
    const-string/jumbo v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_264

    move v9, v1

    goto :goto_266

    :cond_25a
    const-string v10, "k"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_264

    const/4 v9, 0x1

    goto :goto_266

    :cond_264
    :goto_264
    move/from16 v9, v21

    :goto_266
    if-eqz v9, :cond_278

    const/4 v10, 0x1

    if-eq v9, v10, :cond_271

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v9, p0

    goto :goto_238

    :cond_271
    move-object/from16 v9, p0

    .line 54
    invoke-static {v9, v0, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v5

    goto :goto_238

    :cond_278
    const/4 v10, 0x1

    move-object/from16 v9, p0

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_238

    :cond_280
    move-object/from16 v9, p0

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :goto_285
    move/from16 v15, v17

    move-object/from16 v10, v18

    goto/16 :goto_f1

    :pswitch_28b  #0x0
    const/4 v1, 0x0

    move-object/from16 v23, v9

    move-object/from16 v18, v10

    move-object/from16 v9, p0

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_ef

    :goto_298
    move-object/from16 v9, v23

    goto/16 :goto_14

    :cond_29c
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

    nop

    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_28b  #00000000
        :pswitch_22e  #00000001
        :pswitch_221  #00000002
        :pswitch_20b  #00000003
        :pswitch_201  #00000004
        :pswitch_1f7  #00000005
        :pswitch_1e2  #00000006
        :pswitch_1d2  #00000007
        :pswitch_1b5  #00000008
        :pswitch_1a1  #00000009
        :pswitch_194  #0000000a
        :pswitch_f9  #0000000b
    .end packed-switch
.end method
