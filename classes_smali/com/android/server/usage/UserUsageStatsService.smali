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

    .line 249
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 273
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 290
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
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I
    .param p3, "usageStatsDir"  # Ljava/io/File;
    .param p4, "listener"  # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 99
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 101
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 103
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 104
    return-void
.end method

.method private dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .registers 12
    .param p1, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p3, "filename"  # J

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 709
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V

    .line 710
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 711
    return-void
.end method

.method private dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 9
    .param p1, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "interval"  # I

    .line 696
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, p2

    .line 697
    .local v0, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 698
    .local v1, "numFiles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_20

    .line 699
    invoke-virtual {v0, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 700
    .local v3, "filename":J
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 701
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 702
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 698
    .end local v3  # "filename":J
    .end local v5  # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 704
    .end local v2  # "i":I
    :cond_20
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventType"  # I

    .line 972
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_7a

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_77

    packed-switch p0, :pswitch_data_7e

    packed-switch p0, :pswitch_data_b2

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1035
    :pswitch_20  #0x68
    const-string v0, "AUDIO_END"

    return-object v0

    .line 1033
    :pswitch_23  #0x67
    const-string v0, "AUDIO_CHANGE"

    return-object v0

    .line 1031
    :pswitch_26  #0x66
    const-string v0, "AUDIO_START"

    return-object v0

    .line 1029
    :pswitch_29  #0x65
    const-string v0, "SCREEN_OFF"

    return-object v0

    .line 1027
    :pswitch_2c  #0x64
    const-string v0, "SCREEN_ON"

    return-object v0

    .line 984
    :pswitch_2f  #0x17
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    .line 988
    :pswitch_32  #0x16
    const-string v0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object v0

    .line 992
    :pswitch_35  #0x15
    const-string v0, "CONTINUING_FOREGROUND_SERVICE"

    return-object v0

    .line 982
    :pswitch_38  #0x14
    const-string v0, "FOREGROUND_SERVICE_STOP"

    return-object v0

    .line 980
    :pswitch_3b  #0x13
    const-string v0, "FOREGROUND_SERVICE_START"

    return-object v0

    .line 1020
    :pswitch_3e  #0x12
    const-string v0, "KEYGUARD_HIDDEN"

    return-object v0

    .line 1018
    :pswitch_41  #0x11
    const-string v0, "KEYGUARD_SHOWN"

    return-object v0

    .line 1016
    :pswitch_44  #0x10
    const-string v0, "SCREEN_NON_INTERACTIVE"

    return-object v0

    .line 1014
    :pswitch_47  #0xf
    const-string v0, "SCREEN_INTERACTIVE"

    return-object v0

    .line 1010
    :pswitch_4a  #0xe
    const-string v0, "SLICE_PINNED"

    return-object v0

    .line 1012
    :pswitch_4d  #0xd
    const-string v0, "SLICE_PINNED_PRIV"

    return-object v0

    .line 1008
    :pswitch_50  #0xc
    const-string v0, "NOTIFICATION_INTERRUPTION"

    return-object v0

    .line 1006
    :pswitch_53  #0xb
    const-string v0, "STANDBY_BUCKET_CHANGED"

    return-object v0

    .line 1004
    :pswitch_56  #0xa
    const-string v0, "NOTIFICATION_SEEN"

    return-object v0

    .line 1002
    :pswitch_59  #0x9
    const-string v0, "CHOOSER_ACTION"

    return-object v0

    .line 1000
    :pswitch_5c  #0x8
    const-string v0, "SHORTCUT_INVOCATION"

    return-object v0

    .line 998
    :pswitch_5f  #0x7
    const-string v0, "USER_INTERACTION"

    return-object v0

    .line 996
    :pswitch_62  #0x6
    const-string v0, "SYSTEM_INTERACTION"

    return-object v0

    .line 994
    :pswitch_65  #0x5
    const-string v0, "CONFIGURATION_CHANGE"

    return-object v0

    .line 990
    :pswitch_68  #0x4
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    return-object v0

    .line 986
    :pswitch_6b  #0x3
    const-string v0, "END_OF_DAY"

    return-object v0

    .line 976
    :pswitch_6e  #0x2
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    .line 978
    :pswitch_71  #0x1
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0

    .line 974
    :pswitch_74  #0x0
    const-string v0, "NONE"

    return-object v0

    .line 1024
    :cond_77
    const-string v0, "DEVICE_STARTUP"

    return-object v0

    .line 1022
    :cond_7a
    const-string v0, "DEVICE_SHUTDOWN"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_71  #00000001
        :pswitch_6e  #00000002
        :pswitch_6b  #00000003
        :pswitch_68  #00000004
        :pswitch_65  #00000005
        :pswitch_62  #00000006
        :pswitch_5f  #00000007
        :pswitch_5c  #00000008
        :pswitch_59  #00000009
        :pswitch_56  #0000000a
        :pswitch_53  #0000000b
        :pswitch_50  #0000000c
        :pswitch_4d  #0000000d
        :pswitch_4a  #0000000e
        :pswitch_47  #0000000f
        :pswitch_44  #00000010
        :pswitch_41  #00000011
        :pswitch_3e  #00000012
        :pswitch_3b  #00000013
        :pswitch_38  #00000014
        :pswitch_35  #00000015
        :pswitch_32  #00000016
        :pswitch_2f  #00000017
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x64
        :pswitch_2c  #00000064
        :pswitch_29  #00000065
        :pswitch_26  #00000066
        :pswitch_23  #00000067
        :pswitch_20  #00000068
    .end packed-switch
.end method

.method static formatDateTime(JZ)Ljava/lang/String;
    .registers 7
    .param p0, "dateTime"  # J
    .param p2, "pretty"  # Z

    .line 714
    if-eqz p2, :cond_21

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 717
    :cond_21
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .registers 8
    .param p1, "elapsedTime"  # J
    .param p3, "pretty"  # Z

    .line 721
    if-eqz p3, :cond_1f

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 724
    :cond_1f
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "interval"  # I

    .line 942
    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 952
    const-string v0, "?"

    return-object v0

    .line 950
    :cond_e
    const-string/jumbo v0, "yearly"

    return-object v0

    .line 948
    :cond_12
    const-string/jumbo v0, "monthly"

    return-object v0

    .line 946
    :cond_16
    const-string/jumbo v0, "weekly"

    return-object v0

    .line 944
    :cond_1a
    const-string v0, "daily"

    return-object v0
.end method

.method static synthetic lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 15
    .param p0, "beginTime"  # J
    .param p2, "endTime"  # J
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "names"  # Landroid/util/ArraySet;
    .param p6, "includeTaskRoot"  # Z
    .param p7, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p8, "mutable"  # Z
    .param p9, "accumulatedResult"  # Ljava/util/List;

    .line 433
    iget-object v0, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 434
    .local v0, "startIndex":I
    iget-object v1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 435
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_50

    .line 436
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_1c

    .line 437
    return-void

    .line 440
    :cond_1c
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 441
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 442
    goto :goto_4d

    .line 444
    :cond_2b
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_34

    .line 445
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_34
    if-eqz p6, :cond_3f

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v4, :cond_3f

    .line 448
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_3f
    if-eqz p6, :cond_4a

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v4, :cond_4a

    .line 451
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_4a
    invoke-interface {p9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v3  # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 455
    .end local v2  # "i":I
    :cond_50
    return-void
.end method

.method private loadActiveStats(J)V
    .registers 9
    .param p1, "currentTimeMillis"  # J

    .line 574
    const/4 v0, 0x0

    .local v0, "intervalType":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 575
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 576
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    if-eqz v1, :cond_1e

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v4, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_1e

    .line 583
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v1, v2, v0

    goto :goto_34

    .line 592
    :cond_1e
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v0

    .line 593
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v2, v0

    iput-wide p1, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 594
    aget-object v2, v2, v0

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 574
    .end local v1  # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 598
    .end local v0  # "intervalType":I
    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 599
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 602
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    .line 603
    return-void
.end method

.method private notifyNewUpdate()V
    .registers 3

    .line 570
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    .line 571
    return-void
.end method

.method private notifyStatsChanged()V
    .registers 2

    .line 563
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_c

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 565
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 567
    :cond_c
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 23
    .param p1, "intervalType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
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

    .line 306
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    const/4 v1, 0x4

    move/from16 v2, p1

    if-ne v2, v1, :cond_18

    .line 307
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result v1

    .line 308
    .end local p1  # "intervalType":I
    .local v1, "intervalType":I
    if-gez v1, :cond_16

    .line 311
    const/4 v1, 0x0

    move v12, v1

    goto :goto_19

    .line 308
    :cond_16
    move v12, v1

    goto :goto_19

    .line 306
    .end local v1  # "intervalType":I
    .restart local p1  # "intervalType":I
    :cond_18
    move v12, v2

    .line 315
    .end local p1  # "intervalType":I
    .local v12, "intervalType":I
    :goto_19
    const/4 v1, 0x0

    if-ltz v12, :cond_5d

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-lt v12, v3, :cond_24

    move-object/from16 v3, p6

    goto :goto_5f

    .line 322
    :cond_24
    aget-object v13, v2, v12

    .line 329
    .local v13, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-ltz v2, :cond_2d

    .line 335
    return-object v1

    .line 341
    :cond_2d
    iget-wide v1, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 344
    .local v14, "truncatedEndTime":J
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v2, v12

    move-wide/from16 v3, p2

    move-wide v5, v14

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 353
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-gez v2, :cond_5a

    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_5a

    .line 358
    if-nez v1, :cond_53

    .line 359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 361
    :cond_53
    const/4 v2, 0x1

    move-object/from16 v3, p6

    invoke-interface {v3, v13, v2, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_5c

    .line 353
    :cond_5a
    move-object/from16 v3, p6

    .line 367
    :goto_5c
    return-object v1

    .line 315
    .end local v1  # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v13  # "currentStats":Lcom/android/server/usage/IntervalStats;
    .end local v14  # "truncatedEndTime":J
    :cond_5d
    move-object/from16 v3, p6

    .line 319
    :goto_5f
    return-object v1
.end method

.method private rolloverStats(J)V
    .registers 35
    .param p1, "currentTimeMillis"  # J

    .line 481
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 482
    .local v1, "startTime":J
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

    .line 487
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 489
    .local v3, "previousConfig":Landroid/content/res/Configuration;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 490
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 492
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 494
    .local v8, "continueForegroundService":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_38
    if-ge v11, v10, :cond_103

    aget-object v15, v9, v11

    .line 495
    .local v15, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 496
    .local v14, "pkgCount":I
    const/4 v12, 0x0

    move v13, v12

    .local v13, "i":I
    :goto_44
    const-wide/16 v19, 0x1

    if-ge v13, v14, :cond_dc

    .line 497
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 498
    .local v12, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_6a

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 499
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_61

    goto :goto_6a

    :cond_61
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    goto/16 :goto_d2

    .line 500
    :cond_6a
    :goto_6a
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_9c

    .line 501
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 504
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v17, v17, v19

    const/4 v9, 0x3

    const/16 v23, 0x0

    .line 503
    move-object/from16 v24, v12

    .end local v12  # "pkgStats":Landroid/app/usage/UsageStats;
    .local v24, "pkgStats":Landroid/app/usage/UsageStats;
    move-object v12, v15

    move/from16 v25, v13

    .end local v13  # "i":I
    .local v25, "i":I
    move-object v13, v5

    move v5, v14

    const/4 v14, 0x0

    .end local v14  # "pkgCount":I
    .local v5, "pkgCount":I
    move-object/from16 v26, v15

    .end local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .local v26, "stat":Lcom/android/server/usage/IntervalStats;
    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v23

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_a5

    .line 500
    .end local v5  # "pkgCount":I
    .end local v24  # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v25  # "i":I
    .end local v26  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v12  # "pkgStats":Landroid/app/usage/UsageStats;
    .restart local v13  # "i":I
    .restart local v14  # "pkgCount":I
    .restart local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_9c
    move-object/from16 v22, v9

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 507
    .end local v12  # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v13  # "i":I
    .end local v14  # "pkgCount":I
    .end local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v5  # "pkgCount":I
    .restart local v24  # "pkgStats":Landroid/app/usage/UsageStats;
    .restart local v25  # "i":I
    .restart local v26  # "stat":Lcom/android/server/usage/IntervalStats;
    :goto_a5
    move-object/from16 v9, v24

    .end local v24  # "pkgStats":Landroid/app/usage/UsageStats;
    .local v9, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ca

    .line 508
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v13, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 511
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long v15, v15, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    .line 510
    move-object/from16 v12, v26

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 514
    :cond_ca
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 496
    .end local v9  # "pkgStats":Landroid/app/usage/UsageStats;
    :goto_d2
    add-int/lit8 v13, v25, 0x1

    move v14, v5

    move-object/from16 v9, v22

    move-object/from16 v15, v26

    const/4 v5, 0x0

    .end local v25  # "i":I
    .restart local v13  # "i":I
    goto/16 :goto_44

    .end local v5  # "pkgCount":I
    .end local v26  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v14  # "pkgCount":I
    .restart local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_dc
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 519
    .end local v13  # "i":I
    .end local v14  # "pkgCount":I
    .end local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v5  # "pkgCount":I
    .restart local v26  # "stat":Lcom/android/server/usage/IntervalStats;
    const/4 v9, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 520
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    .line 519
    move-object/from16 v14, v26

    .end local v26  # "stat":Lcom/android/server/usage/IntervalStats;
    .local v14, "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v14, v9, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 521
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v14, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    .line 494
    .end local v5  # "pkgCount":I
    .end local v14  # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_38

    .line 524
    :cond_103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 525
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 526
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 528
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 529
    .local v5, "continueCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_115
    if-ge v11, v5, :cond_1f2

    .line 530
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 531
    .local v12, "pkgName":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/16 v20, 0x0

    aget-object v13, v13, v20

    iget-wide v14, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 532
    .local v14, "beginTime":J
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-wide/from16 v16, v14

    .end local v14  # "beginTime":J
    .local v16, "beginTime":J
    array-length v15, v13

    move/from16 v14, v20

    :goto_12c
    if-ge v14, v15, :cond_1e2

    move/from16 v18, v15

    aget-object v15, v13, v14

    .line 533
    .restart local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_186

    .line 534
    nop

    .line 535
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v5

    .end local v5  # "continueCount":I
    .local v21, "continueCount":I
    move-object/from16 v5, v19

    check-cast v5, Landroid/util/SparseIntArray;

    .line 536
    .local v5, "eventMap":Landroid/util/SparseIntArray;
    move-object/from16 v22, v6

    .end local v6  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 537
    .local v6, "size":I
    const/16 v19, 0x0

    move-object/from16 v23, v7

    move/from16 v7, v19

    .local v7, "j":I
    .local v23, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :goto_14f
    if-ge v7, v6, :cond_17b

    .line 538
    const/16 v19, 0x0

    .line 539
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v24

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v25

    .line 538
    move-object/from16 v26, v13

    move-object v13, v15

    move/from16 v29, v14

    move-wide/from16 v27, v16

    .end local v16  # "beginTime":J
    .local v27, "beginTime":J
    move-object v14, v12

    move-object/from16 v31, v15

    move/from16 v30, v18

    .end local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .local v31, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v15, v19

    move/from16 v18, v24

    move/from16 v19, v25

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 537
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v26

    move/from16 v14, v29

    move/from16 v18, v30

    move-object/from16 v15, v31

    goto :goto_14f

    .end local v27  # "beginTime":J
    .end local v31  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v16  # "beginTime":J
    :cond_17b
    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    .end local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v16  # "beginTime":J
    .restart local v27  # "beginTime":J
    .restart local v31  # "stat":Lcom/android/server/usage/IntervalStats;
    goto :goto_196

    .line 533
    .end local v21  # "continueCount":I
    .end local v22  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v27  # "beginTime":J
    .end local v31  # "stat":Lcom/android/server/usage/IntervalStats;
    .local v5, "continueCount":I
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v16  # "beginTime":J
    :cond_186
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    .line 542
    .end local v5  # "continueCount":I
    .end local v6  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v15  # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v16  # "beginTime":J
    .restart local v21  # "continueCount":I
    .restart local v22  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v27  # "beginTime":J
    .restart local v31  # "stat":Lcom/android/server/usage/IntervalStats;
    :goto_196
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c8

    .line 543
    nop

    .line 544
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 545
    .local v5, "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 546
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1a8
    if-ge v7, v6, :cond_1c8

    .line 547
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .line 548
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    .line 547
    move-object/from16 v13, v31

    move-object v14, v12

    move-wide/from16 v16, v27

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 546
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a8

    .line 551
    .end local v5  # "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6  # "size":I
    .end local v7  # "j":I
    :cond_1c8
    move-wide/from16 v5, v27

    move-object/from16 v7, v31

    .end local v27  # "beginTime":J
    .end local v31  # "stat":Lcom/android/server/usage/IntervalStats;
    .local v5, "beginTime":J
    .local v7, "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v7, v3, v5, v6}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 532
    .end local v7  # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v14, v29, 0x1

    move-wide/from16 v16, v5

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v13, v26

    move/from16 v15, v30

    goto/16 :goto_12c

    .end local v21  # "continueCount":I
    .end local v22  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v5, "continueCount":I
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v16  # "beginTime":J
    :cond_1e2
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v5, v16

    .line 529
    .end local v5  # "continueCount":I
    .end local v6  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12  # "pkgName":Ljava/lang/String;
    .end local v16  # "beginTime":J
    .restart local v21  # "continueCount":I
    .restart local v22  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_115

    .end local v21  # "continueCount":I
    .end local v22  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v5  # "continueCount":I
    .restart local v6  # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_1f2
    move/from16 v21, v5

    move-object/from16 v23, v7

    .line 555
    .end local v5  # "continueCount":I
    .end local v7  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11  # "i":I
    .restart local v21  # "continueCount":I
    .restart local v23  # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 558
    .local v5, "totalTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Rolling over usage stats complete. Took "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " milliseconds"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method private static stringToInterval(Ljava/lang/String;)I
    .registers 8
    .param p0, "interval"  # Ljava/lang/String;

    .line 957
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_4a

    :cond_10
    goto :goto_3c

    :sswitch_11
    const-string/jumbo v1, "monthly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v5

    goto :goto_3d

    :sswitch_1c
    const-string v1, "daily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_3d

    :sswitch_26
    const-string/jumbo v1, "yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_3d

    :sswitch_31
    const-string/jumbo v1, "weekly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v6

    goto :goto_3d

    :goto_3c
    move v0, v3

    :goto_3d
    if-eqz v0, :cond_49

    if-eq v0, v6, :cond_48

    if-eq v0, v5, :cond_47

    if-eq v0, v4, :cond_46

    .line 967
    return v3

    .line 965
    :cond_46
    return v4

    .line 963
    :cond_47
    return v5

    .line 961
    :cond_48
    return v6

    .line 959
    :cond_49
    return v2

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

    .line 606
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 608
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 610
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

    .line 611
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "payload"  # [B

    .line 1047
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 1048
    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 619
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 626
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 630
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "compact"  # Z

    .line 632
    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/lang/String;)V

    .line 633
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 634
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 635
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 636
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 639
    .end local v0  # "interval":I
    :cond_2c
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 640
    return-void
.end method

.method dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 643
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 644
    return-void
.end method

.method dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 647
    if-eqz p2, :cond_6e

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_6e

    .line 659
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    .line 660
    .local v1, "intervalValue":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 661
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_1a} :catch_66

    .local v0, "interval":I
    goto :goto_1c

    .line 663
    .end local v0  # "interval":I
    :cond_1b
    move v0, v1

    .line 668
    .end local v1  # "intervalValue":I
    .restart local v0  # "interval":I
    :goto_1c
    nop

    .line 669
    if-ltz v0, :cond_5f

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v1, v1

    if-lt v0, v1, :cond_27

    goto :goto_5f

    .line 673
    :cond_27
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 675
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_9c

    .line 680
    :cond_2f
    :try_start_2f
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_39} :catch_57

    .line 684
    .local v3, "filename":J
    nop

    .line 685
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 686
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    if-nez v1, :cond_49

    .line 687
    const-string/jumbo v2, "the specified filename does not exist."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 688
    return-void

    .line 690
    :cond_49
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    goto :goto_9c

    .line 681
    .end local v1  # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3  # "filename":J
    :catch_57
    move-exception v1

    .line 682
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "invalid filename specified."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 683
    return-void

    .line 670
    .end local v1  # "nfe":Ljava/lang/NumberFormatException;
    :cond_5f
    :goto_5f
    const-string/jumbo v1, "the specified interval does not exist."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    return-void

    .line 665
    .end local v0  # "interval":I
    :catch_66
    move-exception v0

    .line 666
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "invalid interval specified."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    return-void

    .line 649
    .end local v0  # "nfe":Ljava/lang/NumberFormatException;
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, v0

    .line 650
    .local v0, "numIntervals":I
    const/4 v1, 0x0

    .local v1, "interval":I
    :goto_74
    if-ge v1, v0, :cond_9b

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 653
    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 654
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 656
    .end local v0  # "numIntervals":I
    .end local v1  # "interval":I
    :cond_9b
    nop

    .line 693
    :goto_9c
    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 1043
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method init(J)V
    .registers 11
    .param p1, "currentTimeMillis"  # J

    .line 107
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "nullCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 111
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    aput-object v3, v2, v1

    .line 112
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v1

    if-nez v2, :cond_1c

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 119
    .end local v1  # "i":I
    :cond_1f
    if-lez v0, :cond_40

    .line 120
    array-length v1, v2

    if-eq v0, v1, :cond_3c

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
    :cond_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_43

    .line 135
    :cond_40
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 141
    :goto_43
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 142
    .local v1, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    if-eqz v1, :cond_69

    .line 145
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    const/16 v3, 0x1a

    iget-wide v4, v1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-direct {v2, v3, v4, v5}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 147
    .local v2, "shutdownEvent":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "android"

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 149
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    const/16 v5, 0x1b

    invoke-direct {v4, v5, p1, p2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 150
    .local v4, "startupEvent":Landroid/app/usage/UsageEvents$Event;
    iput-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v4}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 154
    .end local v2  # "shutdownEvent":Landroid/app/usage/UsageEvents$Event;
    .end local v4  # "startupEvent":Landroid/app/usage/UsageEvents$Event;
    :cond_69
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 155
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    .line 157
    :cond_74
    return-void
.end method

.method onTimeChanged(JJ)V
    .registers 8
    .param p1, "oldTime"  # J
    .param p3, "newTime"  # J

    .line 160
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 161
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 162
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 163
    return-void
.end method

.method persistActiveStats()V
    .registers 6

    .line 467
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_49

    .line 468
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

    .line 470
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    .line 471
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v2

    invoke-virtual {v3, v2, v4}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 473
    .end local v2  # "i":I
    :cond_2f
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_32

    .line 476
    goto :goto_49

    .line 474
    :catch_32
    move-exception v0

    .line 475
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed to persist active stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v0  # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    return-void
.end method

.method printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .registers 6
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "event"  # Landroid/app/usage/UsageEvents$Event;
    .param p3, "prettyDates"  # Z

    .line 729
    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 730
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 731
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 732
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 733
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v1, "class"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 735
    :cond_2b
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_3a

    .line 736
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 738
    :cond_3a
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 739
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string/jumbo v1, "shortcutId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 741
    :cond_46
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_69

    .line 742
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyBucket()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "standbyBucket"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 743
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_87

    .line 744
    :cond_69
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_79

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_79

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_87

    .line 747
    :cond_79
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "instanceId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 750
    :cond_87
    :goto_87
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 751
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "taskRootPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 754
    :cond_97
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 755
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "taskRootClass"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 758
    :cond_a7
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_b2

    .line 759
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string v1, "channelId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 761
    :cond_b2
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 762
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 763
    return-void
.end method

.method printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .registers 10
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "label"  # Ljava/lang/String;
    .param p3, "tracker"  # Lcom/android/server/usage/IntervalStats$EventTracker;
    .param p4, "prettyDates"  # Z

    .line 813
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_40

    .line 814
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 815
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 816
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 817
    const-string/jumbo v0, "x for "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 818
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 819
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3d

    .line 820
    const-string v0, " (now running, started at "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 821
    iget-wide v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {v0, v1, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 822
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 824
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 826
    :cond_40
    return-void
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V
    .registers 27
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p3, "prettyDates"  # Z
    .param p4, "skipEvents"  # Z
    .param p5, "pkg"  # Ljava/lang/String;

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_34

    .line 831
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

    .line 834
    :cond_34
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 835
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 837
    :goto_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 838
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 839
    const-string/jumbo v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 841
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 842
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 843
    .local v6, "pkgCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_60
    const-string/jumbo v8, "package"

    if-ge v7, v6, :cond_d4

    .line 844
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 845
    .local v9, "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v4, :cond_76

    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_76

    .line 846
    goto :goto_d1

    .line 848
    :cond_76
    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 849
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 850
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 849
    const-string/jumbo v10, "totalTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 851
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "lastTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 852
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 853
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 852
    const-string/jumbo v10, "totalTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 854
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 855
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 854
    const-string/jumbo v10, "lastTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 856
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 857
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 856
    const-string/jumbo v10, "totalTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 858
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 859
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 858
    const-string/jumbo v10, "lastTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 860
    iget v8, v9, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 861
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 843
    .end local v9  # "usageStats":Landroid/app/usage/UsageStats;
    :goto_d1
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 863
    .end local v7  # "i":I
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 865
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 866
    const-string v7, "ChooserCounts"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 868
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ea
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 869
    .local v10, "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v4, :cond_101

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_101

    .line 870
    goto :goto_ea

    .line 872
    :cond_101
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 873
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_191

    .line 874
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 875
    .local v11, "chooserCountSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_111
    if-ge v12, v11, :cond_188

    .line 876
    iget-object v13, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 877
    .local v13, "action":Ljava/lang/String;
    iget-object v14, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    .line 878
    .local v14, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 879
    .local v15, "annotationSize":I
    const/16 v16, 0x0

    move-object/from16 v17, v5

    move/from16 v5, v16

    .local v5, "j":I
    .local v17, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :goto_12d
    if-ge v5, v15, :cond_17d

    .line 880
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v6

    .end local v6  # "pkgCount":I
    .local v18, "pkgCount":I
    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 881
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 882
    .local v16, "count":I
    if-eqz v16, :cond_170

    .line 883
    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 883
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 885
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_174

    .line 882
    :cond_170
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 879
    .end local v6  # "key":Ljava/lang/String;
    .end local v16  # "count":I
    :goto_174
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_12d

    .end local v18  # "pkgCount":I
    .local v6, "pkgCount":I
    :cond_17d
    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 875
    .end local v5  # "j":I
    .end local v6  # "pkgCount":I
    .end local v13  # "action":Ljava/lang/String;
    .end local v14  # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15  # "annotationSize":I
    .restart local v18  # "pkgCount":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v17

    goto :goto_111

    .end local v17  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18  # "pkgCount":I
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6  # "pkgCount":I
    :cond_188
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v5  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6  # "pkgCount":I
    .restart local v17  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18  # "pkgCount":I
    goto :goto_199

    .line 873
    .end local v11  # "chooserCountSize":I
    .end local v12  # "i":I
    .end local v17  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18  # "pkgCount":I
    .restart local v5  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6  # "pkgCount":I
    :cond_191
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 890
    .end local v5  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6  # "pkgCount":I
    .restart local v17  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18  # "pkgCount":I
    :goto_199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 891
    .end local v10  # "usageStats":Landroid/app/usage/UsageStats;
    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto/16 :goto_ea

    .line 892
    .end local v17  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18  # "pkgCount":I
    .restart local v5  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6  # "pkgCount":I
    :cond_1a6
    move-object/from16 v17, v5

    move/from16 v18, v6

    .end local v5  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6  # "pkgCount":I
    .restart local v17  # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18  # "pkgCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 894
    if-nez v4, :cond_228

    .line 895
    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 897
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 898
    .local v5, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 899
    .local v6, "configCount":I
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_1be
    if-ge v7, v6, :cond_1fa

    .line 900
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 901
    .local v8, "config":Landroid/app/usage/ConfigurationStats;
    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 903
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-direct {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 904
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 905
    iget v9, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "count"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 906
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 899
    .end local v8  # "config":Landroid/app/usage/ConfigurationStats;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1be

    .line 908
    .end local v7  # "i":I
    :cond_1fa
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 909
    const-string v7, "event aggregations"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 911
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v8, "screen-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 913
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v8, "screen-non-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 915
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v8, "keyguard-shown"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 917
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v8, "keyguard-hidden"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 919
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 924
    .end local v5  # "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    .end local v6  # "configCount":I
    :cond_228
    if-nez p4, :cond_257

    .line 925
    const-string v5, "events"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 927
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 928
    .local v5, "events":Landroid/app/usage/EventList;
    if-eqz v5, :cond_23b

    invoke-virtual {v5}, Landroid/app/usage/EventList;->size()I

    move-result v6

    goto :goto_23c

    :cond_23b
    const/4 v6, 0x0

    .line 929
    .local v6, "eventCount":I
    :goto_23c
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_23d
    if-ge v7, v6, :cond_254

    .line 930
    invoke-virtual {v5, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v8

    .line 931
    .local v8, "event":Landroid/app/usage/UsageEvents$Event;
    if-eqz v4, :cond_24e

    iget-object v9, v8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24e

    .line 932
    goto :goto_251

    .line 934
    :cond_24e
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 929
    .end local v8  # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_251
    add-int/lit8 v7, v7, 0x1

    goto :goto_23d

    .line 936
    .end local v7  # "i":I
    :cond_254
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 938
    .end local v5  # "events":Landroid/app/usage/EventList;
    .end local v6  # "eventCount":I
    :cond_257
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 939
    return-void
.end method

.method printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/lang/String;)V
    .registers 22
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "prettyDates"  # Z
    .param p3, "pkg"  # Ljava/lang/String;

    .line 766
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 767
    .local v10, "endTime":J
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v10, v11}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    move-object v12, v0

    .line 768
    .local v12, "yesterday":Lcom/android/server/usage/UnixCalendar;
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 770
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v13

    .line 772
    .local v13, "beginTime":J
    new-instance v15, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/lang/String;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v6

    .line 793
    .local v6, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const-string v0, "Last 24 hour events ("

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 794
    if-eqz v9, :cond_5e

    .line 795
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v16, 0x20015

    move-wide v1, v13

    move-wide v3, v10

    move-object/from16 v17, v12

    move-object v12, v5

    .end local v12  # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .local v17, "yesterday":Lcom/android/server/usage/UnixCalendar;
    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timeRange"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_72

    .line 798
    .end local v17  # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .restart local v12  # "yesterday":Lcom/android/server/usage/UnixCalendar;
    :cond_5e
    move-object/from16 v17, v12

    .end local v12  # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .restart local v17  # "yesterday":Lcom/android/server/usage/UnixCalendar;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 799
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 801
    :goto_72
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 802
    if-eqz v6, :cond_93

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 804
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 805
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 806
    .end local v1  # "event":Landroid/app/usage/UsageEvents$Event;
    goto :goto_80

    .line 807
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 809
    :cond_93
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "bucketType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 375
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "bucketType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 379
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJZ)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .param p5, "obfuscateInstantApps"  # Z

    .line 384
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 385
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJZLandroid/util/ArraySet;)V

    const/4 v2, 0x0

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 418
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_36

    .line 422
    :cond_20
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 423
    .local v2, "table":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 424
    new-instance v3, Landroid/app/usage/UsageEvents;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 419
    .end local v2  # "table":[Ljava/lang/String;
    :cond_36
    :goto_36
    const/4 v2, 0x0

    return-object v2
.end method

.method queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 18
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .param p5, "packageName"  # Ljava/lang/String;
    .param p6, "includeTaskRoot"  # Z

    .line 429
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 430
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v10, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;

    move-object v1, v10

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object v7, v0

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 457
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v1, :cond_42

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    move/from16 v4, p6

    goto :goto_44

    .line 461
    :cond_2b
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 462
    .local v2, "table":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 463
    new-instance v3, Landroid/app/usage/UsageEvents;

    move/from16 v4, p6

    invoke-direct {v3, v1, v2, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 457
    .end local v2  # "table":[Ljava/lang/String;
    :cond_42
    move/from16 v4, p6

    .line 458
    :goto_44
    const/4 v2, 0x0

    return-object v2
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "bucketType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 371
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 19
    .param p1, "event"  # Landroid/app/usage/UsageEvents$Event;

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_15

    .line 174
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 177
    :cond_15
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 179
    .local v2, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 180
    .local v4, "newFullConfig":Landroid/content/res/Configuration;
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2d

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_2d

    .line 183
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v5, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 187
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

    .line 196
    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 199
    :cond_47
    const/4 v5, 0x0

    .line 200
    .local v5, "incrementAppLaunch":Z
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5d

    .line 201
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_6a

    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 202
    const/4 v5, 0x1

    goto :goto_6a

    .line 204
    :cond_5d
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6a

    .line 205
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_6a

    .line 206
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 210
    :cond_6a
    :goto_6a
    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v8, v7

    move v9, v3

    :goto_6e
    if-ge v9, v8, :cond_e3

    aget-object v15, v7, v9

    .line 211
    .local v15, "stats":Lcom/android/server/usage/IntervalStats;
    iget v10, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v10, v6, :cond_d7

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b8

    packed-switch v10, :pswitch_data_e8

    .line 237
    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v10, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    move/from16 v16, v10

    move-object v10, v15

    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .local v6, "stats":Lcom/android/server/usage/IntervalStats;
    move/from16 v15, v16

    move/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 239
    if-eqz v5, :cond_de

    .line 240
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_de

    .line 234
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_9c  #0x12
    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    .line 235
    goto :goto_de

    .line 231
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_a3  #0x11
    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    .line 232
    goto :goto_de

    .line 228
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_aa  #0x10
    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    .line 229
    goto :goto_de

    .line 225
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_b1  #0xf
    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    .line 226
    goto :goto_de

    .line 216
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_b8
    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v3, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 218
    .local v3, "annotations":[Ljava/lang/String;
    if-eqz v3, :cond_d6

    .line 219
    array-length v10, v3

    const/4 v11, 0x0

    :goto_c8
    if-ge v11, v10, :cond_d6

    aget-object v12, v3, v11

    .line 220
    .local v12, "annotation":Ljava/lang/String;
    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v12  # "annotation":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_c8

    .line 223
    .end local v3  # "annotations":[Ljava/lang/String;
    :cond_d6
    goto :goto_de

    .line 213
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_d7
    move-object v6, v15

    .end local v15  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v4, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 214
    nop

    .line 210
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_de
    :goto_de
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x5

    goto :goto_6e

    .line 246
    :cond_e3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 247
    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0xf
        :pswitch_b1  #0000000f
        :pswitch_aa  #00000010
        :pswitch_a3  #00000011
        :pswitch_9c  #00000012
    .end packed-switch
.end method
