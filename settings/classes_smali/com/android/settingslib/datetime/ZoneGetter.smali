.class public Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    }
.end annotation


# direct methods
.method private static appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V
    .registers 5

    .line 247
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 248
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static formatDigits(IILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 254
    div-int/lit8 v0, p0, 0xa

    .line 255
    rem-int/lit8 v1, p0, 0xa

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0xa

    if-ge p0, v3, :cond_10

    const/4 p0, 0x2

    if-ne p1, p0, :cond_17

    .line 258
    :cond_10
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_17
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 16

    .line 277
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 279
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{0}"

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_19

    const-string v1, "GMT"

    const-string v2, ""

    goto :goto_24

    .line 287
    :cond_19
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x3

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v4

    .line 291
    :goto_24
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 292
    new-instance v4, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v4, v1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v4}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    .line 292
    invoke-static {v0, v1, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 296
    :cond_36
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p2

    const/4 p3, 0x1

    if-gez p2, :cond_43

    move v1, p3

    goto :goto_44

    :cond_43
    move v1, v3

    :goto_44
    if-eqz v1, :cond_4a

    neg-int p2, p2

    .line 301
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    goto :goto_4c

    .line 303
    :cond_4a
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 305
    :goto_4c
    invoke-virtual {p0, v1}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object p0

    int-to-long v4, p2

    const-wide/32 v6, 0x36ee80

    .line 308
    div-long v6, v4, v6

    long-to-int p2, v6

    const-wide/32 v6, 0xea60

    .line 309
    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 310
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    move v5, v3

    .line 312
    :goto_67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_d5

    .line 313
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_c3

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_c3

    const/16 v7, 0x2212

    if-ne v6, v7, :cond_7e

    goto :goto_c3

    :cond_7e
    const/16 v7, 0x48

    if-eq v6, v7, :cond_8b

    const/16 v8, 0x6d

    if-ne v6, v8, :cond_87

    goto :goto_8b

    .line 337
    :cond_87
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_d3

    :cond_8b
    :goto_8b
    add-int/lit8 v8, v5, 0x1

    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_9b

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_9b

    const/4 v5, 0x2

    goto :goto_9d

    :cond_9b
    move v8, v5

    move v5, p3

    :goto_9d
    if-ne v6, v7, :cond_a4

    const-string v6, "hour"

    move-object v7, v6

    move v6, p2

    goto :goto_a8

    :cond_a4
    const-string v6, "minute"

    move-object v7, v6

    move v6, v4

    .line 334
    :goto_a8
    invoke-static {v6, v5, p0}, Lcom/android/settingslib/datetime/ZoneGetter;->formatDigits(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v9}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long v10, v6

    .line 335
    invoke-virtual {v9, v10, v11}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v6

    .line 334
    invoke-static {v0, v5, v6}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    move v5, v8

    goto :goto_d3

    .line 315
    :cond_c3
    :goto_c3
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 316
    new-instance v7, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v7, v6}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :goto_d3
    add-int/2addr v5, p3

    goto :goto_67

    .line 341
    :cond_d5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e7

    .line 342
    new-instance p0, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {p0, v2}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    .line 342
    invoke-static {v0, v2, p0}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 346
    :cond_e7
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object p2

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-ne p1, p3, :cond_f7

    goto :goto_f8

    :cond_f7
    move p3, v3

    :goto_f8
    if-eqz p3, :cond_fd

    .line 352
    sget-object p1, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_ff

    :cond_fd
    sget-object p1, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 351
    :goto_ff
    invoke-virtual {p2, p0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    invoke-static {p0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    .line 98
    invoke-static {v0, p0, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    invoke-static {p0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1d

    return-object v0

    :cond_1d
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, " "

    aput-object v0, p1, p2

    const/4 p2, 0x2

    aput-object p0, p1, p2

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .registers 6

    .line 240
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_b

    .line 241
    :cond_9
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 242
    :goto_b
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
