.class Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    const/4 v10, 0x0

    .line 24
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x65

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    if-eq v11, v12, :cond_69

    const/16 v12, 0x6d

    if-eq v11, v12, :cond_5f

    const/16 v12, 0x6f

    if-eq v11, v12, :cond_55

    const/16 v12, 0x73

    if-eq v11, v12, :cond_4b

    const/16 v12, 0xcfc

    if-eq v11, v12, :cond_41

    const/16 v12, 0xdbf

    if-eq v11, v12, :cond_37

    goto :goto_73

    :cond_37
    const-string v11, "nm"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v15

    goto :goto_74

    :cond_41
    const-string v11, "hd"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v13

    goto :goto_74

    :cond_4b
    const-string v11, "s"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v3, 0x0

    goto :goto_74

    :cond_55
    const-string v11, "o"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v4

    goto :goto_74

    :cond_5f
    const-string v11, "m"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v14

    goto :goto_74

    :cond_69
    const-string v11, "e"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v2

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v3, -0x1

    :goto_74
    if-eqz v3, :cond_ab

    if-eq v3, v2, :cond_a3

    if-eq v3, v4, :cond_9b

    if-eq v3, v15, :cond_95

    if-eq v3, v14, :cond_8b

    if-eq v3, v13, :cond_85

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_83
    const/4 v2, 0x0

    goto :goto_b

    .line 42
    :cond_85
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    move v10, v2

    goto :goto_83

    .line 39
    :cond_8b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    move-object v6, v2

    goto :goto_83

    .line 36
    :cond_95
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_83

    :cond_9b
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_b

    :cond_a3
    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_b

    :cond_ab
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_b

    .line 49
    :cond_b3
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v0
.end method
