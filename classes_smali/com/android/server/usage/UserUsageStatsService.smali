.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERVAL_LENGTH:[J

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private mLastBackgroundedPackage:Ljava/lang/String;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 248
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 265
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 282
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    :array_28
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .registers 7

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 98
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 99
    new-instance p1, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 100
    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/server/usage/IntervalStats;

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 101
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 103
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 104
    return-void
.end method

.method private dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .registers 11

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 701
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V

    .line 702
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 703
    return-void
.end method

.method private dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 9

    .line 688
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, p2

    .line 689
    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 690
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_20

    .line 691
    invoke-virtual {v0, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 692
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 693
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 694
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 696
    :cond_20
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 3

    .line 964
    packed-switch p0, :pswitch_data_64

    .line 1018
    :pswitch_3  #0x18, 0x19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1016
    :pswitch_15  #0x1b
    const-string p0, "DEVICE_STARTUP"

    return-object p0

    .line 1014
    :pswitch_18  #0x1a
    const-string p0, "DEVICE_SHUTDOWN"

    return-object p0

    .line 976
    :pswitch_1b  #0x17
    const-string p0, "ACTIVITY_STOPPED"

    return-object p0

    .line 980
    :pswitch_1e  #0x16
    const-string p0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object p0

    .line 984
    :pswitch_21  #0x15
    const-string p0, "CONTINUING_FOREGROUND_SERVICE"

    return-object p0

    .line 974
    :pswitch_24  #0x14
    const-string p0, "FOREGROUND_SERVICE_STOP"

    return-object p0

    .line 972
    :pswitch_27  #0x13
    const-string p0, "FOREGROUND_SERVICE_START"

    return-object p0

    .line 1012
    :pswitch_2a  #0x12
    const-string p0, "KEYGUARD_HIDDEN"

    return-object p0

    .line 1010
    :pswitch_2d  #0x11
    const-string p0, "KEYGUARD_SHOWN"

    return-object p0

    .line 1008
    :pswitch_30  #0x10
    const-string p0, "SCREEN_NON_INTERACTIVE"

    return-object p0

    .line 1006
    :pswitch_33  #0xf
    const-string p0, "SCREEN_INTERACTIVE"

    return-object p0

    .line 1002
    :pswitch_36  #0xe
    const-string p0, "SLICE_PINNED"

    return-object p0

    .line 1004
    :pswitch_39  #0xd
    const-string p0, "SLICE_PINNED_PRIV"

    return-object p0

    .line 1000
    :pswitch_3c  #0xc
    const-string p0, "NOTIFICATION_INTERRUPTION"

    return-object p0

    .line 998
    :pswitch_3f  #0xb
    const-string p0, "STANDBY_BUCKET_CHANGED"

    return-object p0

    .line 996
    :pswitch_42  #0xa
    const-string p0, "NOTIFICATION_SEEN"

    return-object p0

    .line 994
    :pswitch_45  #0x9
    const-string p0, "CHOOSER_ACTION"

    return-object p0

    .line 992
    :pswitch_48  #0x8
    const-string p0, "SHORTCUT_INVOCATION"

    return-object p0

    .line 990
    :pswitch_4b  #0x7
    const-string p0, "USER_INTERACTION"

    return-object p0

    .line 988
    :pswitch_4e  #0x6
    const-string p0, "SYSTEM_INTERACTION"

    return-object p0

    .line 986
    :pswitch_51  #0x5
    const-string p0, "CONFIGURATION_CHANGE"

    return-object p0

    .line 982
    :pswitch_54  #0x4
    const-string p0, "CONTINUE_PREVIOUS_DAY"

    return-object p0

    .line 978
    :pswitch_57  #0x3
    const-string p0, "END_OF_DAY"

    return-object p0

    .line 968
    :pswitch_5a  #0x2
    const-string p0, "ACTIVITY_PAUSED"

    return-object p0

    .line 970
    :pswitch_5d  #0x1
    const-string p0, "ACTIVITY_RESUMED"

    return-object p0

    .line 966
    :pswitch_60  #0x0
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_5d  #00000001
        :pswitch_5a  #00000002
        :pswitch_57  #00000003
        :pswitch_54  #00000004
        :pswitch_51  #00000005
        :pswitch_4e  #00000006
        :pswitch_4b  #00000007
        :pswitch_48  #00000008
        :pswitch_45  #00000009
        :pswitch_42  #0000000a
        :pswitch_3f  #0000000b
        :pswitch_3c  #0000000c
        :pswitch_39  #0000000d
        :pswitch_36  #0000000e
        :pswitch_33  #0000000f
        :pswitch_30  #00000010
        :pswitch_2d  #00000011
        :pswitch_2a  #00000012
        :pswitch_27  #00000013
        :pswitch_24  #00000014
        :pswitch_21  #00000015
        :pswitch_1e  #00000016
        :pswitch_1b  #00000017
        :pswitch_3  #00000018
        :pswitch_3  #00000019
        :pswitch_18  #0000001a
        :pswitch_15  #0000001b
    .end packed-switch
.end method

.method static formatDateTime(JZ)Ljava/lang/String;
    .registers 5

    .line 706
    if-eqz p2, :cond_21

    .line 707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 709
    :cond_21
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .registers 7

    .line 713
    if-eqz p3, :cond_1e

    .line 714
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 716
    :cond_1e
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .registers 2

    .line 934
    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 944
    const-string p0, "?"

    return-object p0

    .line 942
    :cond_e
    const-string/jumbo p0, "yearly"

    return-object p0

    .line 940
    :cond_12
    const-string/jumbo p0, "monthly"

    return-object p0

    .line 938
    :cond_16
    const-string/jumbo p0, "weekly"

    return-object p0

    .line 936
    :cond_1a
    const-string p0, "daily"

    return-object p0
.end method

.method static synthetic lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 12

    .line 425
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 426
    iget-object p1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    .line 427
    nop

    :goto_d
    if-ge p0, p1, :cond_50

    .line 428
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p8

    iget-wide v0, p8, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long p8, v0, p2

    if-ltz p8, :cond_1c

    .line 429
    return-void

    .line 432
    :cond_1c
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p8

    .line 433
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 434
    goto :goto_4d

    .line 436
    :cond_2b
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 437
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_34
    if-eqz p6, :cond_3f

    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 440
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3f
    if-eqz p6, :cond_4a

    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 443
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_4a
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_4d
    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    .line 447
    :cond_50
    return-void
.end method

.method private loadActiveStats(J)V
    .registers 10

    .line 566
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_38

    .line 567
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    .line 568
    if-eqz v2, :cond_1f

    iget-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v5, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v5, v5, v1

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_1f

    .line 575
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v2, v3, v1

    goto :goto_35

    .line 584
    :cond_1f
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v1

    .line 585
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v2, v1

    iput-wide p1, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 586
    aget-object v2, v2, v1

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 566
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 590
    :cond_38
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 591
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 594
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {p1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    .line 595
    return-void
.end method

.method private notifyNewUpdate()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    .line 563
    return-void
.end method

.method private notifyStatsChanged()V
    .registers 2

    .line 555
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_c

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 557
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 559
    :cond_c
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 298
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 299
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    .line 300
    if-gez p1, :cond_e

    .line 303
    const/4 p1, 0x0

    move v1, p1

    goto :goto_11

    .line 300
    :cond_e
    move v1, p1

    goto :goto_11

    .line 298
    :cond_10
    move v1, p1

    .line 307
    :goto_11
    const/4 p1, 0x0

    if-ltz v1, :cond_49

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    goto :goto_49

    .line 314
    :cond_1a
    aget-object v7, v0, v1

    .line 321
    iget-wide v2, v7, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_23

    .line 327
    return-object p1

    .line 333
    :cond_23
    iget-wide v2, v7, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 336
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide v2, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p1

    .line 345
    iget-wide v0, v7, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p2, p2, v0

    if-gez p2, :cond_48

    iget-wide p2, v7, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long p2, p4, p2

    if-lez p2, :cond_48

    .line 350
    if-nez p1, :cond_44

    .line 351
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    :cond_44
    const/4 p2, 0x1

    invoke-interface {p6, v7, p2, p1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    .line 359
    :cond_48
    return-object p1

    .line 311
    :cond_49
    :goto_49
    return-object p1
.end method

.method private rolloverStats(J)V
    .registers 32

    .line 473
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Rolling over usage stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 481
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 482
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 484
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 486
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_38
    if-ge v11, v10, :cond_ff

    aget-object v15, v9, v11

    .line 487
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 488
    move v13, v5

    :goto_43
    const-wide/16 v19, 0x1

    if-ge v13, v14, :cond_db

    .line 489
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 490
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_69

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 491
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    goto :goto_69

    :cond_60
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    goto/16 :goto_d1

    .line 492
    :cond_69
    :goto_69
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_9b

    .line 493
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 496
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v17, v17, v19

    const/4 v9, 0x3

    const/16 v23, 0x0

    .line 495
    move-object/from16 v24, v12

    move-object v12, v15

    move/from16 v25, v13

    move-object v13, v5

    move v5, v14

    const/4 v14, 0x0

    move-object/from16 v26, v15

    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v23

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_a4

    .line 492
    :cond_9b
    move-object/from16 v22, v9

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 499
    :goto_a4
    move-object/from16 v9, v24

    iget-object v12, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c9

    .line 500
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v13, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 503
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long v15, v15, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    .line 502
    move-object/from16 v12, v26

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 506
    :cond_c9
    iget-object v9, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 488
    :goto_d1
    add-int/lit8 v13, v25, 0x1

    move v14, v5

    move-object/from16 v9, v22

    move-object/from16 v15, v26

    const/4 v5, 0x0

    goto/16 :goto_43

    .line 511
    :cond_db
    move-object/from16 v22, v9

    move-object/from16 v26, v15

    const/4 v5, 0x0

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 512
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    .line 511
    move-object/from16 v9, v26

    invoke-virtual {v9, v5, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 513
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v5}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v9, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    .line 486
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_38

    .line 516
    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 517
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 518
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 520
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 521
    const/4 v9, 0x0

    :goto_111
    if-ge v9, v5, :cond_1dd

    .line 522
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 523
    iget-object v11, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/16 v18, 0x0

    aget-object v11, v11, v18

    iget-wide v14, v11, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 524
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v12, v13

    move/from16 v11, v18

    :goto_126
    if-ge v11, v12, :cond_1d3

    move/from16 p1, v5

    aget-object v5, v13, v11

    .line 525
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17c

    .line 526
    nop

    .line 527
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    check-cast v13, Landroid/util/SparseIntArray;

    .line 528
    move-object/from16 v19, v6

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 529
    move-object/from16 v20, v7

    move/from16 v7, v18

    :goto_147
    if-ge v7, v6, :cond_173

    .line 530
    const/16 v16, 0x0

    .line 531
    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v21

    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v22

    .line 530
    move/from16 v23, v11

    move-object v11, v5

    move/from16 v24, v12

    move-object v12, v10

    move-object/from16 v26, v13

    move-object/from16 v25, v17

    move-object/from16 v13, v16

    move-wide/from16 v27, v14

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 529
    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v17, v25

    move-object/from16 v13, v26

    goto :goto_147

    :cond_173
    move/from16 v23, v11

    move/from16 v24, v12

    move-wide/from16 v27, v14

    move-object/from16 v25, v17

    goto :goto_188

    .line 525
    :cond_17c
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v25, v13

    move-wide/from16 v27, v14

    .line 534
    :goto_188
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bc

    .line 535
    nop

    .line 536
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 537
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 538
    move/from16 v14, v18

    :goto_19b
    if-ge v14, v7, :cond_1bc

    .line 539
    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    .line 540
    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    .line 539
    move-object v11, v5

    move-object v12, v10

    move/from16 v21, v14

    move-wide/from16 v14, v27

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 538
    add-int/lit8 v14, v21, 0x1

    goto :goto_19b

    .line 543
    :cond_1bc
    move-wide/from16 v6, v27

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 524
    add-int/lit8 v11, v23, 0x1

    move/from16 v5, p1

    move-wide v14, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v12, v24

    move-object/from16 v13, v25

    goto/16 :goto_126

    .line 521
    :cond_1d3
    move/from16 p1, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_111

    .line 547
    :cond_1dd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Rolling over usage stats complete. Took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method private static stringToInterval(Ljava/lang/String;)I
    .registers 7

    .line 949
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_4a

    :cond_10
    goto :goto_3c

    :sswitch_11
    const-string/jumbo v0, "monthly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v4

    goto :goto_3d

    :sswitch_1c
    const-string v0, "daily"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v1

    goto :goto_3d

    :sswitch_26
    const-string/jumbo v0, "yearly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v3

    goto :goto_3d

    :sswitch_31
    const-string/jumbo v0, "weekly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v5

    goto :goto_3d

    :goto_3c
    move p0, v2

    :goto_3d
    if-eqz p0, :cond_49

    if-eq p0, v5, :cond_48

    if-eq p0, v4, :cond_47

    if-eq p0, v3, :cond_46

    .line 959
    return v2

    .line 957
    :cond_46
    return v3

    .line 955
    :cond_47
    return v4

    .line 953
    :cond_48
    return v5

    .line 951
    :cond_49
    return v1

    :sswitch_data_4a
    .sparse-switch
        -0x2f307f7f -> :sswitch_31
        -0x2bc88576 -> :sswitch_26
        0x5aede19 -> :sswitch_1c
        0x49b5900d -> :sswitch_11
    .end sparse-switch
.end method

.method private updateRolloverDeadline()V
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 600
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 602
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 603
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 4

    .line 1027
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 1028
    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 611
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 618
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 622
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V
    .registers 12

    .line 624
    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/lang/String;)V

    .line 625
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 626
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 627
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 631
    :cond_2c
    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 632
    return-void
.end method

.method dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 635
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 636
    return-void
.end method

.method dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 639
    const/4 v0, 0x0

    if-eqz p2, :cond_6c

    array-length v1, p2

    if-nez v1, :cond_7

    goto :goto_6c

    .line 651
    :cond_7
    :try_start_7
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    .line 652
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 653
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_1a} :catch_65

    goto :goto_1c

    .line 655
    :cond_1b
    nop

    .line 660
    :goto_1c
    nop

    .line 661
    if-ltz v1, :cond_5e

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, v0

    if-lt v1, v0, :cond_27

    goto :goto_5e

    .line 665
    :cond_27
    array-length v0, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 667
    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_99

    .line 672
    :cond_2f
    :try_start_2f
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_39} :catch_57

    .line 676
    nop

    .line 677
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v0

    .line 678
    if-nez v0, :cond_49

    .line 679
    const-string/jumbo p2, "the specified filename does not exist."

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 680
    return-void

    .line 682
    :cond_49
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    goto :goto_99

    .line 673
    :catch_57
    move-exception p2

    .line 674
    const-string p2, "invalid filename specified."

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 675
    return-void

    .line 662
    :cond_5e
    :goto_5e
    const-string/jumbo p2, "the specified interval does not exist."

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    return-void

    .line 657
    :catch_65
    move-exception p2

    .line 658
    const-string p2, "invalid interval specified."

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    return-void

    .line 641
    :cond_6c
    :goto_6c
    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object p2, p2, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length p2, p2

    .line 642
    nop

    :goto_72
    if-ge v0, p2, :cond_98

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 646
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 648
    :cond_98
    nop

    .line 685
    :goto_99
    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method init(J)V
    .registers 8

    .line 107
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 109
    nop

    .line 110
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v3

    if-ge v1, v4, :cond_21

    .line 111
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    aput-object v4, v3, v1

    .line 112
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    if-nez v3, :cond_1e

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 110
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 119
    :cond_21
    if-lez v2, :cond_42

    .line 120
    array-length v1, v3

    if-eq v2, v1, :cond_3e

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Some stats have no latest available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_45

    .line 135
    :cond_42
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 142
    :goto_45
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object p1, p1, v0

    .line 143
    if-eqz p1, :cond_71

    .line 144
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    const/16 v0, 0x1a

    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 145
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {p2, v0, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 146
    const-string v0, "android"

    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 148
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 149
    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 150
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 153
    :cond_71
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 154
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    .line 156
    :cond_7c
    return-void
.end method

.method onTimeChanged(JJ)V
    .registers 6

    .line 159
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 160
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long p1, p3, p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 161
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 162
    return-void
.end method

.method persistActiveStats()V
    .registers 6

    .line 459
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_49

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Flushing usage stats to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    move v2, v0

    :goto_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    .line 463
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v2

    invoke-virtual {v3, v2, v4}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 465
    :cond_2f
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_32

    .line 468
    goto :goto_49

    .line 466
    :catch_32
    move-exception v0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed to persist active stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    :cond_49
    :goto_49
    return-void
.end method

.method printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .registers 6

    .line 721
    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 722
    iget p3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p3}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 723
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 724
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz p3, :cond_2b

    .line 725
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v0, "class"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 727
    :cond_2b
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p3, :cond_3a

    .line 728
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p3}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "config"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 730
    :cond_3a
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p3, :cond_46

    .line 731
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string/jumbo v0, "shortcutId"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 733
    :cond_46
    iget p3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v0, 0xb

    if-ne p3, v0, :cond_69

    .line 734
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyBucket()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v0, "standbyBucket"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 735
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result p3

    invoke-static {p3}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_86

    .line 736
    :cond_69
    iget p3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_79

    iget p3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_79

    iget p3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v0, 0x17

    if-ne p3, v0, :cond_86

    .line 739
    :cond_79
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "instanceId"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 742
    :cond_86
    :goto_86
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_96

    .line 743
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "taskRootPackage"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 746
    :cond_96
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a6

    .line 747
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "taskRootClass"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 750
    :cond_a6
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p3, :cond_b1

    .line 751
    iget-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string v0, "channelId"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 753
    :cond_b1
    iget p2, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string p3, "flags"

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 754
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 755
    return-void
.end method

.method printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .registers 10

    .line 805
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_40

    .line 806
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 807
    const-string p2, ": "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 808
    iget p2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 809
    const-string/jumbo p2, "x for "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 811
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_3d

    .line 812
    const-string p2, " (now running, started at "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 813
    iget-wide p2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {p2, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 814
    const-string p2, ")"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 816
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 818
    :cond_40
    return-void
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V
    .registers 25

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_34

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v10, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v12, 0x20015

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeRange"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_4a

    .line 826
    :cond_34
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 827
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 829
    :goto_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 830
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 831
    const-string/jumbo v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 833
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 834
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 835
    const/4 v8, 0x0

    :goto_60
    const-string/jumbo v9, "package"

    if-ge v8, v6, :cond_d1

    .line 836
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 837
    if-eqz v4, :cond_76

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_76

    .line 838
    goto :goto_ce

    .line 840
    :cond_76
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 841
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 842
    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 841
    const-string/jumbo v11, "totalTimeUsed"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 843
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v11, "lastTimeUsed"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 844
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 845
    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 844
    const-string/jumbo v11, "totalTimeVisible"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 846
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 847
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 846
    const-string v11, "lastTimeVisible"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 848
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 849
    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 848
    const-string/jumbo v11, "totalTimeFS"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 850
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 851
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 850
    const-string v11, "lastTimeFS"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 852
    iget v9, v10, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 835
    :goto_ce
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 855
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 857
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 858
    const-string v6, "ChooserCounts"

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 860
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_184

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 861
    if-eqz v4, :cond_fe

    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_fe

    .line 862
    goto :goto_e7

    .line 864
    :cond_fe
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 865
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v10, :cond_17b

    .line 866
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 867
    const/4 v11, 0x0

    :goto_10e
    if-ge v11, v10, :cond_178

    .line 868
    iget-object v12, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 869
    iget-object v13, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 870
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 871
    const/4 v15, 0x0

    :goto_125
    if-ge v15, v14, :cond_171

    .line 872
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    .line 873
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 874
    if-eqz v16, :cond_166

    .line 875
    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 875
    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 877
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_16a

    .line 874
    :cond_166
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    .line 871
    :goto_16a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_125

    .line 867
    :cond_171
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_10e

    :cond_178
    move-object/from16 v17, v5

    goto :goto_17d

    .line 865
    :cond_17b
    move-object/from16 v17, v5

    .line 882
    :goto_17d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 883
    move-object/from16 v5, v17

    goto/16 :goto_e7

    .line 884
    :cond_184
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 886
    if-nez v4, :cond_1ff

    .line 887
    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 889
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 890
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 891
    const/4 v7, 0x0

    :goto_198
    if-ge v7, v6, :cond_1d3

    .line 892
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 893
    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 895
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-direct {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 896
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 897
    iget v8, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v1, v9, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 891
    add-int/lit8 v7, v7, 0x1

    goto :goto_198

    .line 900
    :cond_1d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 901
    const-string v5, "event aggregations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 903
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v6, "screen-interactive"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 905
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v6, "screen-non-interactive"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 907
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v6, "keyguard-shown"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 909
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v6, "keyguard-hidden"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 911
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 916
    :cond_1ff
    if-nez p4, :cond_22e

    .line 917
    const-string v5, "events"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 919
    iget-object v2, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 920
    if-eqz v2, :cond_212

    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    move-result v7

    goto :goto_213

    :cond_212
    const/4 v7, 0x0

    .line 921
    :goto_213
    const/4 v5, 0x0

    :goto_214
    if-ge v5, v7, :cond_22b

    .line 922
    invoke-virtual {v2, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v6

    .line 923
    if-eqz v4, :cond_225

    iget-object v8, v6, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_225

    .line 924
    goto :goto_228

    .line 926
    :cond_225
    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 921
    :goto_228
    add-int/lit8 v5, v5, 0x1

    goto :goto_214

    .line 928
    :cond_22b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 930
    :cond_22e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 931
    return-void
.end method

.method printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/lang/String;)V
    .registers 16

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 759
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v7, v8}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    .line 760
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 762
    invoke-virtual {v0}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v9

    .line 764
    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/lang/String;)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p3

    .line 785
    const-string v0, "Last 24 hour events ("

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 786
    if-eqz p2, :cond_4f

    .line 787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v5, 0x20015

    move-wide v1, v9

    move-wide v3, v7

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timeRange"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_61

    .line 790
    :cond_4f
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 791
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 793
    :goto_61
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    if-eqz p3, :cond_82

    .line 795
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 796
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 797
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 798
    goto :goto_6f

    .line 799
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 801
    :cond_82
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 367
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 371
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryEvents(JJZ)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 376
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 377
    new-instance v9, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJZLandroid/util/ArraySet;)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p1

    .line 410
    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_36

    .line 414
    :cond_20
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v8, p2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 415
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 416
    new-instance p3, Landroid/app/usage/UsageEvents;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p3

    .line 411
    :cond_36
    :goto_36
    const/4 p1, 0x0

    return-object p1
.end method

.method queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 17

    .line 421
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 422
    move-object v5, p5

    invoke-virtual {v8, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v9, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, v8

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_3d

    .line 453
    :cond_26
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 454
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 455
    new-instance v2, Landroid/app/usage/UsageEvents;

    move/from16 v3, p6

    invoke-direct {v2, v0, v1, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v2

    .line 450
    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 363
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 19

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_15

    .line 173
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 176
    :cond_15
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 178
    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 179
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2d

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_2d

    .line 182
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v5, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 186
    :cond_2d
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v5, v7, :cond_47

    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x18

    if-eq v5, v7, :cond_47

    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x19

    if-eq v5, v7, :cond_47

    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_47

    .line 195
    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 198
    :cond_47
    nop

    .line 199
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5c

    .line 200
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_69

    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 201
    goto :goto_6a

    .line 203
    :cond_5c
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_69

    .line 204
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_69

    .line 205
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 209
    :cond_69
    move v5, v3

    :goto_6a
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v7, v2

    move v8, v3

    :goto_6e
    if-ge v8, v7, :cond_e0

    aget-object v15, v2, v8

    .line 210
    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v9, v6, :cond_d5

    const/16 v10, 0x9

    if-eq v9, v10, :cond_b6

    packed-switch v9, :pswitch_data_e4

    .line 236
    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v14, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    move/from16 v16, v9

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 238
    if-eqz v5, :cond_dc

    .line 239
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_dc

    .line 233
    :pswitch_9a  #0x12
    move-object v3, v15

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    .line 234
    goto :goto_dc

    .line 230
    :pswitch_a1  #0x11
    move-object v3, v15

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    .line 231
    goto :goto_dc

    .line 227
    :pswitch_a8  #0x10
    move-object v3, v15

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    .line 228
    goto :goto_dc

    .line 224
    :pswitch_af  #0xf
    move-object v3, v15

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    .line 225
    goto :goto_dc

    .line 215
    :cond_b6
    move-object v3, v15

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 217
    if-eqz v9, :cond_d4

    .line 218
    array-length v10, v9

    const/4 v11, 0x0

    :goto_c6
    if-ge v11, v10, :cond_d4

    aget-object v12, v9, v11

    .line 219
    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    add-int/lit8 v11, v11, 0x1

    goto :goto_c6

    .line 222
    :cond_d4
    goto :goto_dc

    .line 212
    :cond_d5
    move-object v3, v15

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 213
    nop

    .line 209
    :cond_dc
    :goto_dc
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_6e

    .line 245
    :cond_e0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 246
    return-void

    :pswitch_data_e4
    .packed-switch 0xf
        :pswitch_af  #0000000f
        :pswitch_a8  #00000010
        :pswitch_a1  #00000011
        :pswitch_9a  #00000012
    .end packed-switch
.end method
