.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# direct methods
.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    .line 57
    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 63
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v3, 0x0

    const-string v4, "UNSET"

    const-wide/16 v5, 0x0

    const-wide/16 v13, -0x1

    move-object/from16 v28, v0

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v16

    move-object/from16 v30, v17

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v29, v24

    move-wide/from16 v18, v5

    move v0, v11

    move v1, v0

    move/from16 v27, v1

    move-wide/from16 v25, v13

    move-object/from16 v14, v33

    move-object v13, v4

    .line 67
    :goto_4a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34c

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "nm"

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_3fe

    goto/16 :goto_16b

    :sswitch_60
    const-string v4, "masksProperties"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xa

    goto/16 :goto_16c

    :sswitch_6c
    const-string v4, "refId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x2

    goto/16 :goto_16c

    :sswitch_77
    const-string v4, "ind"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    move v2, v6

    goto/16 :goto_16c

    :sswitch_82
    const-string/jumbo v4, "ty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x3

    goto/16 :goto_16c

    :sswitch_8e
    const-string/jumbo v4, "tt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x9

    goto/16 :goto_16c

    :sswitch_9b
    const-string/jumbo v4, "tm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x14

    goto/16 :goto_16c

    :sswitch_a8
    const-string/jumbo v4, "sw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x5

    goto/16 :goto_16c

    :sswitch_b4
    const-string/jumbo v4, "st"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xf

    goto/16 :goto_16c

    :sswitch_c1
    const-string/jumbo v4, "sr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xe

    goto/16 :goto_16c

    :sswitch_ce
    const-string/jumbo v4, "sh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x6

    goto/16 :goto_16c

    :sswitch_da
    const-string v4, "sc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x7

    goto/16 :goto_16c

    :sswitch_e5
    const-string v4, "op"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x13

    goto/16 :goto_16c

    :sswitch_f1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    move v2, v3

    goto/16 :goto_16c

    :sswitch_fa
    const-string v4, "ks"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x8

    goto/16 :goto_16c

    :sswitch_106
    const-string v4, "ip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x12

    goto :goto_16c

    :sswitch_111
    const-string v4, "hd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x16

    goto :goto_16c

    :sswitch_11c
    const-string v4, "ef"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xd

    goto :goto_16c

    :sswitch_127
    const-string v4, "cl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x15

    goto :goto_16c

    :sswitch_132
    const-string/jumbo v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x10

    goto :goto_16c

    :sswitch_13e
    const-string/jumbo v4, "t"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xc

    goto :goto_16c

    :sswitch_14a
    const-string v4, "h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0x11

    goto :goto_16c

    :sswitch_155
    const-string/jumbo v4, "shapes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xb

    goto :goto_16c

    :sswitch_161
    const-string v4, "parent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x4

    goto :goto_16c

    :cond_16b
    :goto_16b
    const/4 v2, -0x1

    :goto_16c
    packed-switch v2, :pswitch_data_45c

    move-object/from16 v2, p0

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_348

    .line 193
    :pswitch_176  #0x16
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v29

    goto :goto_180

    .line 190
    :pswitch_17b  #0x15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    :goto_180
    move-object/from16 v2, p0

    goto/16 :goto_348

    :pswitch_184  #0x14
    move-object/from16 v2, p0

    .line 187
    invoke-static {v2, v7, v3}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v33

    goto/16 :goto_348

    :pswitch_18c  #0x13
    move-object/from16 v2, p0

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v1, v4

    goto/16 :goto_348

    :pswitch_195  #0x12
    move-object/from16 v2, p0

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v0, v4

    goto/16 :goto_348

    :pswitch_19e  #0x11
    move-object/from16 v2, p0

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v24, v4

    goto/16 :goto_348

    :pswitch_1af  #0x10
    move-object/from16 v2, p0

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v23, v4

    goto/16 :goto_348

    :pswitch_1c0  #0xf
    move-object/from16 v2, p0

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v27, v4

    goto/16 :goto_348

    :pswitch_1cb  #0xe
    move-object/from16 v2, p0

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v15, v4

    goto/16 :goto_348

    :pswitch_1d4  #0xd
    move-object/from16 v2, p0

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    :goto_1de
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_219

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 151
    :goto_1e7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_213

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v11, 0xdbf

    if-eq v3, v11, :cond_1fa

    goto :goto_202

    :cond_1fa
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_202

    const/4 v3, 0x0

    goto :goto_203

    :cond_202
    :goto_202
    const/4 v3, -0x1

    :goto_203
    if-eqz v3, :cond_209

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_210

    .line 154
    :cond_209
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_210
    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_1e7

    .line 161
    :cond_213
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_1de

    .line 163
    :cond_219
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_348

    :pswitch_232  #0xc
    move-object/from16 v2, p0

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 125
    :goto_237
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28d

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_258

    const/16 v5, 0x64

    if-eq v4, v5, :cond_24e

    goto :goto_262

    :cond_24e
    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    const/4 v3, 0x0

    goto :goto_263

    :cond_258
    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    move v3, v6

    goto :goto_263

    :cond_262
    :goto_262
    const/4 v3, -0x1

    :goto_263
    if-eqz v3, :cond_288

    if-eq v3, v6, :cond_26b

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_237

    .line 131
    :cond_26b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27a

    .line 133
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v3

    move-object/from16 v32, v3

    .line 135
    :cond_27a
    :goto_27a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_284

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_27a

    .line 138
    :cond_284
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_237

    .line 128
    :cond_288
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v31

    goto :goto_237

    .line 144
    :cond_28d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_348

    :pswitch_292  #0xb
    move-object/from16 v2, p0

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 115
    :cond_297
    :goto_297
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a7

    .line 116
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v3

    if-eqz v3, :cond_297

    .line 118
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_297

    .line 121
    :cond_2a7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_348

    :pswitch_2ac  #0xa
    move-object/from16 v2, p0

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 107
    :goto_2b1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2bf

    .line 108
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b1

    .line 110
    :cond_2bf
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_348

    :pswitch_2cb  #0x9
    move-object/from16 v2, p0

    .line 102
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    aget-object v28, v3, v4

    .line 103
    invoke-virtual {v7, v6}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    goto/16 :goto_348

    :pswitch_2dc  #0x8
    move-object/from16 v2, p0

    .line 99
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v30

    goto/16 :goto_348

    :pswitch_2e4  #0x7
    move-object/from16 v2, p0

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    goto :goto_348

    :pswitch_2ef  #0x6
    move-object/from16 v2, p0

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v21, v3

    goto :goto_348

    :pswitch_2ff  #0x5
    move-object/from16 v2, p0

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v20, v3

    goto :goto_348

    :pswitch_30f  #0x4
    move-object/from16 v2, p0

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v25, v3

    goto :goto_348

    :pswitch_319  #0x3
    move-object/from16 v2, p0

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 80
    sget-object v4, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_32e

    .line 81
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    aget-object v16, v4, v3

    goto :goto_348

    .line 83
    :cond_32e
    sget-object v16, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    goto :goto_348

    :pswitch_331  #0x2
    move-object/from16 v2, p0

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    goto :goto_348

    :pswitch_338  #0x1
    move-object/from16 v2, p0

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v18, v3

    goto :goto_348

    :pswitch_342  #0x0
    move-object/from16 v2, p0

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    :goto_348
    const/4 v3, 0x0

    const/4 v11, 0x0

    goto/16 :goto_4a

    :cond_34c
    move-object/from16 v2, p0

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    div-float v11, v0, v15

    div-float v34, v1, v15

    .line 207
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-lez v1, :cond_37f

    .line 210
    new-instance v5, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    const/16 v35, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v38, v5

    move/from16 v5, v35

    move/from16 v35, v15

    move-object v15, v6

    move-object/from16 v6, v37

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v38

    .line 211
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_382

    :cond_37f
    move/from16 v35, v15

    move-object v15, v6

    :goto_382
    const/4 v0, 0x0

    cmpl-float v0, v34, v0

    if-lez v0, :cond_388

    goto :goto_38e

    .line 215
    :cond_388
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    move/from16 v34, v0

    .line 216
    :goto_38e
    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    .line 217
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move v5, v11

    move-object v9, v6

    move-object/from16 v6, v36

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 218
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 221
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v12

    move-object v3, v12

    move/from16 v5, v34

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 222
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 224
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c8

    const-string v0, "ai"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cd

    :cond_3c8
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 225
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 228
    :cond_3cd
    new-instance v34, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v34

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v18

    move-object/from16 v6, v16

    move-wide/from16 v7, v25

    move-object/from16 v9, v17

    move-object/from16 v11, v30

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move-object/from16 v21, v15

    move/from16 v15, v35

    move/from16 v16, v27

    move/from16 v17, v23

    move/from16 v18, v24

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move-object/from16 v22, v28

    move-object/from16 v23, v33

    move/from16 v24, v29

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v34

    nop

    :sswitch_data_3fe
    .sparse-switch
        -0x3b54f756 -> :sswitch_161
        -0x35db5b0e -> :sswitch_155
        0x68 -> :sswitch_14a
        0x74 -> :sswitch_13e
        0x77 -> :sswitch_132
        0xc69 -> :sswitch_127
        0xca1 -> :sswitch_11c
        0xcfc -> :sswitch_111
        0xd27 -> :sswitch_106
        0xd68 -> :sswitch_fa
        0xdbf -> :sswitch_f1
        0xde1 -> :sswitch_e5
        0xe50 -> :sswitch_da
        0xe55 -> :sswitch_ce
        0xe5f -> :sswitch_c1
        0xe61 -> :sswitch_b4
        0xe64 -> :sswitch_a8
        0xe79 -> :sswitch_9b
        0xe80 -> :sswitch_8e
        0xe85 -> :sswitch_82
        0x197df -> :sswitch_77
        0x675e90e -> :sswitch_6c
        0x55ed639a -> :sswitch_60
    .end sparse-switch

    :pswitch_data_45c
    .packed-switch 0x0
        :pswitch_342  #00000000
        :pswitch_338  #00000001
        :pswitch_331  #00000002
        :pswitch_319  #00000003
        :pswitch_30f  #00000004
        :pswitch_2ff  #00000005
        :pswitch_2ef  #00000006
        :pswitch_2e4  #00000007
        :pswitch_2dc  #00000008
        :pswitch_2cb  #00000009
        :pswitch_2ac  #0000000a
        :pswitch_292  #0000000b
        :pswitch_232  #0000000c
        :pswitch_1d4  #0000000d
        :pswitch_1cb  #0000000e
        :pswitch_1c0  #0000000f
        :pswitch_1af  #00000010
        :pswitch_19e  #00000011
        :pswitch_195  #00000012
        :pswitch_18c  #00000013
        :pswitch_184  #00000014
        :pswitch_17b  #00000015
        :pswitch_176  #00000016
    .end packed-switch
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .registers 27

    move-object/from16 v2, p0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 29
    new-instance v25, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v25

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v11, v4

    invoke-direct {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v25
.end method
