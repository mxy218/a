.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    .line 26
    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 27
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x6f

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v6, v7, :cond_4b

    const/16 v7, 0xe04

    if-eq v6, v7, :cond_41

    const v7, 0x197f1

    if-eq v6, v7, :cond_37

    const v7, 0x3339a3

    if-eq v6, v7, :cond_2d

    goto :goto_55

    :cond_2d
    const-string v6, "mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v0

    goto :goto_56

    :cond_37
    const-string v6, "inv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v8

    goto :goto_56

    :cond_41
    const-string v6, "pt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v11

    goto :goto_56

    :cond_4b
    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v10

    goto :goto_56

    :cond_55
    :goto_55
    move v6, v9

    :goto_56
    if-eqz v6, :cond_71

    if-eq v6, v11, :cond_6c

    if-eq v6, v10, :cond_67

    if-eq v6, v8, :cond_62

    .line 57
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 54
    :cond_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_8

    .line 51
    :cond_67
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    goto :goto_8

    .line 48
    :cond_6c
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v2

    goto :goto_8

    .line 30
    :cond_71
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_9a

    const/16 v7, 0x69

    if-eq v6, v7, :cond_90

    const/16 v7, 0x73

    if-eq v6, v7, :cond_86

    goto :goto_a3

    :cond_86
    const-string v6, "s"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    move v9, v11

    goto :goto_a3

    :cond_90
    const-string v6, "i"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    move v9, v10

    goto :goto_a3

    :cond_9a
    const-string v6, "a"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    move v9, v0

    :cond_a3
    :goto_a3
    if-eqz v9, :cond_d5

    if-eq v9, v11, :cond_d1

    if-eq v9, v10, :cond_c8

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mask mode "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Defaulting to Add."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "LOTTIE"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_8

    :cond_c8
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 38
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_8

    .line 35
    :cond_d1
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_8

    .line 32
    :cond_d5
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_8

    .line 60
    :cond_d9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 62
    new-instance p0, Lcom/airbnb/lottie/model/content/Mask;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    return-object p0
.end method
