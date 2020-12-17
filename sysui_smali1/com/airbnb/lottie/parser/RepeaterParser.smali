.class Lcom/airbnb/lottie/parser/RepeaterParser;
.super Ljava/lang/Object;
.source "RepeaterParser.java"


# direct methods
.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 24
    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 25
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x63

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v8, v9, :cond_58

    const/16 v9, 0x6f

    if-eq v8, v9, :cond_4e

    const/16 v9, 0xcfc

    if-eq v8, v9, :cond_44

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_3a

    const/16 v9, 0xe7e

    if-eq v8, v9, :cond_2f

    goto :goto_61

    :cond_2f
    const-string/jumbo v8, "tr"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v11

    goto :goto_61

    :cond_3a
    const-string v8, "nm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v0

    goto :goto_61

    :cond_44
    const-string v8, "hd"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v10

    goto :goto_61

    :cond_4e
    const-string v8, "o"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v12

    goto :goto_61

    :cond_58
    const-string v8, "c"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v13

    :cond_61
    :goto_61
    if-eqz v2, :cond_87

    if-eq v2, v13, :cond_81

    if-eq v2, v12, :cond_7b

    if-eq v2, v11, :cond_75

    if-eq v2, v10, :cond_6f

    .line 42
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 39
    :cond_6f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    move v7, v1

    goto :goto_7

    .line 36
    :cond_75
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v1

    move-object v6, v1

    goto :goto_7

    .line 33
    :cond_7b
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    move-object v5, v1

    goto :goto_7

    .line 30
    :cond_81
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    move-object v4, v1

    goto :goto_7

    .line 27
    :cond_87
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_7

    .line 46
    :cond_8e
    new-instance p0, Lcom/airbnb/lottie/model/content/Repeater;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    return-object p0
.end method
