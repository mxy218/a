.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    .line 42
    :try_start_3
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;Z)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_7

    .line 58
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p0

    return-object p0

    .line 60
    :cond_7
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p0

    return-object p0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v5, 0x0

    move v12, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 83
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v3, 0x65

    const/4 v4, 0x1

    if-eq v13, v3, :cond_8c

    const/16 v3, 0x6f

    if-eq v13, v3, :cond_82

    const/16 v3, 0xe75

    if-eq v13, v3, :cond_77

    const/16 v3, 0xe7b

    if-eq v13, v3, :cond_6c

    const/16 v3, 0x68

    if-eq v13, v3, :cond_62

    const/16 v3, 0x69

    if-eq v13, v3, :cond_58

    const/16 v3, 0x73

    if-eq v13, v3, :cond_4e

    const/16 v3, 0x74

    if-eq v13, v3, :cond_43

    goto :goto_96

    :cond_43
    const-string/jumbo v3, "t"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x0

    goto :goto_97

    :cond_4e
    const-string v3, "s"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    move v3, v4

    goto :goto_97

    :cond_58
    const-string v3, "i"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x4

    goto :goto_97

    :cond_62
    const-string v3, "h"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x5

    goto :goto_97

    :cond_6c
    const-string/jumbo v3, "to"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x6

    goto :goto_97

    :cond_77
    const-string/jumbo v3, "ti"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x7

    goto :goto_97

    :cond_82
    const-string v3, "o"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x3

    goto :goto_97

    :cond_8c
    const-string v3, "e"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x2

    goto :goto_97

    :cond_96
    :goto_96
    move v3, v11

    :goto_97
    packed-switch v3, :pswitch_data_162

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_12

    .line 107
    :pswitch_9f  #0x7
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_12

    .line 104
    :pswitch_a6  #0x6
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_12

    .line 101
    :pswitch_ad  #0x5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    if-ne v3, v4, :cond_b4

    goto :goto_b5

    :cond_b4
    const/4 v4, 0x0

    :goto_b5
    move v5, v4

    goto/16 :goto_12

    .line 98
    :pswitch_b8  #0x4
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_12

    .line 95
    :pswitch_bf  #0x3
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v6, v3

    goto/16 :goto_12

    .line 92
    :pswitch_c6  #0x2
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_12

    .line 89
    :pswitch_cd  #0x1
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_12

    .line 86
    :pswitch_d4  #0x0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move v12, v3

    goto/16 :goto_12

    .line 113
    :cond_dc
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v5, :cond_e7

    .line 118
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v11, v0

    move-object v10, v9

    goto/16 :goto_154

    :cond_e7
    if-eqz v6, :cond_150

    if-eqz v7, :cond_150

    .line 120
    iget v0, v6, Landroid/graphics/PointF;->x:F

    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 121
    iget v0, v6, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x42c80000  # 100.0f

    const/high16 v4, -0x3d380000  # -100.0f

    invoke-static {v0, v4, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 122
    iget v0, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 123
    iget v0, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 124
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v2, v6, Landroid/graphics/PointF;->y:F

    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_12c

    .line 127
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/animation/Interpolator;

    move-object/from16 v16, v4

    goto :goto_12e

    :cond_12c
    const/16 v16, 0x0

    :goto_12e
    if-eqz v2, :cond_132

    if-nez v16, :cond_14c

    .line 130
    :cond_132
    iget v2, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v1

    iget v3, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v1

    iget v4, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v1

    iget v5, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 133
    :try_start_142
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_14a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_142 .. :try_end_14a} :catch_14a

    :catch_14a
    move-object/from16 v16, v1

    :cond_14c
    move-object v10, v8

    move-object/from16 v11, v16

    goto :goto_154

    .line 143
    :cond_150
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v11, v0

    move-object v10, v8

    .line 146
    :goto_154
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 148
    iput-object v14, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 149
    iput-object v15, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object v0

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_d4  #00000000
        :pswitch_cd  #00000001
        :pswitch_c6  #00000002
        :pswitch_bf  #00000003
        :pswitch_b8  #00000004
        :pswitch_ad  #00000005
        :pswitch_a6  #00000006
        :pswitch_9f  #00000007
    .end packed-switch
.end method

.method private static parseStaticValue(Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-interface {p2, p0, p1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object p0

    .line 156
    new-instance p1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 34
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 49
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
