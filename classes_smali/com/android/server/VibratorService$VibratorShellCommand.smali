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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 1636
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"  # Landroid/os/IBinder;

    .line 1607
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1608
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1609
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V
    .registers 4
    .param p1, "x0"  # Lcom/android/server/VibratorService;
    .param p2, "x1"  # Landroid/os/IBinder;
    .param p3, "x2"  # Lcom/android/server/VibratorService$1;

    .line 1592
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z
    .registers 7
    .param p1, "opts"  # Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1630
    .local v0, "zenMode":I
    if-eqz v0, :cond_3a

    iget-boolean v1, p1, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    if-nez v1, :cond_3a

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1
    :try_end_1b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_1b} :catch_3b

    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1632
    :try_start_1c
    const-string v3, "Ignoring because device is on DND mode "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    const-class v3, Landroid/provider/Settings$Global;

    const-string v4, "ZEN_MODE_"

    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    .line 1635
    const/4 v3, 0x1

    .line 1636
    :try_start_2d
    invoke-static {v2, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2d .. :try_end_30} :catch_3b

    .line 1635
    return v3

    .line 1631
    :catchall_31
    move-exception v2

    .end local v0  # "zenMode":I
    .end local v1  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .end local p1  # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :try_start_32
    throw v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 1636
    .restart local v0  # "zenMode":I
    .restart local v1  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .restart local p1  # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :catchall_33
    move-exception v3

    if-eqz v1, :cond_39

    :try_start_36
    invoke-static {v2, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .end local p1  # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :cond_39
    throw v3
    :try_end_3a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_36 .. :try_end_3a} :catch_3b

    .line 1640
    .end local v0  # "zenMode":I
    .end local v1  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .restart local p1  # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :cond_3a
    goto :goto_3c

    .line 1638
    :catch_3b
    move-exception v0

    .line 1642
    :goto_3c
    const/4 v0, 0x0

    return v0
.end method

.method private runPrebaked()I
    .registers 15

    .line 1736
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runPrebaked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1738
    :try_start_9
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1741
    .local v2, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 1742
    invoke-virtual {v2, v4}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_f

    .line 1745
    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_53

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    .line 1746
    nop

    .line 1762
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1746
    return v5

    .line 1749
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1751
    .local v3, "id":I
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 1752
    .local v6, "description":Ljava/lang/String;
    if-nez v6, :cond_39

    .line 1753
    const-string v7, "Shell command"

    move-object v6, v7

    move-object v13, v6

    goto :goto_3a

    .line 1752
    :cond_39
    move-object v13, v6

    .line 1756
    .end local v6  # "description":Ljava/lang/String;
    .local v13, "description":Ljava/lang/String;
    :goto_3a
    nop

    .line 1757
    invoke-static {v3, v5}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 1758
    .local v9, "effect":Landroid/os/VibrationEffect;
    iget-object v6, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v10, 0x0

    const-string v11, "Shell Command"

    iget-object v12, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v8, v13

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_53

    .line 1760
    nop

    .line 1762
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1760
    return v5

    .line 1762
    .end local v2  # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v3  # "id":I
    .end local v4  # "opt":Ljava/lang/String;
    .end local v9  # "effect":Landroid/os/VibrationEffect;
    .end local v13  # "description":Ljava/lang/String;
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private runVibrate()I
    .registers 16

    .line 1646
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runVibrate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1648
    :try_start_9
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1651
    .local v2, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 1652
    invoke-virtual {v2, v4}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_f

    .line 1655
    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_50

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    .line 1656
    nop

    .line 1671
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1656
    return v5

    .line 1659
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1660
    .local v6, "duration":J
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_37

    .line 1662
    const-string v8, "Shell command"

    move-object v3, v8

    .line 1665
    :cond_37
    const/4 v8, -0x1

    .line 1666
    invoke-static {v6, v7, v8}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 1667
    .local v11, "effect":Landroid/os/VibrationEffect;
    iget-object v8, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v12, 0x0

    const-string v13, "Shell Command"

    iget-object v14, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v10, v3

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_50

    .line 1669
    nop

    .line 1671
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1669
    return v5

    .line 1671
    .end local v2  # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v3  # "description":Ljava/lang/String;
    .end local v4  # "opt":Ljava/lang/String;
    .end local v6  # "duration":J
    .end local v11  # "effect":Landroid/os/VibrationEffect;
    :catchall_50
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private runWaveform()I
    .registers 22

    .line 1676
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "runWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1678
    :try_start_b
    const-string v0, "Shell command"

    .line 1679
    .local v0, "description":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1680
    .local v4, "repeat":I
    const/4 v5, 0x0

    .line 1681
    .local v5, "amplitudesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1684
    .local v6, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .local v14, "opt":Ljava/lang/String;
    const/4 v15, 0x0

    if-eqz v7, :cond_73

    .line 1685
    const/4 v7, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x5d4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_44

    const/16 v9, 0x5d7

    if-eq v8, v9, :cond_3b

    const/16 v9, 0x5e5

    if-eq v8, v9, :cond_31

    :cond_30
    goto :goto_4e

    :cond_31
    const-string v8, "-r"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v15, v11

    goto :goto_4f

    :cond_3b
    const-string v8, "-d"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    goto :goto_4f

    :cond_44
    const-string v8, "-a"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v15, v10

    goto :goto_4f

    :goto_4e
    move v15, v7

    :goto_4f
    if-eqz v15, :cond_6c

    if-eq v15, v11, :cond_62

    if-eq v15, v10, :cond_59

    .line 1698
    invoke-virtual {v6, v14}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_72

    .line 1693
    :cond_59
    if-nez v5, :cond_72

    .line 1694
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    goto :goto_72

    .line 1690
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 1691
    goto :goto_72

    .line 1687
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1688
    nop

    .line 1699
    :cond_72
    :goto_72
    goto :goto_15

    .line 1703
    :cond_73
    invoke-direct {v1, v6}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v7
    :try_end_77
    .catchall {:try_start_b .. :try_end_77} :catchall_fe

    if-eqz v7, :cond_7e

    .line 1704
    nop

    .line 1731
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1704
    return v15

    .line 1707
    :cond_7e
    :try_start_7e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v7

    .line 1710
    .local v13, "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_84
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    .local v16, "arg":Ljava/lang/String;
    if-eqz v7, :cond_b0

    .line 1711
    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a4

    .line 1712
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 1714
    :cond_a4
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 1719
    :cond_b0
    invoke-virtual {v13}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v7

    move-object v12, v7

    .line 1720
    .local v12, "timings":[J
    if-nez v5, :cond_c8

    .line 1721
    invoke-static {v12, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v7

    move-object/from16 v17, v7

    .local v7, "effect":Landroid/os/VibrationEffect;
    goto :goto_de

    .line 1723
    .end local v7  # "effect":Landroid/os/VibrationEffect;
    :cond_c8
    nop

    .line 1724
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 1725
    .local v7, "amplitudes":[I
    invoke-static {v12, v7, v4}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v8

    move-object v7, v8

    move-object/from16 v17, v7

    .line 1727
    .end local v7  # "amplitudes":[I
    .local v17, "effect":Landroid/os/VibrationEffect;
    :goto_de
    iget-object v7, v1, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v11, 0x0

    const-string v18, "Shell Command"

    iget-object v10, v1, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v9, v0

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v20, v12

    .end local v12  # "timings":[J
    .local v20, "timings":[J
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13  # "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v18, "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v13, v19

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_f9
    .catchall {:try_start_7e .. :try_end_f9} :catchall_fe

    .line 1729
    nop

    .line 1731
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1729
    return v15

    .line 1731
    .end local v0  # "description":Ljava/lang/String;
    .end local v4  # "repeat":I
    .end local v5  # "amplitudesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6  # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v14  # "opt":Ljava/lang/String;
    .end local v16  # "arg":Ljava/lang/String;
    .end local v17  # "effect":Landroid/os/VibrationEffect;
    .end local v18  # "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20  # "timings":[J
    :catchall_fe
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"  # Ljava/lang/String;

    .line 1613
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1614
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    .line 1615
    :cond_e
    const-string/jumbo v0, "waveform"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1616
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runWaveform()I

    move-result v0

    return v0

    .line 1617
    :cond_1c
    const-string/jumbo v0, "prebaked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1618
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runPrebaked()I

    move-result v0

    return v0

    .line 1619
    :cond_2a
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1620
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1621
    const/4 v0, 0x0

    return v0

    .line 1623
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 5

    .line 1768
    const-string v0, "    (Do Not Disturb) mode."

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1769
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_8
    const-string v3, "Vibrator commands:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    const-string v3, "  help"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    const-string v3, "    Prints this help text."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    const-string v3, "  vibrate duration [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    const-string v3, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    const-string v3, "  waveform [-d description] [-r index] [-a] duration [amplitude] ..."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    const-string v3, "    Vibrates for durations and amplitudes in list;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    const-string v3, "    ignored when device is on DND (Do Not Disturb) mode."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    const-string v3, "    index (e.g. 0 loops from the beginning)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    const-string v3, "    If -a is provided, the command accepts duration-amplitude pairs;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    const-string v3, "    otherwise, it accepts durations only and alternates off/on"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    const-string v3, "  prebaked effect-id [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    const-string v3, "    Vibrates with prebaked effect; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    const-string v0, "  cancel"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    const-string v0, "    Cancels any active vibration"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    const-string v0, "Common Options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    const-string v0, "  -f - Force. Ignore Do Not Disturb setting."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_78

    .line 1792
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1793
    .end local v2  # "pw":Ljava/io/PrintWriter;
    return-void

    .line 1768
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    :catchall_78
    move-exception v0

    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 1792
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    :catchall_7a
    move-exception v1

    if-eqz v2, :cond_80

    invoke-static {v0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_80
    throw v1
.end method
