.class Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmbientBrightnessStats"
.end annotation


# static fields
.field private static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field private static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field private static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final TAG_AMBIENT_BRIGHTNESS_DAY_STATS:Ljava/lang/String; = "ambient-brightness-day-stats"

.field private static final TAG_AMBIENT_BRIGHTNESS_STATS:Ljava/lang/String; = "ambient-brightness-stats"


# instance fields
.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 150
    return-void
.end method

.method private getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/hardware/display/AmbientBrightnessDayStats;"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 291
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 293
    return-object v0

    .line 295
    :cond_13
    new-instance v0, Landroid/hardware/display/AmbientBrightnessDayStats;

    sget-object v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    invoke-direct {v0, p2, v1}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F)V

    .line 297
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p2

    const/4 v1, 0x7

    if-ne p2, v1, :cond_24

    .line 298
    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 300
    :cond_24
    invoke-interface {p1, v0}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 301
    return-object v0
.end method

.method private getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;I)",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Deque;

    return-object p1
.end method


# virtual methods
.method public getUserStats(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 163
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public log(ILjava/time/LocalDate;FF)V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object p1

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p3, p4}, Landroid/hardware/display/AmbientBrightnessDayStats;->log(FF)V

    .line 157
    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const-string v0, ","

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 210
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 213
    :goto_14
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1f

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1f

    goto :goto_14

    .line 216
    :cond_1f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 217
    const-string v4, "ambient-brightness-stats"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 222
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    const-wide/16 v4, 0x7

    invoke-virtual {p1, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object p1

    .line 223
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 224
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 225
    :cond_42
    :goto_42
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_e0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_51

    .line 226
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_e0

    .line 227
    :cond_51
    if-eq v5, v6, :cond_42

    const/4 v6, 0x4

    if-ne v5, v6, :cond_57

    .line 228
    goto :goto_42

    .line 230
    :cond_57
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 231
    const-string v6, "ambient-brightness-day-stats"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 232
    const-string/jumbo v5, "user"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    const-string v7, "local-date"

    .line 234
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-static {v7}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v7

    .line 235
    const-string v8, "bucket-boundaries"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 237
    const-string v9, "bucket-stats"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 239
    array-length v9, v8

    array-length v10, v6

    if-ne v9, v10, :cond_d8

    array-length v9, v8

    if-lt v9, v3, :cond_d8

    .line 243
    array-length v9, v8

    new-array v9, v9, [F

    .line 244
    array-length v10, v6

    new-array v10, v10, [F

    .line 245
    const/4 v11, 0x0

    :goto_97
    array-length v12, v8

    if-ge v11, v12, :cond_ad

    .line 246
    aget-object v12, v8, v11

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v9, v11

    .line 247
    aget-object v12, v6, v11

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v10, v11

    .line 245
    add-int/lit8 v11, v11, 0x1

    goto :goto_97

    .line 249
    :cond_ad
    iget-object v6, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v8

    .line 250
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 249
    invoke-virtual {v6, v8, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v5

    .line 251
    const/4 v6, -0x1

    if-eq v5, v6, :cond_d6

    invoke-virtual {v7, p1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 252
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v5

    .line 254
    new-instance v6, Landroid/hardware/display/AmbientBrightnessDayStats;

    invoke-direct {v6, v7, v9, v10}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    invoke-interface {v5, v6}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 258
    :cond_d6
    goto/16 :goto_42

    .line 241
    :cond_d8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid brightness stats string."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_e0
    iput-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 264
    nop

    .line 265
    return-void

    .line 218
    :cond_e4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ambient brightness stats not found in tracker file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_fb
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_fb} :catch_fb
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_fb} :catch_fb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_fb} :catch_fb
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_fb} :catch_fb
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_fb} :catch_fb

    .line 261
    :catch_fb
    move-exception p1

    .line 263
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse brightness stats file."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 272
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    goto :goto_25

    .line 276
    :cond_4b
    goto :goto_f

    .line 277
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 169
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 173
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v4, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    .line 174
    const-string v2, "ambient-brightness-stats"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ea

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 177
    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v9}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v9

    .line 178
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 177
    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    .line 179
    const/4 v9, -0x1

    if-eq v8, v9, :cond_e8

    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 180
    const-string v9, "ambient-brightness-day-stats"

    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "user"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    nop

    .line 183
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    const-string v10, "local-date"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const/4 v11, 0x0

    :goto_ac
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_d2

    .line 187
    if-lez v11, :cond_bd

    .line 188
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_bd
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v12

    aget v12, v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    move-result-object v12

    aget v12, v12, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v11, v11, 0x1

    goto :goto_ac

    .line 194
    :cond_d2
    nop

    .line 195
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    const-string v8, "bucket-boundaries"

    invoke-interface {v0, v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bucket-stats"

    invoke-interface {v0, v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :cond_e8
    goto/16 :goto_51

    .line 200
    :cond_ea
    goto/16 :goto_3b

    .line 201
    :cond_ec
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 203
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 204
    return-void
.end method
