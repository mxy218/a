.class public Lcom/flyme/systemui/statusbar/utils/LunarUtils;
.super Ljava/lang/Object;
.source "LunarUtils.java"


# static fields
.field private static final sChineseMonNumber:[Ljava/lang/String;

.field private static final sChineseNumber:[Ljava/lang/String;

.field private static sInstance:Lcom/flyme/systemui/statusbar/utils/LunarUtils;


# instance fields
.field private day:I

.field private leap:Z

.field private mChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private month:I

.field private final sLunarInfo:[J

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 9
    new-instance v0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sInstance:Lcom/flyme/systemui/statusbar/utils/LunarUtils;

    const-string/jumbo v1, "一"

    const-string/jumbo v2, "二"

    const-string/jumbo v3, "三"

    const-string/jumbo v4, "四"

    const-string/jumbo v5, "五"

    const-string/jumbo v6, "六"

    const-string/jumbo v7, "七"

    const-string/jumbo v8, "八"

    const-string/jumbo v9, "九"

    const-string/jumbo v10, "十"

    const-string/jumbo v11, "十一"

    const-string/jumbo v12, "十二"

    .line 16
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sChineseNumber:[Ljava/lang/String;

    const-string/jumbo v1, "正"

    const-string/jumbo v2, "二"

    const-string/jumbo v3, "三"

    const-string/jumbo v4, "四"

    const-string/jumbo v5, "五"

    const-string/jumbo v6, "六"

    const-string/jumbo v7, "七"

    const-string/jumbo v8, "八"

    const-string/jumbo v9, "九"

    const-string/jumbo v10, "十"

    const-string/jumbo v11, "冬"

    const-string/jumbo v12, "腊"

    .line 17
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sChineseMonNumber:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy年MM月dd日"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->mChineseDateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x96

    new-array v0, v0, [J

    .line 18
    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sLunarInfo:[J

    return-void

    nop

    :array_18
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .registers 14

    const-string/jumbo v0, "甲"

    const-string/jumbo v1, "乙"

    const-string/jumbo v2, "丙"

    const-string/jumbo v3, "丁"

    const-string/jumbo v4, "戊"

    const-string/jumbo v5, "己"

    const-string/jumbo v6, "庚"

    const-string/jumbo v7, "辛"

    const-string/jumbo v8, "壬"

    const-string/jumbo v9, "癸"

    .line 147
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "子"

    const-string/jumbo v1, "丑"

    const-string/jumbo v2, "寅"

    const-string/jumbo v3, "卯"

    const-string/jumbo v4, "辰"

    const-string/jumbo v5, "巳"

    const-string/jumbo v6, "午"

    const-string/jumbo v7, "未"

    const-string/jumbo v8, "申"

    const-string/jumbo v9, "酉"

    const-string/jumbo v10, "戌"

    const-string/jumbo v11, "亥"

    .line 148
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v2, p1, 0xa

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0xc

    aget-object p0, v0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "年"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getChinaDayString(I)Ljava/lang/String;
    .registers 5

    const-string/jumbo p0, "初"

    const-string/jumbo v0, "十"

    const-string/jumbo v1, "廿"

    const-string/jumbo v2, "三"

    .line 153
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    .line 154
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_17

    const/16 v0, 0x9

    goto :goto_19

    :cond_17
    add-int/lit8 v0, v0, -0x1

    :goto_19
    const/16 v1, 0x1e

    if-le p1, v1, :cond_20

    const-string p0, ""

    return-object p0

    :cond_20
    const/16 v1, 0xa

    if-ne p1, v1, :cond_28

    const-string/jumbo p0, "初十"

    return-object p0

    :cond_28
    const/16 v2, 0x14

    if-ne p1, v2, :cond_30

    const-string/jumbo p0, "二十"

    return-object p0

    .line 162
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v1

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sChineseNumber:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/flyme/systemui/statusbar/utils/LunarUtils;
    .registers 1

    .line 36
    sget-object v0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sInstance:Lcom/flyme/systemui/statusbar/utils/LunarUtils;

    return-object v0
.end method

.method private leapDays(I)I
    .registers 4

    .line 124
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 125
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sLunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide p0, p0, p1

    const-wide/32 v0, 0x10000

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_19

    const/16 p0, 0x1e

    return p0

    :cond_19
    const/16 p0, 0x1d

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private leapMonth(I)I
    .registers 4

    .line 135
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sLunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide p0, p0, p1

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private monthDays(II)I
    .registers 5

    .line 140
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sLunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide p0, p0, p1

    const/high16 v0, 0x10000

    shr-int p2, v0, p2

    int-to-long v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_15

    const/16 p0, 0x1d

    return p0

    :cond_15
    const/16 p0, 0x1e

    return p0
.end method

.method private yearDays(I)I
    .registers 8

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_5
    const/16 v2, 0x8

    if-le v1, v2, :cond_1c

    .line 117
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sLunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    shr-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 119
    :cond_1c
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leapDays(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getLunarMonthAndDay()Ljava/lang/String;
    .registers 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "闰"

    goto :goto_f

    :cond_d
    const-string v1, ""

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->sChineseMonNumber:[Ljava/lang/String;

    iget v2, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "月"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->day:I

    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLunarYear()Ljava/lang/String;
    .registers 2

    .line 167
    iget v0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->year:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    .line 168
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->cyclicalm(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized loadLunarInfo()V
    .registers 8

    monitor-enter p0

    .line 40
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_97

    const/4 v1, 0x0

    .line 45
    :try_start_6
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->mChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "1900年1月31日"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_e} :catch_f
    .catchall {:try_start_6 .. :try_end_e} :catchall_97

    goto :goto_13

    :catch_f
    move-exception v2

    .line 47
    :try_start_10
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 51
    :goto_13
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x76c

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    const/16 v4, 0x802

    if-ge v1, v4, :cond_37

    if-lez v0, :cond_37

    .line 61
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->yearDays(I)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_37
    if-gez v0, :cond_3c

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    .line 71
    :cond_3c
    iput v1, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->year:I

    .line 74
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leapMonth(I)I

    move-result v1

    .line 75
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    const/4 v3, 0x1

    move v4, v0

    move v5, v2

    move v0, v3

    :goto_48
    const/16 v6, 0xd

    if-ge v0, v6, :cond_79

    if-lez v4, :cond_79

    if-lez v1, :cond_63

    add-int/lit8 v5, v1, 0x1

    if-ne v0, v5, :cond_63

    .line 81
    iget-boolean v5, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    if-nez v5, :cond_63

    add-int/lit8 v0, v0, -0x1

    .line 83
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    .line 84
    iget v5, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->year:I

    invoke-direct {p0, v5}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leapDays(I)I

    move-result v5

    goto :goto_69

    .line 86
    :cond_63
    iget v5, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->year:I

    invoke-direct {p0, v5, v0}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->monthDays(II)I

    move-result v5

    :goto_69
    sub-int/2addr v4, v5

    .line 90
    iget-boolean v6, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    if-eqz v6, :cond_74

    add-int/lit8 v6, v1, 0x1

    if-ne v0, v6, :cond_74

    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    .line 91
    :cond_74
    iget-boolean v6, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_79
    if-nez v4, :cond_8b

    if-lez v1, :cond_8b

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_8b

    .line 95
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    if-eqz v1, :cond_87

    .line 96
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    goto :goto_8b

    .line 98
    :cond_87
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->leap:Z

    add-int/lit8 v0, v0, -0x1

    :cond_8b
    :goto_8b
    if-gez v4, :cond_90

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, -0x1

    .line 109
    :cond_90
    iput v0, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->month:I

    add-int/2addr v4, v3

    .line 110
    iput v4, p0, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->day:I
    :try_end_95
    .catchall {:try_start_10 .. :try_end_95} :catchall_97

    .line 111
    monitor-exit p0

    return-void

    :catchall_97
    move-exception v0

    monitor-exit p0

    throw v0
.end method
