.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    }
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 1617
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .registers 3

    .line 1588
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1589
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1590
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V
    .registers 4

    .line 1573
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z
    .registers 6

    .line 1609
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1611
    if-eqz v0, :cond_3a

    iget-boolean p1, p1, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    if-nez p1, :cond_3a

    .line 1612
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1
    :try_end_1b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_1b} :catch_3b

    const/4 v1, 0x0

    .line 1613
    :try_start_1c
    const-string v2, "Ignoring because device is on DND mode "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    const-class v2, Landroid/provider/Settings$Global;

    const-string v3, "ZEN_MODE_"

    invoke-static {v2, v3, v0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    .line 1616
    const/4 v0, 0x1

    .line 1617
    :try_start_2d
    invoke-static {v1, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2d .. :try_end_30} :catch_3b

    .line 1616
    return v0

    .line 1612
    :catchall_31
    move-exception v0

    :try_start_32
    throw v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 1617
    :catchall_33
    move-exception v1

    if-eqz p1, :cond_39

    :try_start_36
    invoke-static {v0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_39
    throw v1
    :try_end_3a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_36 .. :try_end_3a} :catch_3b

    .line 1621
    :cond_3a
    goto :goto_3c

    .line 1619
    :catch_3b
    move-exception p1

    .line 1623
    :goto_3c
    const/4 p1, 0x0

    return p1
.end method

.method private createAudioAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/media/AudioAttributes;
    .registers 4

    .line 1751
    iget-boolean p1, p1, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1752
    const/16 p1, 0x40

    goto :goto_9

    .line 1753
    :cond_8
    move p1, v0

    .line 1754
    :goto_9
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1755
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1756
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1757
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 1754
    return-object p1
.end method

.method private runPrebaked()I
    .registers 13

    .line 1719
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runPrebaked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1721
    :try_start_9
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1724
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1725
    invoke-virtual {v2, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_f

    .line 1728
    :cond_19
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_53

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 1729
    nop

    .line 1746
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1729
    return v4

    .line 1732
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 1735
    if-nez v5, :cond_37

    .line 1736
    const-string v5, "Shell command"

    move-object v7, v5

    goto :goto_38

    .line 1735
    :cond_37
    move-object v7, v5

    .line 1739
    :goto_38
    nop

    .line 1740
    invoke-static {v3, v4}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 1741
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->createAudioAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 1742
    iget-object v5, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v10, "Shell Command"

    iget-object v11, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_53

    .line 1744
    nop

    .line 1746
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1744
    return v4

    .line 1746
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private runVibrate()I
    .registers 13

    .line 1627
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runVibrate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1629
    :try_start_9
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1632
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1633
    invoke-virtual {v2, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_f

    .line 1636
    :cond_19
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_53

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 1637
    nop

    .line 1653
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1637
    return v4

    .line 1640
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1641
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 1642
    if-nez v3, :cond_37

    .line 1643
    const-string v3, "Shell command"

    move-object v7, v3

    goto :goto_38

    .line 1642
    :cond_37
    move-object v7, v3

    .line 1646
    :goto_38
    const/4 v3, -0x1

    .line 1647
    invoke-static {v5, v6, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 1648
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->createAudioAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 1649
    iget-object v5, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v10, "Shell Command"

    iget-object v11, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_53

    .line 1651
    nop

    .line 1653
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1651
    return v4

    .line 1653
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private runWaveform()I
    .registers 15

    .line 1658
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runWaveform"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1660
    :try_start_9
    const-string v2, "Shell command"

    .line 1661
    nop

    .line 1662
    nop

    .line 1663
    new-instance v3, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    const/4 v5, -0x1

    move-object v8, v2

    move v2, v5

    .line 1666
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    if-eqz v6, :cond_6f

    .line 1667
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v9, 0x5d4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v9, :cond_43

    const/16 v9, 0x5d7

    if-eq v7, v9, :cond_3a

    const/16 v9, 0x5e5

    if-eq v7, v9, :cond_30

    :cond_2f
    goto :goto_4d

    :cond_30
    const-string v7, "-r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    move v13, v11

    goto :goto_4e

    :cond_3a
    const-string v7, "-d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    goto :goto_4e

    :cond_43
    const-string v7, "-a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    move v13, v10

    goto :goto_4e

    :goto_4d
    move v13, v5

    :goto_4e
    if-eqz v13, :cond_69

    if-eq v13, v11, :cond_60

    if-eq v13, v10, :cond_58

    .line 1680
    invoke-virtual {v3, v6}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_6e

    .line 1675
    :cond_58
    if-nez v4, :cond_6e

    .line 1676
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6e

    .line 1672
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1673
    goto :goto_6e

    .line 1669
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1670
    move-object v8, v6

    .line 1681
    :cond_6e
    :goto_6e
    goto :goto_16

    .line 1685
    :cond_6f
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v5
    :try_end_73
    .catchall {:try_start_9 .. :try_end_73} :catchall_e9

    if-eqz v5, :cond_7a

    .line 1686
    nop

    .line 1714
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1686
    return v13

    .line 1689
    :cond_7a
    :try_start_7a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    :goto_7f
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a9

    .line 1693
    if-eqz v4, :cond_9d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_9d

    .line 1694
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 1696
    :cond_9d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 1701
    :cond_a9
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v5

    .line 1702
    if-nez v4, :cond_bf

    .line 1703
    invoke-static {v5, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v2

    move-object v9, v2

    goto :goto_d3

    .line 1705
    :cond_bf
    nop

    .line 1706
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v6, Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 1707
    invoke-static {v5, v4, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v2

    move-object v9, v2

    .line 1709
    :goto_d3
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand;->createAudioAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/media/AudioAttributes;

    move-result-object v10

    .line 1710
    iget-object v6, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v11, "Shell Command"

    iget-object v12, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e4
    .catchall {:try_start_7a .. :try_end_e4} :catchall_e9

    .line 1712
    nop

    .line 1714
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1712
    return v13

    .line 1714
    :catchall_e9
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    .line 1594
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1595
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result p1

    return p1

    .line 1596
    :cond_e
    const-string/jumbo v0, "waveform"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1597
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runWaveform()I

    move-result p1

    return p1

    .line 1598
    :cond_1c
    const-string/jumbo v0, "prebaked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1599
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runPrebaked()I

    move-result p1

    return p1

    .line 1600
    :cond_2a
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1601
    iget-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1602
    const/4 p1, 0x0

    return p1

    .line 1604
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 5

    .line 1762
    const-string v0, "    (Do Not Disturb) mode."

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1763
    :try_start_8
    const-string v3, "Vibrator commands:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    const-string v3, "  help"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    const-string v3, "    Prints this help text."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    const-string v3, "  vibrate duration [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    const-string v3, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    const-string v3, "  waveform [-d description] [-r index] [-a] duration [amplitude] ..."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    const-string v3, "    Vibrates for durations and amplitudes in list;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    const-string v3, "    ignored when device is on DND (Do Not Disturb) mode."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    const-string v3, "    index (e.g. 0 loops from the beginning)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    const-string v3, "    If -a is provided, the command accepts duration-amplitude pairs;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    const-string v3, "    otherwise, it accepts durations only and alternates off/on"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    const-string v3, "  prebaked effect-id [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    const-string v3, "    Vibrates with prebaked effect; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    const-string v0, "  cancel"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    const-string v0, "    Cancels any active vibration"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    const-string v0, "Common Options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    const-string v0, "  -f - Force. Ignore Do Not Disturb setting."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_78

    .line 1786
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1787
    return-void

    .line 1762
    :catchall_78
    move-exception v0

    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 1786
    :catchall_7a
    move-exception v1

    if-eqz v2, :cond_80

    invoke-static {v0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_80
    throw v1
.end method
