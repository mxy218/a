.class Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v0

    move v13, v1

    move-object v4, v2

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 30
    :goto_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 31
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x65

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v2, v3, :cond_7e

    const/16 v3, 0x67

    if-eq v2, v3, :cond_74

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_69

    const/16 v3, 0xcfc

    if-eq v2, v3, :cond_5f

    const/16 v3, 0xdbf

    if-eq v2, v3, :cond_55

    packed-switch v2, :pswitch_data_146

    goto :goto_88

    :pswitch_34  #0x74
    const-string/jumbo v2, "t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x3

    goto :goto_89

    :pswitch_3f  #0x73
    const-string/jumbo v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x4

    goto :goto_89

    :pswitch_4a  #0x72
    const-string/jumbo v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x6

    goto :goto_89

    :cond_55
    const-string v2, "nm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    move v0, v1

    goto :goto_89

    :cond_5f
    const-string v2, "hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x7

    goto :goto_89

    :cond_69
    const-string/jumbo v2, "o"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x2

    goto :goto_89

    :cond_74
    const-string v2, "g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    move v0, v12

    goto :goto_89

    :cond_7e
    const-string v2, "e"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x5

    goto :goto_89

    :cond_88
    :goto_88
    move v0, v11

    :goto_89
    packed-switch v0, :pswitch_data_150

    move-object v2, p0

    move-object/from16 v3, p1

    .line 71
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_c

    .line 68
    :pswitch_94  #0x7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    move-object v2, p0

    move-object/from16 v3, p1

    move v13, v0

    goto/16 :goto_c

    .line 65
    :pswitch_9e  #0x6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    if-ne v0, v12, :cond_a7

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_a9

    :cond_a7
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_a9
    move-object v2, p0

    move-object/from16 v3, p1

    move-object v6, v0

    goto/16 :goto_c

    .line 62
    :pswitch_af  #0x5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v10, v0

    goto/16 :goto_c

    .line 59
    :pswitch_b9  #0x4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v9, v0

    goto/16 :goto_c

    .line 56
    :pswitch_c3  #0x3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    if-ne v0, v12, :cond_cc

    sget-object v0, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_ce

    :cond_cc
    sget-object v0, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_ce
    move-object v2, p0

    move-object/from16 v3, p1

    move-object v5, v0

    goto/16 :goto_c

    .line 53
    :pswitch_d4  #0x2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v8, v0

    goto/16 :goto_c

    .line 37
    :pswitch_de  #0x1
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v0, v11

    .line 38
    :goto_e2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v14, 0x6b

    if-eq v3, v14, :cond_104

    const/16 v14, 0x70

    if-eq v3, v14, :cond_f9

    goto :goto_10e

    :cond_f9
    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    move v2, v1

    goto :goto_10f

    :cond_104
    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    move v2, v12

    goto :goto_10f

    :cond_10e
    :goto_10e
    move v2, v11

    :goto_10f
    if-eqz v2, :cond_122

    if-eq v2, v12, :cond_11a

    .line 47
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    move-object v2, p0

    move-object/from16 v3, p1

    goto :goto_e2

    :cond_11a
    move-object v2, p0

    move-object/from16 v3, p1

    .line 44
    invoke-static {p0, v3, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v7

    goto :goto_e2

    :cond_122
    move-object v2, p0

    move-object/from16 v3, p1

    .line 41
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_e2

    :cond_12a
    move-object v2, p0

    move-object/from16 v3, p1

    .line 50
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_c

    :pswitch_132  #0x0
    move-object v2, p0

    move-object/from16 v3, p1

    .line 33
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_c

    .line 75
    :cond_13c
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientFill;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v0

    nop

    :pswitch_data_146
    .packed-switch 0x72
        :pswitch_4a  #00000072
        :pswitch_3f  #00000073
        :pswitch_34  #00000074
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_132  #00000000
        :pswitch_de  #00000001
        :pswitch_d4  #00000002
        :pswitch_c3  #00000003
        :pswitch_b9  #00000004
        :pswitch_af  #00000005
        :pswitch_9e  #00000006
        :pswitch_94  #00000007
    .end packed-switch
.end method
