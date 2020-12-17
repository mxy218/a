.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v10, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 33
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1cb

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x63

    const-string v15, "o"

    const-string v1, "d"

    const/16 v16, -0x1

    if-eq v13, v14, :cond_96

    const/16 v14, 0x64

    if-eq v13, v14, :cond_8d

    const/16 v14, 0x6f

    if-eq v13, v14, :cond_85

    const/16 v14, 0x77

    if-eq v13, v14, :cond_7a

    const/16 v14, 0xcfc

    if-eq v13, v14, :cond_70

    const/16 v14, 0xd77

    if-eq v13, v14, :cond_66

    const/16 v14, 0xd7e

    if-eq v13, v14, :cond_5c

    const/16 v14, 0xd9f

    if-eq v13, v14, :cond_52

    const/16 v14, 0xdbf

    if-eq v13, v14, :cond_48

    goto :goto_a0

    :cond_48
    const-string v13, "nm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x0

    goto :goto_a2

    :cond_52
    const-string v13, "ml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x6

    goto :goto_a2

    :cond_5c
    const-string v13, "lj"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x5

    goto :goto_a2

    :cond_66
    const-string v13, "lc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x4

    goto :goto_a2

    :cond_70
    const-string v13, "hd"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x7

    goto :goto_a2

    :cond_7a
    const-string/jumbo v13, "w"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x2

    goto :goto_a2

    :cond_85
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x3

    goto :goto_a2

    :cond_8d
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/16 v12, 0x8

    goto :goto_a2

    :cond_96
    const-string v13, "c"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x1

    goto :goto_a2

    :cond_a0
    :goto_a0
    move/from16 v12, v16

    :goto_a2
    packed-switch v12, :pswitch_data_1dc

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_f

    .line 60
    :pswitch_ad  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 61
    :goto_b0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_156

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 66
    :goto_bb
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_102

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    move-object/from16 v17, v4

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_df

    const/16 v4, 0x76

    if-eq v0, v4, :cond_d4

    goto :goto_e9

    :cond_d4
    const-string/jumbo v0, "v"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const/4 v0, 0x1

    goto :goto_eb

    :cond_df
    const-string v0, "n"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const/4 v0, 0x0

    goto :goto_eb

    :cond_e9
    :goto_e9
    move/from16 v0, v16

    :goto_eb
    if-eqz v0, :cond_fa

    const/4 v4, 0x1

    if-eq v0, v4, :cond_f4

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_ff

    .line 72
    :cond_f4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    move-object v13, v0

    goto :goto_ff

    .line 69
    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :goto_ff
    move-object/from16 v4, v17

    goto :goto_bb

    :cond_102
    move-object/from16 v17, v4

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 80
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_12c

    const/16 v14, 0x67

    if-eq v0, v14, :cond_120

    const/16 v14, 0x6f

    if-eq v0, v14, :cond_118

    goto :goto_136

    :cond_118
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v0, 0x0

    goto :goto_138

    :cond_120
    const/16 v14, 0x6f

    const-string v0, "g"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v0, 0x2

    goto :goto_138

    :cond_12c
    const/16 v14, 0x6f

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v0, 0x1

    goto :goto_138

    :cond_136
    :goto_136
    move/from16 v0, v16

    :goto_138
    if-eqz v0, :cond_14c

    const/4 v12, 0x1

    const/4 v4, 0x2

    if-eq v0, v12, :cond_143

    if-eq v0, v4, :cond_143

    move-object/from16 v0, p1

    goto :goto_152

    :cond_143
    move-object/from16 v0, p1

    .line 86
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 87
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_152

    :cond_14c
    move-object/from16 v0, p1

    const/4 v4, 0x2

    const/4 v12, 0x1

    move-object/from16 v17, v13

    :goto_152
    move-object/from16 v4, v17

    goto/16 :goto_b0

    :cond_156
    move-object/from16 v0, p1

    move-object/from16 v17, v4

    const/4 v12, 0x1

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v12, :cond_16d

    const/4 v1, 0x0

    .line 95
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16e

    :cond_16d
    const/4 v1, 0x0

    :goto_16e
    move-object/from16 v4, v17

    goto/16 :goto_f

    :pswitch_172  #0x7
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v11

    goto/16 :goto_f

    :pswitch_17b  #0x6
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v10, v12

    goto/16 :goto_f

    :pswitch_185  #0x5
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-object v9, v9, v12

    goto/16 :goto_f

    :pswitch_196  #0x4
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v13, 0x1

    .line 48
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    sub-int/2addr v12, v13

    aget-object v8, v8, v12

    goto/16 :goto_f

    :pswitch_1a7  #0x3
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 45
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    goto/16 :goto_f

    :pswitch_1b0  #0x2
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 42
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    goto/16 :goto_f

    :pswitch_1b9  #0x1
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 39
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v5

    goto/16 :goto_f

    :pswitch_1c2  #0x0
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    .line 103
    :cond_1cb
    new-instance v12, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object v0, v12

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    return-object v12

    nop

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_1c2  #00000000
        :pswitch_1b9  #00000001
        :pswitch_1b0  #00000002
        :pswitch_1a7  #00000003
        :pswitch_196  #00000004
        :pswitch_185  #00000005
        :pswitch_17b  #00000006
        :pswitch_172  #00000007
        :pswitch_ad  #00000008
    .end packed-switch
.end method
