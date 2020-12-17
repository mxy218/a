.class Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v14, v2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    .line 30
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v4, 0x70

    if-eq v15, v4, :cond_a5

    const/16 v4, 0x72

    if-eq v15, v4, :cond_9b

    const/16 v4, 0xcfc

    if-eq v15, v4, :cond_90

    const/16 v4, 0xdbf

    if-eq v15, v4, :cond_86

    const/16 v4, 0xe04

    if-eq v15, v4, :cond_7c

    const/16 v4, 0xe66

    if-eq v15, v4, :cond_71

    const/16 v4, 0xd29

    if-eq v15, v4, :cond_67

    const/16 v4, 0xd2a

    if-eq v15, v4, :cond_5c

    const/16 v4, 0xde3

    if-eq v15, v4, :cond_52

    const/16 v4, 0xde4

    if-eq v15, v4, :cond_48

    goto/16 :goto_af

    :cond_48
    const-string v4, "os"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x6

    goto :goto_b0

    :cond_52
    const-string v4, "or"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x5

    goto :goto_b0

    :cond_5c
    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/16 v3, 0x8

    goto :goto_b0

    :cond_67
    const-string v4, "ir"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x7

    goto :goto_b0

    :cond_71
    const-string/jumbo v4, "sy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x1

    goto :goto_b0

    :cond_7c
    const-string v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x2

    goto :goto_b0

    :cond_86
    const-string v4, "nm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    move v3, v2

    goto :goto_b0

    :cond_90
    const-string v4, "hd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/16 v3, 0x9

    goto :goto_b0

    :cond_9b
    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x4

    goto :goto_b0

    :cond_a5
    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const/4 v3, 0x3

    goto :goto_b0

    :cond_af
    :goto_af
    const/4 v3, -0x1

    :goto_b0
    packed-switch v3, :pswitch_data_10a

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_10

    .line 60
    :pswitch_b8  #0x9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    move v14, v3

    goto/16 :goto_10

    .line 57
    :pswitch_bf  #0x8
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v12, v3

    goto/16 :goto_10

    .line 54
    :pswitch_c6  #0x7
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_10

    .line 51
    :pswitch_cd  #0x6
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_10

    .line 48
    :pswitch_d4  #0x5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_10

    .line 45
    :pswitch_db  #0x4
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_10

    .line 42
    :pswitch_e2  #0x3
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_10

    .line 39
    :pswitch_e9  #0x2
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_10

    .line 36
    :pswitch_f0  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v3

    move-object v6, v3

    goto/16 :goto_10

    .line 33
    :pswitch_fb  #0x0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_10

    .line 67
    :cond_102
    new-instance v0, Lcom/airbnb/lottie/model/content/PolystarShape;

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v0

    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_fb  #00000000
        :pswitch_f0  #00000001
        :pswitch_e9  #00000002
        :pswitch_e2  #00000003
        :pswitch_db  #00000004
        :pswitch_d4  #00000005
        :pswitch_cd  #00000006
        :pswitch_c6  #00000007
        :pswitch_bf  #00000008
        :pswitch_b8  #00000009
    .end packed-switch
.end method
