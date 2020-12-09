.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mInjectedScreenState:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation
.end field

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 81
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 95
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 97
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 98
    new-instance p1, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 13

    .line 1204
    mul-int/lit8 p4, p4, 0x3c

    mul-int/lit8 p4, p4, 0x3c

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long v0, p4

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p4

    .line 1206
    if-nez p4, :cond_14

    .line 1207
    return-void

    .line 1209
    :cond_14
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1210
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1211
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1212
    iget-object p4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p4, :cond_27

    .line 1213
    return-void

    .line 1215
    :cond_27
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1216
    const/16 p4, 0xf

    invoke-virtual {v0, p1, p5, p6, p4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1217
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1218
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .registers 23

    .line 707
    move-object v1, p1

    const-wide/16 v2, 0x3c

    mul-long v4, p2, v2

    mul-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    sub-long/2addr v4, v2

    move-object v0, p0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 709
    if-nez v0, :cond_1c

    .line 710
    const-string v0, "Unable to build stats!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    return-void

    .line 713
    :cond_1c
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 714
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 715
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 716
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 717
    const-string v0, "Failure reading: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    return-void

    .line 720
    :cond_39
    if-eqz p7, :cond_43

    .line 721
    move-object/from16 v3, p6

    move/from16 v9, p12

    invoke-virtual {v2, p1, v3, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_69

    .line 723
    :cond_43
    move-object/from16 v3, p6

    move/from16 v9, p12

    if-nez p8, :cond_57

    if-eqz p9, :cond_4c

    goto :goto_57

    .line 727
    :cond_4c
    move-object v0, v2

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_69

    .line 724
    :cond_57
    :goto_57
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v2

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 730
    :goto_69
    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 733
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    const-string v0, "    options can be combined to select desired stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 37

    .line 789
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 791
    nop

    .line 792
    nop

    .line 793
    nop

    .line 794
    nop

    .line 795
    nop

    .line 796
    nop

    .line 797
    nop

    .line 798
    nop

    .line 799
    nop

    .line 800
    nop

    .line 801
    nop

    .line 802
    nop

    .line 803
    nop

    .line 804
    nop

    .line 805
    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_840

    .line 806
    nop

    .line 807
    const/4 v11, 0x1

    new-array v3, v11, [I

    const/4 v12, 0x0

    const/4 v4, 0x3

    aput v4, v3, v12

    .line 808
    nop

    .line 809
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 810
    nop

    .line 811
    const/16 v6, 0xf

    if-eqz v1, :cond_4b0

    .line 812
    move/from16 v27, v0

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v20, v6

    move/from16 v24, v11

    move v0, v12

    move v2, v0

    move v3, v2

    move v4, v3

    move v6, v4

    move v7, v6

    move v9, v7

    move v10, v9

    move v13, v10

    move/from16 v18, v13

    move/from16 v19, v18

    move/from16 v21, v19

    move/from16 v22, v21

    move/from16 v28, v22

    const/4 v8, 0x0

    :goto_4e
    array-length v5, v1

    if-ge v0, v5, :cond_492

    .line 813
    aget-object v5, v1, v0

    .line 814
    const-string v12, "--checkin"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 815
    move/from16 v21, v11

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 816
    :cond_60
    const-string v12, "-c"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    .line 817
    move v9, v11

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 818
    :cond_6c
    const-string v12, "--csv"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_78

    .line 819
    move v2, v11

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 820
    :cond_78
    const-string v12, "--csv-screen"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    .line 821
    add-int/lit8 v0, v0, 0x1

    .line 822
    array-length v5, v1

    if-lt v0, v5, :cond_8e

    .line 823
    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 825
    return-void

    .line 827
    :cond_8e
    new-array v5, v11, [Z

    .line 828
    new-array v6, v11, [Ljava/lang/String;

    .line 829
    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v11, 0x4

    move/from16 v30, v2

    aget-object v2, v1, v0

    invoke-static {v12, v11, v2, v5, v6}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v2

    .line 831
    if-nez v2, :cond_c4

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v0, v6, v11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 834
    return-void

    .line 836
    :cond_c4
    const/4 v11, 0x0

    aget-boolean v5, v5, v11

    .line 837
    move-object/from16 v23, v2

    move v6, v5

    move/from16 v2, v30

    const/4 v11, 0x0

    goto/16 :goto_48a

    :cond_cf
    move/from16 v30, v2

    const-string v2, "--csv-mem"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 838
    add-int/lit8 v0, v0, 0x1

    .line 839
    array-length v2, v1

    if-lt v0, v2, :cond_e7

    .line 840
    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 842
    return-void

    .line 844
    :cond_e7
    const/4 v2, 0x1

    new-array v5, v2, [Z

    .line 845
    new-array v11, v2, [Ljava/lang/String;

    .line 846
    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    move/from16 v31, v3

    aget-object v3, v1, v0

    invoke-static {v12, v2, v3, v5, v11}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    .line 848
    if-nez v3, :cond_11d

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v0, v11, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 851
    return-void

    .line 853
    :cond_11d
    const/4 v12, 0x0

    aget-boolean v2, v5, v12

    .line 854
    move/from16 v22, v2

    move-object/from16 v25, v3

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    goto/16 :goto_48a

    :cond_12b
    move/from16 v31, v3

    const-string v2, "--csv-proc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 855
    add-int/lit8 v0, v0, 0x1

    .line 856
    array-length v2, v1

    if-lt v0, v2, :cond_143

    .line 857
    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 859
    return-void

    .line 861
    :cond_143
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 862
    new-array v5, v2, [Ljava/lang/String;

    .line 863
    sget-object v11, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v12, v1, v0

    invoke-static {v11, v2, v12, v3, v5}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    .line 865
    if-nez v11, :cond_177

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v0, v5, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 868
    return-void

    .line 870
    :cond_177
    const/4 v12, 0x0

    aget-boolean v2, v3, v12

    .line 871
    move/from16 v24, v2

    move-object/from16 v26, v11

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    goto/16 :goto_48a

    :cond_185
    const-string v2, "--details"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 872
    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 873
    :cond_195
    const-string v2, "--full-details"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 874
    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto/16 :goto_48a

    .line 875
    :cond_1a5
    const-string v2, "--hours"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 876
    add-int/lit8 v2, v0, 0x1

    .line 877
    array-length v0, v1

    if-lt v2, v0, :cond_1bb

    .line 878
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 880
    return-void

    .line 883
    :cond_1bb
    :try_start_1bb
    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1bb .. :try_end_1c1} :catch_1c9

    .line 888
    move v0, v2

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 884
    :catch_1c9
    move-exception v0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --hours argument not an int -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 887
    return-void

    .line 889
    :cond_1e4
    const-string v2, "--last"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_223

    .line 890
    add-int/lit8 v2, v0, 0x1

    .line 891
    array-length v0, v1

    if-lt v2, v0, :cond_1fa

    .line 892
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 894
    return-void

    .line 897
    :cond_1fa
    :try_start_1fa
    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_200
    .catch Ljava/lang/NumberFormatException; {:try_start_1fa .. :try_end_200} :catch_208

    .line 902
    move v0, v2

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 898
    :catch_208
    move-exception v0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --last argument not an int -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 901
    return-void

    .line 903
    :cond_223
    const-string v2, "--max"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_264

    .line 904
    add-int/lit8 v2, v0, 0x1

    .line 905
    array-length v0, v1

    if-lt v2, v0, :cond_239

    .line 906
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 908
    return-void

    .line 911
    :cond_239
    :try_start_239
    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_23f
    .catch Ljava/lang/NumberFormatException; {:try_start_239 .. :try_end_23f} :catch_249

    .line 916
    move/from16 v27, v0

    move v0, v2

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 912
    :catch_249
    move-exception v0

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --max argument not an int -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 915
    return-void

    .line 917
    :cond_264
    const-string v2, "--active"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_278

    .line 918
    nop

    .line 919
    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    const/16 v19, 0x1

    const/16 v28, 0x1

    goto/16 :goto_48a

    .line 920
    :cond_278
    const-string v2, "--current"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_289

    .line 921
    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    const/16 v28, 0x1

    goto/16 :goto_48a

    .line 922
    :cond_289
    const-string v2, "--commit"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b8

    .line 923
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_294
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 924
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v11, 0x1

    or-int/2addr v5, v11

    iput v5, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 925
    invoke-virtual {v14, v11, v11}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 926
    const-string v3, "Process stats committed."

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    nop

    .line 928
    monitor-exit v2
    :try_end_2a9
    .catchall {:try_start_294 .. :try_end_2a9} :catchall_2b2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    :catchall_2b2
    move-exception v0

    :try_start_2b3
    monitor-exit v2
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_2b2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 929
    :cond_2b8
    const-string v2, "--section"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dd

    .line 930
    add-int/lit8 v0, v0, 0x1

    .line 931
    array-length v2, v1

    if-lt v0, v2, :cond_2ce

    .line 932
    const-string v0, "Error: argument required for --section"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 934
    return-void

    .line 936
    :cond_2ce
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 937
    :cond_2dd
    const-string v2, "--clear"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32f

    .line 938
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_2e8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 939
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 940
    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v11, v12, v1, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 941
    invoke-direct {v14, v5, v1, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 942
    if-eqz v3, :cond_319

    .line 943
    const/4 v1, 0x0

    :goto_302
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_319

    .line 944
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_302

    .line 947
    :cond_319
    const-string v1, "All process stats cleared."

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    nop

    .line 949
    monitor-exit v2
    :try_end_320
    .catchall {:try_start_2e8 .. :try_end_320} :catchall_329

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    :catchall_329
    move-exception v0

    :try_start_32a
    monitor-exit v2
    :try_end_32b
    .catchall {:try_start_32a .. :try_end_32b} :catchall_329

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 950
    :cond_32f
    const-string v1, "--write"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_356

    .line 951
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_33a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 953
    const-string v2, "Process stats written."

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    nop

    .line 955
    monitor-exit v1
    :try_end_347
    .catchall {:try_start_33a .. :try_end_347} :catchall_350

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    :catchall_350
    move-exception v0

    :try_start_351
    monitor-exit v1
    :try_end_352
    .catchall {:try_start_351 .. :try_end_352} :catchall_350

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 956
    :cond_356
    const-string v1, "--read"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_381

    .line 957
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_361
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 958
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 959
    const-string v2, "Process stats read."

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    nop

    .line 961
    monitor-exit v1
    :try_end_372
    .catchall {:try_start_361 .. :try_end_372} :catchall_37b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    :catchall_37b
    move-exception v0

    :try_start_37c
    monitor-exit v1
    :try_end_37d
    .catchall {:try_start_37c .. :try_end_37d} :catchall_37b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 962
    :cond_381
    const-string v1, "--start-testing"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ab

    .line 963
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_38c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 964
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 965
    const-string v2, "Started high frequency sampling."

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    nop

    .line 967
    monitor-exit v1
    :try_end_39c
    .catchall {:try_start_38c .. :try_end_39c} :catchall_3a5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    :catchall_3a5
    move-exception v0

    :try_start_3a6
    monitor-exit v1
    :try_end_3a7
    .catchall {:try_start_3a6 .. :try_end_3a7} :catchall_3a5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 968
    :cond_3ab
    const-string v1, "--stop-testing"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d5

    .line 969
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3b6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 970
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 971
    const-string v2, "Stopped high frequency sampling."

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    nop

    .line 973
    monitor-exit v1
    :try_end_3c6
    .catchall {:try_start_3b6 .. :try_end_3c6} :catchall_3cf

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    :catchall_3cf
    move-exception v0

    :try_start_3d0
    monitor-exit v1
    :try_end_3d1
    .catchall {:try_start_3d0 .. :try_end_3d1} :catchall_3cf

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 974
    :cond_3d5
    const-string v1, "--pretend-screen-on"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fa

    .line 975
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3e0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 976
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 977
    monitor-exit v1
    :try_end_3eb
    .catchall {:try_start_3e0 .. :try_end_3eb} :catchall_3f4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 978
    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 977
    :catchall_3f4
    move-exception v0

    :try_start_3f5
    monitor-exit v1
    :try_end_3f6
    .catchall {:try_start_3f5 .. :try_end_3f6} :catchall_3f4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 979
    :cond_3fa
    const-string v1, "--pretend-screen-off"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41f

    .line 980
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_405
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 981
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 982
    monitor-exit v1
    :try_end_410
    .catchall {:try_start_405 .. :try_end_410} :catchall_419

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 983
    move/from16 v2, v30

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_48a

    .line 982
    :catchall_419
    move-exception v0

    :try_start_41a
    monitor-exit v1
    :try_end_41b
    .catchall {:try_start_41a .. :try_end_41b} :catchall_419

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 984
    :cond_41f
    const-string v1, "--stop-pretend-screen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43e

    .line 985
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_42a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 986
    const/4 v11, 0x0

    iput-object v11, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 987
    monitor-exit v1
    :try_end_431
    .catchall {:try_start_42a .. :try_end_431} :catchall_438

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 988
    move/from16 v2, v30

    const/4 v3, 0x1

    goto :goto_48a

    .line 987
    :catchall_438
    move-exception v0

    :try_start_439
    monitor-exit v1
    :try_end_43a
    .catchall {:try_start_439 .. :try_end_43a} :catchall_438

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 989
    :cond_43e
    const/4 v11, 0x0

    const-string v1, "-h"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44b

    .line 990
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 991
    return-void

    .line 992
    :cond_44b
    const-string v1, "-a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45c

    .line 993
    nop

    .line 994
    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v10, 0x1

    const/16 v18, 0x1

    goto :goto_48a

    .line 995
    :cond_45c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_483

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x2d

    if-ne v2, v1, :cond_483

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 998
    return-void

    .line 1001
    :cond_483
    nop

    .line 1006
    move-object v8, v5

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v10, 0x1

    .line 812
    :goto_48a
    const/4 v1, 0x1

    add-int/2addr v0, v1

    move v11, v1

    const/4 v12, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_4e

    :cond_492
    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v12, v20

    move/from16 v11, v21

    move/from16 v0, v22

    move-object/from16 v5, v23

    move/from16 v20, v13

    move/from16 v21, v18

    move/from16 v22, v19

    move-object v13, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    goto :goto_4ce

    .line 811
    :cond_4b0
    const/4 v11, 0x0

    move/from16 v27, v0

    move-object v5, v2

    move-object v9, v3

    move-object v10, v4

    move v12, v6

    move-object v13, v11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 1011
    :goto_4ce
    if-eqz v31, :cond_4d1

    .line 1012
    return-void

    .line 1015
    :cond_4d1
    if-eqz v30, :cond_53e

    .line 1016
    const-string v1, "Processes running summed over"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    if-nez v6, :cond_4eb

    .line 1018
    const/4 v1, 0x0

    :goto_4db
    array-length v2, v5

    if-ge v1, v2, :cond_4eb

    .line 1019
    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    aget v2, v5, v1

    invoke-static {v15, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1018
    add-int/lit8 v1, v1, 0x1

    goto :goto_4db

    .line 1023
    :cond_4eb
    if-nez v0, :cond_4fe

    .line 1024
    const/4 v1, 0x0

    :goto_4ee
    array-length v2, v9

    if-ge v1, v2, :cond_4fe

    .line 1025
    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    aget v2, v9, v1

    invoke-static {v15, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_4ee

    .line 1029
    :cond_4fe
    if-nez v8, :cond_515

    .line 1030
    const/4 v1, 0x0

    :goto_501
    array-length v2, v10

    if-ge v1, v2, :cond_515

    .line 1031
    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v3, v10, v1

    aget-object v2, v2, v3

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_501

    .line 1035
    :cond_515
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1036
    iget-object v12, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_51b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_51e
    .catchall {:try_start_51b .. :try_end_51e} :catchall_536

    .line 1037
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v6

    move v6, v0

    move-object v7, v9

    move-object v9, v10

    move-wide/from16 v10, v16

    move-object/from16 v23, v12

    move-object v12, v13

    :try_start_52c
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 1057
    monitor-exit v23
    :try_end_530
    .catchall {:try_start_52c .. :try_end_530} :catchall_534

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1058
    return-void

    .line 1057
    :catchall_534
    move-exception v0

    goto :goto_539

    :catchall_536
    move-exception v0

    move-object/from16 v23, v12

    :goto_539
    :try_start_539
    monitor-exit v23
    :try_end_53a
    .catchall {:try_start_539 .. :try_end_53a} :catchall_534

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1059
    :cond_53e
    if-eqz v4, :cond_564

    .line 1060
    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    int-to-long v3, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object v7, v13

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move v13, v12

    move/from16 v12, v22

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1063
    return-void

    .line 1064
    :cond_564
    if-lez v7, :cond_633

    .line 1065
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v14, v1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v7, v1, :cond_591

    .line 1068
    const-string v1, "Only have "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " data sets"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    return-void

    .line 1071
    :cond_591
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1072
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1073
    invoke-virtual {v14, v2, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1074
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_5d0

    .line 1075
    if-nez v11, :cond_5b2

    if-eqz v18, :cond_5b7

    :cond_5b2
    const-string v1, "err,"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    :cond_5b7
    const-string v1, "Failure reading "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string v0, "; "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    return-void

    .line 1080
    :cond_5d0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1081
    const-string v1, ".ci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1082
    if-nez v11, :cond_62f

    if-eqz v18, :cond_5e3

    goto :goto_62f

    .line 1086
    :cond_5e3
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    if-eqz v0, :cond_5f4

    const-string v0, " (checked in)"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    :cond_5f4
    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    if-nez v19, :cond_60a

    if-eqz v20, :cond_5fe

    goto :goto_60a

    .line 1097
    :cond_5fe
    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_632

    .line 1091
    :cond_60a
    :goto_60a
    const/16 v23, 0x1

    xor-int/lit8 v6, v20, 0x1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v7, v19

    move/from16 v8, v21

    move/from16 v9, v22

    move v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1093
    if-eqz v21, :cond_632

    .line 1094
    const-string v0, "  mFile="

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_632

    .line 1084
    :cond_62f
    :goto_62f
    invoke-virtual {v2, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1100
    :cond_632
    :goto_632
    return-void

    .line 1103
    :cond_633
    const/16 v23, 0x1

    .line 1104
    if-nez v21, :cond_640

    if-eqz v11, :cond_63a

    goto :goto_640

    :cond_63a
    const/16 v25, 0x0

    const/16 v29, 0x0

    goto/16 :goto_79f

    .line 1105
    :cond_640
    :goto_640
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1107
    if-nez v11, :cond_64a

    move/from16 v0, v23

    goto :goto_64b

    :cond_64a
    const/4 v0, 0x0

    :goto_64b
    const/4 v1, 0x0

    :try_start_64c
    invoke-direct {v14, v1, v1, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10
    :try_end_650
    .catchall {:try_start_64c .. :try_end_650} :catchall_838

    .line 1108
    if-eqz v10, :cond_792

    .line 1109
    if-eqz v11, :cond_656

    const/4 v0, 0x0

    goto :goto_65c

    :cond_656
    :try_start_656
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, v0, v27

    .line 1110
    :goto_65c
    if-gez v0, :cond_65f

    .line 1111
    const/4 v0, 0x0

    .line 1113
    :cond_65f
    move v9, v0

    const/4 v1, 0x0

    :goto_661
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_665
    .catchall {:try_start_656 .. :try_end_665} :catchall_78d

    if-ge v9, v0, :cond_78a

    .line 1116
    :try_start_667
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1117
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_679
    .catchall {:try_start_667 .. :try_end_679} :catchall_76a

    const/4 v8, 0x0

    :try_start_67a
    invoke-direct {v2, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1118
    invoke-virtual {v14, v2, v0}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1119
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_6b9

    .line 1120
    if-nez v11, :cond_688

    if-eqz v18, :cond_68d

    :cond_688
    const-string v0, "err,"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    :cond_68d
    const-string v0, "Failure reading "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    const-string v0, "; "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v0, Ljava/io/File;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1125
    move/from16 v25, v8

    move v2, v9

    move-object v14, v10

    goto/16 :goto_783

    .line 1127
    :cond_6b9
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1128
    const-string v3, ".ci"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1129
    if-nez v11, :cond_733

    if-eqz v18, :cond_6d4

    move-object/from16 v32, v7

    move/from16 v25, v8

    move/from16 v33, v9

    move-object v14, v10

    goto/16 :goto_73a

    .line 1133
    :cond_6d4
    if-eqz v1, :cond_6dc

    .line 1134
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_6d9
    .catchall {:try_start_67a .. :try_end_6d9} :catchall_763

    move/from16 v24, v1

    goto :goto_6de

    .line 1136
    :cond_6dc
    move/from16 v24, v23

    .line 1138
    :goto_6de
    :try_start_6de
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    if-eqz v3, :cond_6ef

    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    :cond_6ef
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6f4
    .catchall {:try_start_6de .. :try_end_6f4} :catchall_72a

    .line 1145
    if-eqz v20, :cond_713

    .line 1146
    const/4 v6, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move-object/from16 v32, v7

    move/from16 v7, v25

    move/from16 v25, v8

    move/from16 v8, v26

    move/from16 v33, v9

    move/from16 v9, v22

    move-object v14, v10

    move v10, v12

    :try_start_70f
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    goto :goto_725

    .line 1149
    :cond_713
    move-object/from16 v32, v7

    move/from16 v25, v8

    move/from16 v33, v9

    move-object v14, v10

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_725
    .catchall {:try_start_70f .. :try_end_725} :catchall_728

    .line 1152
    :goto_725
    move/from16 v1, v24

    goto :goto_73d

    .line 1157
    :catchall_728
    move-exception v0

    goto :goto_730

    :catchall_72a
    move-exception v0

    move/from16 v25, v8

    move/from16 v33, v9

    move-object v14, v10

    :goto_730
    move/from16 v1, v24

    goto :goto_770

    .line 1129
    :cond_733
    move-object/from16 v32, v7

    move/from16 v25, v8

    move/from16 v33, v9

    move-object v14, v10

    .line 1131
    :goto_73a
    :try_start_73a
    invoke-virtual {v2, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1152
    :goto_73d
    if-eqz v11, :cond_75e

    .line 1154
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ci"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_75e
    .catchall {:try_start_73a .. :try_end_75e} :catchall_761

    .line 1160
    :cond_75e
    move/from16 v2, v33

    goto :goto_783

    .line 1157
    :catchall_761
    move-exception v0

    goto :goto_770

    :catchall_763
    move-exception v0

    move/from16 v25, v8

    move/from16 v33, v9

    move-object v14, v10

    goto :goto_770

    :catchall_76a
    move-exception v0

    move/from16 v33, v9

    move-object v14, v10

    const/16 v25, 0x0

    .line 1158
    :goto_770
    :try_start_770
    const-string v2, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v2, v33

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_783
    .catchall {:try_start_770 .. :try_end_783} :catchall_78d

    .line 1113
    :goto_783
    add-int/lit8 v9, v2, 0x1

    move-object v10, v14

    move-object/from16 v14, p0

    goto/16 :goto_661

    :cond_78a
    const/16 v25, 0x0

    goto :goto_796

    .line 1164
    :catchall_78d
    move-exception v0

    move-object/from16 v14, p0

    goto/16 :goto_839

    .line 1108
    :cond_792
    const/16 v25, 0x0

    move/from16 v1, v25

    .line 1164
    :goto_796
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1165
    move/from16 v29, v1

    .line 1167
    :goto_79f
    if-nez v11, :cond_837

    .line 1168
    iget-object v11, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_7a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1169
    if-eqz v18, :cond_7af

    .line 1170
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_7f5

    .line 1172
    :cond_7af
    if-eqz v29, :cond_7b4

    .line 1173
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1175
    :cond_7b4
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    if-nez v19, :cond_7cb

    if-eqz v20, :cond_7be

    goto :goto_7cb

    .line 1183
    :cond_7be
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_7f3

    .line 1177
    :cond_7cb
    :goto_7cb
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    if-nez v20, :cond_7d2

    move/from16 v6, v23

    goto :goto_7d4

    :cond_7d2
    move/from16 v6, v25

    :goto_7d4
    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v7, v19

    move/from16 v8, v21

    move/from16 v9, v22

    move v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1179
    if-eqz v21, :cond_7f3

    .line 1180
    const-string v0, "  mFile="

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1185
    :cond_7f3
    :goto_7f3
    move/from16 v29, v23

    .line 1187
    :goto_7f5
    monitor-exit v11
    :try_end_7f6
    .catchall {:try_start_7a4 .. :try_end_7f6} :catchall_831

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1188
    if-nez v28, :cond_837

    .line 1189
    if-eqz v29, :cond_800

    .line 1190
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1192
    :cond_800
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    const-wide/16 v3, 0x18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object v7, v13

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v23, v12

    move/from16 v12, v22

    move-object/from16 v24, v13

    move/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1195
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1196
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    const-wide/16 v3, 0x3

    move-object/from16 v7, v24

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_837

    .line 1187
    :catchall_831
    move-exception v0

    :try_start_832
    monitor-exit v11
    :try_end_833
    .catchall {:try_start_832 .. :try_end_833} :catchall_831

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1201
    :cond_837
    :goto_837
    return-void

    .line 1164
    :catchall_838
    move-exception v0

    :goto_839
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    nop

    :array_840
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 12

    .line 1221
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1225
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1227
    const-wide v0, 0x10b00000001L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1228
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v3, 0xf

    invoke-virtual {v2, v7, v8, v9, v3}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1229
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1230
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1233
    const-wide v2, 0x10b00000002L

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v7

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1236
    const-wide v2, 0x10b00000003L

    const/16 v4, 0x18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1238
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1239
    return-void

    .line 1230
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_44

    array-length v1, v0

    if-gt v1, p1, :cond_c

    goto :goto_44

    .line 396
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 399
    const/4 v2, 0x0

    :goto_1d
    array-length v3, v0

    if-ge v2, v3, :cond_40

    .line 400
    aget-object v3, v0, v2

    .line 401
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 403
    if-nez p3, :cond_31

    const-string v4, ".ci"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 405
    goto :goto_3d

    .line 407
    :cond_31
    if-nez p2, :cond_3a

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 409
    goto :goto_3d

    .line 411
    :cond_3a
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 413
    :cond_40
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    return-object p1

    .line 394
    :cond_44
    :goto_44
    const/4 p1, 0x0

    return-object p1
.end method

.method static parseSectionOptions(Ljava/lang/String;)I
    .registers 7

    .line 490
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 491
    array-length v0, p0

    if-nez v0, :cond_c

    .line 492
    const/16 p0, 0xf

    return p0

    .line 494
    :cond_c
    nop

    .line 495
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 496
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_29

    aget-object v4, p0, v2

    .line 497
    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 498
    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 499
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v4, v5, v4

    or-int/2addr v3, v4

    .line 496
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 502
    :cond_29
    return v3
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .registers 12

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    nop

    .line 451
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_81

    .line 452
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1b

    :cond_1a
    move v4, v1

    .line 453
    :goto_1b
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_2a

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_2a

    const/16 v6, 0x20

    if-eq v4, v6, :cond_2a

    if-eqz v4, :cond_2a

    .line 454
    goto :goto_7e

    .line 456
    :cond_2a
    if-ne v4, v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_2e
    move v5, v1

    .line 457
    :goto_2f
    const/4 v6, 0x0

    if-nez v3, :cond_35

    .line 459
    aput-boolean v5, p3, v1

    goto :goto_40

    .line 460
    :cond_35
    if-eqz v4, :cond_40

    aget-boolean v4, p3, v1

    if-eq v4, v5, :cond_40

    .line 461
    const-string p0, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object p0, p4, v1

    .line 462
    return-object v6

    .line 464
    :cond_40
    :goto_40
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_7c

    .line 465
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 466
    move v4, v1

    :goto_49
    array-length v5, p0

    if-ge v4, v5, :cond_61

    .line 467
    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 468
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    nop

    .line 470
    move-object v3, v6

    goto :goto_61

    .line 466
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 473
    :cond_61
    :goto_61
    if-eqz v3, :cond_7c

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid word \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v1

    .line 475
    return-object v6

    .line 478
    :cond_7c
    add-int/lit8 v3, v2, 0x1

    .line 451
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 481
    :cond_81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 482
    nop

    :goto_88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_9e

    .line 483
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/2addr p2, p1

    aput p2, p0, v1

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 485
    :cond_9e
    return-object p0
.end method

.method private protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 609
    new-instance v7, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    move-object v0, v7

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 622
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 623
    const/4 p1, 0x0

    aget-object p1, v6, p1

    return-object p1
.end method

.method private updateFile()V
    .registers 6

    .line 283
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 286
    return-void
.end method

.method private writeStateLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_5

    .line 238
    return-void

    .line 240
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 243
    return-void
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 195
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 196
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 773
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 774
    return-void

    .line 776
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 778
    :try_start_11
    array-length v2, p3

    if-lez v2, :cond_23

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_26

    .line 781
    :cond_23
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2b

    .line 784
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    nop

    .line 786
    return-void

    .line 784
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v8, 0x0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 436
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 437
    if-eqz p2, :cond_20

    .line 438
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    :cond_20
    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move-wide/from16 v17, p9

    invoke-static/range {v9 .. v18}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 442
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 547
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p5

    const-string/jumbo v4, "state-"

    const-string v5, "ProcessStatsService"

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 551
    nop

    .line 552
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 554
    const/4 v7, 0x1

    :try_start_22
    invoke-direct {v1, v0, v0, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 555
    if-eqz v8, :cond_f1

    .line 556
    const-string/jumbo v9, "yyyy-MM-dd-HH-mm-ss"
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_fb
    .catchall {:try_start_22 .. :try_end_2b} :catchall_f9

    .line 557
    move-wide/from16 v10, p1

    :try_start_2d
    invoke-static {v9, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 558
    new-instance v12, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v12, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 559
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    move v7, v0

    :goto_40
    if-ltz v7, :cond_df

    .line 560
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_49} :catch_ef
    .catchall {:try_start_2d .. :try_end_49} :catchall_f9

    .line 562
    nop

    .line 563
    :try_start_4a
    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 564
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v0, v14

    const-string v14, ".bin"

    .line 565
    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 562
    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_ac

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x10000000

    invoke-static {v0, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 570
    new-instance v14, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v14, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 571
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 572
    invoke-virtual {v12, v14}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 573
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 574
    iget-wide v14, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v0, v14, v10

    if-lez v0, :cond_84

    .line 575
    iget-wide v10, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 577
    :cond_84
    if-eqz p4, :cond_8a

    .line 578
    invoke-virtual {v6, v12}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_91

    .line 580
    :cond_8a
    invoke-direct {v1, v12, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :goto_91
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_ac

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure reading process stats: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_ab} :catch_af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_ab} :catch_ad
    .catchall {:try_start_4a .. :try_end_ab} :catchall_f9

    .line 584
    goto :goto_db

    .line 591
    :cond_ac
    :goto_ac
    goto :goto_db

    .line 589
    :catch_ad
    move-exception v0

    goto :goto_b1

    .line 587
    :catch_af
    move-exception v0

    goto :goto_c6

    .line 590
    :goto_b1
    :try_start_b1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failure to read and parse commit file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_db

    .line 588
    :goto_c6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failure opening procstat file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    .line 559
    :goto_db
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_40

    .line 593
    :cond_df
    if-eqz p4, :cond_e8

    .line 594
    invoke-direct {v1, v6, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_e8} :catch_ef
    .catchall {:try_start_b1 .. :try_end_e8} :catchall_f9

    .line 596
    :cond_e8
    nop

    .line 601
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    return-wide v10

    .line 598
    :catch_ef
    move-exception v0

    goto :goto_fe

    .line 601
    :cond_f1
    move-wide/from16 v10, p1

    :goto_f3
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 602
    goto :goto_104

    .line 601
    :catchall_f9
    move-exception v0

    goto :goto_105

    .line 598
    :catch_fb
    move-exception v0

    move-wide/from16 v10, p1

    .line 599
    :goto_fe
    :try_start_fe
    const-string v2, "Failure opening procstat file"

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_f9

    goto :goto_f3

    .line 603
    :goto_104
    return-wide v10

    .line 601
    :goto_105
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getCurrentMemoryState()I
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 700
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 701
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 511
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 512
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 513
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 514
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 515
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 517
    if-eqz p1, :cond_7f

    .line 518
    const/4 v1, 0x1

    :try_start_36
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 519
    if-eqz v2, :cond_7f

    .line 520
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_78

    sub-int/2addr v3, v1

    :goto_41
    if-ltz v3, :cond_7f

    .line 522
    :try_start_43
    new-instance v1, Ljava/io/File;

    .line 523
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 522
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 524
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_57} :catch_58
    .catchall {:try_start_43 .. :try_end_57} :catchall_78

    .line 527
    goto :goto_75

    .line 525
    :catch_58
    move-exception v1

    .line 526
    :try_start_59
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_78

    .line 520
    :goto_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_41

    .line 532
    :catchall_78
    move-exception p1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_7f
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 533
    nop

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    return-object p1

    .line 514
    :catchall_8a
    move-exception p1

    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getMemFactorLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p1

    return-object p1
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object p1

    return-object p1
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .registers 14

    .line 627
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 631
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 633
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 634
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v3, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 635
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v3, v4, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 636
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v7

    .line 638
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_117

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 639
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 641
    cmp-long v2, v3, p1

    if-gez v2, :cond_e3

    .line 643
    const/4 v2, 0x1

    :try_start_41
    invoke-direct {p0, v6, v6, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 644
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e3

    .line 645
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 646
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats;

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 649
    :goto_60
    if-ltz v0, :cond_dc

    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, p1

    if-gez v2, :cond_dc

    .line 651
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 652
    add-int/lit8 v0, v0, -0x1

    .line 653
    new-instance v5, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v5, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 654
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 655
    iget-object v2, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v2, :cond_b3

    .line 656
    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    const-string v7, "Added stats: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v7, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v7, ", over "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-wide v7, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 663
    const-string v5, "ProcessStatsService"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    nop

    .line 669
    goto :goto_60

    .line 665
    :cond_b3
    const-string v2, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    goto :goto_60

    .line 670
    :cond_dc
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 671
    invoke-virtual {v4, v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    :cond_e3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 677
    new-instance v0, Lcom/android/server/am/ProcessStatsService$4;

    const-string v2, "ProcessStats pipe output"

    invoke-direct {v0, p0, v2, p2, p1}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 688
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 689
    aget-object p1, p2, v6
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_fa} :catch_102
    .catchall {:try_start_41 .. :try_end_fa} :catchall_100

    .line 693
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 689
    return-object p1

    .line 693
    :catchall_100
    move-exception p1

    goto :goto_111

    .line 690
    :catch_102
    move-exception p1

    .line 691
    :try_start_103
    const-string p2, "ProcessStatsService"

    const-string v0, "Failed building output pipe"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_100

    .line 693
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 694
    nop

    .line 695
    return-object v1

    .line 693
    :goto_111
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 638
    :catchall_117
    move-exception p1

    :try_start_118
    monitor-exit v2
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isMemFactorLowered()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 116
    :catch_5
    move-exception p1

    .line 117
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 118
    const-string p2, "ProcessStatsService"

    const-string p3, "Process Stats Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_11
    throw p1
.end method

.method performWriteState(J)V
    .registers 11

    .line 292
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 294
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 295
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 296
    if-nez v1, :cond_e

    .line 297
    monitor-exit v0

    return-void

    .line 299
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 300
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 301
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 302
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_62

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 305
    nop

    .line 307
    :try_start_1e
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 310
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 311
    const-string/jumbo v0, "procstats"

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v6, p1

    .line 311
    invoke-static {v0, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3b} :catch_3e
    .catchall {:try_start_1e .. :try_end_3b} :catchall_3c

    goto :goto_49

    .line 318
    :catchall_3c
    move-exception p1

    goto :goto_56

    .line 314
    :catch_3e
    move-exception p1

    .line 315
    :try_start_3f
    const-string p2, "ProcessStatsService"

    const-string v0, "Error writing process statistics"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    .line 318
    :goto_49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 320
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    nop

    .line 322
    return-void

    .line 318
    :goto_56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 320
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 302
    :catchall_62
    move-exception p1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1
.end method

.method readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 327
    const-string v0, "ProcessStatsService"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p2

    .line 328
    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 329
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 330
    iget-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p2, :cond_28

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring existing stats; "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    .line 380
    return v1

    .line 386
    :cond_28
    nop

    .line 387
    const/4 p1, 0x1

    return p1

    .line 382
    :catchall_2b
    move-exception p2

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 384
    const-string p1, "Error reading process statistics"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    return v1
.end method

.method public setMemFactorLocked(IZJ)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 151
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 155
    :cond_15
    if-eqz p2, :cond_19

    .line 156
    add-int/lit8 p1, p1, 0x4

    .line 158
    :cond_19
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p2, p2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, p2, :cond_8c

    .line 159
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p2, p2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_39

    .line 160
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p2, p2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, p2, v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, p2, v0

    .line 163
    :cond_39
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, p2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 164
    iput-wide p3, p2, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 165
    iget-object p2, p2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 166
    invoke-virtual {p2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p2

    .line 167
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_4a
    if-ltz v0, :cond_8b

    .line 168
    nop

    .line 169
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 170
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_58
    if-ltz v3, :cond_88

    .line 171
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 172
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_65
    if-ltz v5, :cond_85

    .line 173
    invoke-virtual {v4, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 174
    iget-object v6, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 175
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_74
    if-ltz v7, :cond_82

    .line 176
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ServiceState;

    .line 177
    invoke-virtual {v8, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 175
    add-int/lit8 v7, v7, -0x1

    goto :goto_74

    .line 172
    :cond_82
    add-int/lit8 v5, v5, -0x1

    goto :goto_65

    .line 170
    :cond_85
    add-int/lit8 v3, v3, -0x1

    goto :goto_58

    .line 167
    :cond_88
    add-int/lit8 v0, v0, -0x1

    goto :goto_4a

    .line 182
    :cond_8b
    return v2

    .line 184
    :cond_8c
    return v1
.end method

.method public shouldWriteNowLocked(J)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 205
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_2b

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    if-lez p1, :cond_2a

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_2a

    .line 210
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 212
    :cond_2a
    return p2

    .line 214
    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method public shutdownLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 219
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 223
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    if-nez v2, :cond_b

    .line 421
    return-void

    .line 423
    :cond_b
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_36

    .line 424
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pruning old procstats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProcessStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 427
    goto :goto_b

    .line 428
    :cond_36
    return-void
.end method

.method public updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 128
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-virtual {p2, p3, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 129
    return-void
.end method

.method public updateTrackingAssociationsLocked(IJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 201
    return-void
.end method

.method public writeStateAsyncLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 228
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 250
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_42

    .line 251
    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 252
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 253
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 254
    if-eqz p2, :cond_2c

    .line 255
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 257
    :cond_2c
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 258
    new-instance v3, Landroid/util/AtomicFile;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 259
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 261
    :cond_42
    if-eqz p2, :cond_55

    .line 262
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 263
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 264
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v5, v4}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 266
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 269
    if-nez p1, :cond_70

    .line 270
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    monitor-exit v0

    return-void

    .line 277
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_75

    .line 279
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 280
    return-void

    .line 277
    :catchall_75
    move-exception p1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1
.end method

.method public writeStateSyncLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 233
    return-void
.end method
