.class public Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v11, v0

    move/from16 v21, v1

    move-object v7, v2

    move-object v8, v7

    move v12, v3

    move/from16 v17, v12

    move/from16 v18, v17

    move-wide v9, v4

    move-wide v13, v9

    move-wide v15, v13

    move-wide/from16 v19, v15

    .line 29
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_c5

    const/16 v5, 0x6a

    if-eq v4, v5, :cond_bb

    const/16 v5, 0xcbd

    if-eq v4, v5, :cond_b1

    const/16 v5, 0xd7c

    if-eq v4, v5, :cond_a7

    const/16 v5, 0xd87

    if-eq v4, v5, :cond_9d

    const/16 v5, 0xdd7

    if-eq v4, v5, :cond_91

    const/16 v5, 0xe50

    if-eq v4, v5, :cond_85

    const/16 v5, 0xe64

    if-eq v4, v5, :cond_79

    const/16 v5, 0xe7e

    if-eq v4, v5, :cond_6e

    const/16 v5, 0x73

    if-eq v4, v5, :cond_62

    const/16 v5, 0x74

    if-eq v4, v5, :cond_56

    goto/16 :goto_cf

    :cond_56
    const-string/jumbo v4, "t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v3

    goto/16 :goto_d0

    :cond_62
    const-string/jumbo v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x2

    goto/16 :goto_d0

    :cond_6e
    const-string/jumbo v4, "tr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x4

    goto :goto_d0

    :cond_79
    const-string/jumbo v4, "sw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 v0, 0x9

    goto :goto_d0

    :cond_85
    const-string/jumbo v4, "sc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 v0, 0x8

    goto :goto_d0

    :cond_91
    const-string/jumbo v4, "of"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 v0, 0xa

    goto :goto_d0

    :cond_9d
    const-string v4, "ls"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x6

    goto :goto_d0

    :cond_a7
    const-string v4, "lh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x5

    goto :goto_d0

    :cond_b1
    const-string v4, "fc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x7

    goto :goto_d0

    :cond_bb
    const-string v4, "j"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v0, 0x3

    goto :goto_d0

    :cond_c5
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v1

    goto :goto_d0

    :cond_cf
    :goto_cf
    move v0, v2

    :goto_d0
    packed-switch v0, :pswitch_data_148

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_19

    .line 67
    :pswitch_d8  #0xa
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    move/from16 v21, v0

    goto/16 :goto_19

    .line 64
    :pswitch_e0  #0x9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide/from16 v19, v4

    goto/16 :goto_19

    .line 61
    :pswitch_e8  #0x8
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v0

    move/from16 v18, v0

    goto/16 :goto_19

    .line 58
    :pswitch_f0  #0x7
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v0

    move/from16 v17, v0

    goto/16 :goto_19

    .line 55
    :pswitch_f8  #0x6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide v15, v4

    goto/16 :goto_19

    .line 52
    :pswitch_ff  #0x5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide v13, v4

    goto/16 :goto_19

    .line 49
    :pswitch_106  #0x4
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    move v12, v0

    goto/16 :goto_19

    .line 41
    :pswitch_10d  #0x3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 42
    sget-object v2, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_123

    if-gez v0, :cond_11c

    goto :goto_123

    .line 45
    :cond_11c
    invoke-static {}, Lcom/airbnb/lottie/model/DocumentData$Justification;->values()[Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_125

    .line 43
    :cond_123
    :goto_123
    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    :goto_125
    move-object v11, v0

    goto/16 :goto_19

    .line 38
    :pswitch_128  #0x2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide v9, v4

    goto/16 :goto_19

    .line 35
    :pswitch_12f  #0x1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_19

    .line 32
    :pswitch_136  #0x0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_19

    .line 73
    :cond_13d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 75
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData;

    move-object v6, v0

    invoke-direct/range {v6 .. v21}, Lcom/airbnb/lottie/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;DLcom/airbnb/lottie/model/DocumentData$Justification;IDDIIDZ)V

    return-object v0

    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_136  #00000000
        :pswitch_12f  #00000001
        :pswitch_128  #00000002
        :pswitch_10d  #00000003
        :pswitch_106  #00000004
        :pswitch_ff  #00000005
        :pswitch_f8  #00000006
        :pswitch_f0  #00000007
        :pswitch_e8  #00000008
        :pswitch_e0  #00000009
        :pswitch_d8  #0000000a
    .end packed-switch
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/DocumentDataParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p0

    return-object p0
.end method
