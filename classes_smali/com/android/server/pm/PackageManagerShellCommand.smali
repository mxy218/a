.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    }
.end annotation


# static fields
.field private static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field private static final STDIN_PATH:Ljava/lang/String; = "-"


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mInterface:Landroid/content/pm/IPackageManager;

.field mQueryFlags:I

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 1590
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

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 141
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 134
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 142
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 143
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2675
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2679
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2680
    return-object p0

    .line 2683
    :cond_f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2684
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 2685
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2686
    return-object p0

    .line 2684
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2690
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported on this device"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2676
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing ABI argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 487
    if-eqz p1, :cond_3c

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3c

    .line 488
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    .line 489
    const-string/jumbo v0, "package:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 492
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v2, p1

    move v3, v1

    :goto_2e
    if-ge v3, v2, :cond_3b

    aget-object v4, p1, v3

    .line 493
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 497
    :cond_3b
    return v1

    .line 499
    :cond_3c
    const/4 p1, 0x1

    return p1
.end method

.method private doAbandonSession(IZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2836
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2837
    nop

    .line 2839
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2840
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_27

    .line 2841
    :try_start_15
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 2842
    if-eqz p2, :cond_1f

    .line 2843
    const-string p1, "Success"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 2845
    :cond_1f
    const/4 p1, 0x0

    .line 2847
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2845
    return p1

    .line 2847
    :catchall_24
    move-exception p1

    move-object v1, v2

    goto :goto_28

    :catchall_27
    move-exception p1

    :goto_28
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private doCommitSession(IZ)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2801
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2802
    nop

    .line 2804
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2805
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_8c

    .line 2806
    :try_start_15
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_8a

    const-string v3, "]"

    if-nez p1, :cond_47

    :try_start_1d
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_8a

    if-nez p1, :cond_47

    .line 2810
    :try_start_23
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_8a

    .line 2814
    goto :goto_47

    .line 2811
    :catch_2b
    move-exception p1

    .line 2812
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2812
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    :cond_47
    :goto_47
    new-instance p1, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {p1, v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2817
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 2818
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p1

    .line 2819
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2821
    if-nez v1, :cond_68

    .line 2822
    if-eqz p2, :cond_85

    .line 2823
    const-string p1, "Success"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_85

    .line 2826
    :cond_68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure ["

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.content.pm.extra.STATUS_MESSAGE"

    .line 2827
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2826
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_2c .. :try_end_85} :catchall_8a

    .line 2829
    :cond_85
    :goto_85
    nop

    .line 2831
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2829
    return v1

    .line 2831
    :catchall_8a
    move-exception p1

    goto :goto_8e

    :catchall_8c
    move-exception p1

    move-object v2, v1

    :goto_8e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2700
    const/4 v0, 0x1

    const-string/jumbo v1, "runInstallCreate"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result p3

    .line 2701
    const/4 v0, -0x1

    if-ne p3, v0, :cond_12

    .line 2702
    const/4 p3, 0x0

    .line 2703
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2706
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 2707
    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p1

    .line 2708
    return p1
.end method

.method private doInstallAddSession(I[IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2755
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2756
    nop

    .line 2758
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2759
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_45

    .line 2760
    :try_start_15
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "Error: parent session ID is not a multi-package session"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_43

    .line 2763
    nop

    .line 2773
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2763
    const/4 p1, 0x1

    return p1

    .line 2765
    :cond_2a
    const/4 p1, 0x0

    move v1, p1

    :goto_2c
    :try_start_2c
    array-length v3, p2

    if-ge v1, v3, :cond_37

    .line 2766
    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 2765
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 2768
    :cond_37
    if-eqz p3, :cond_3e

    .line 2769
    const-string p2, "Success"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_43

    .line 2771
    :cond_3e
    nop

    .line 2773
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2771
    return p1

    .line 2773
    :catchall_43
    move-exception p1

    goto :goto_47

    :catchall_45
    move-exception p1

    move-object v2, v1

    :goto_47
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2855
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2856
    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_222

    .line 2857
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2858
    nop

    .line 2859
    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const-string v10, "+ "

    const-string v11, ""

    if-eqz p2, :cond_f8

    .line 2860
    if-lez v5, :cond_28

    .line 2861
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    :cond_28
    if-eqz v6, :cond_d9

    .line 2864
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2865
    invoke-interface {v12, v6, v4}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v12

    .line 2866
    if-eqz p4, :cond_6a

    .line 2867
    invoke-direct {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 2868
    const-string v14, ": "

    if-eqz v13, :cond_55

    .line 2869
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v4, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v12, v15, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_69

    .line 2871
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    :goto_69
    goto :goto_d8

    .line 2875
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_73

    move-object v13, v10

    goto :goto_74

    :cond_73
    move-object v13, v11

    :goto_74
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "group:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    if-eqz p3, :cond_d8

    .line 2877
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    invoke-direct {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 2879
    if-eqz v4, :cond_d8

    .line 2880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2881
    invoke-direct {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2880
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2883
    invoke-direct {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2882
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    :cond_d8
    :goto_d8
    goto :goto_f5

    .line 2889
    :cond_d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_e4

    if-nez p4, :cond_e4

    move-object v12, v10

    goto :goto_e5

    :cond_e4
    move-object v12, v11

    :goto_e5
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ungrouped:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    :goto_f5
    const-string v4, "  "

    goto :goto_f9

    .line 2859
    :cond_f8
    move-object v4, v11

    .line 2893
    :goto_f9
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2894
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v12

    .line 2895
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 2896
    nop

    .line 2897
    const/4 v15, 0x1

    move/from16 v16, v15

    move v15, v14

    :goto_113
    if-ge v15, v13, :cond_212

    .line 2898
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Landroid/content/pm/PermissionInfo;

    .line 2899
    if-eqz p2, :cond_12b

    if-nez v6, :cond_12b

    iget-object v1, v14, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_12b

    .line 2900
    move/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_207

    .line 2902
    :cond_12b
    iget v1, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 2903
    move/from16 v17, v3

    move/from16 v3, p5

    if-lt v1, v3, :cond_205

    move/from16 v3, p6

    if-le v1, v3, :cond_13d

    .line 2905
    move-object/from16 v18, v6

    goto/16 :goto_207

    .line 2907
    :cond_13d
    if-eqz p4, :cond_164

    .line 2908
    if-eqz v16, :cond_144

    .line 2909
    const/16 v16, 0x0

    goto :goto_149

    .line 2911
    :cond_144
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2913
    :goto_149
    invoke-direct {v0, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2914
    if-eqz v1, :cond_15b

    .line 2915
    iget v1, v14, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v14, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v14, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_160

    .line 2918
    :cond_15b
    iget-object v1, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2920
    :goto_160
    move-object/from16 v18, v6

    goto/16 :goto_207

    .line 2921
    :cond_164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_170

    move-object v3, v10

    goto :goto_171

    :cond_170
    move-object v3, v11

    :goto_171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    if-eqz p3, :cond_202

    .line 2924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    invoke-direct {v0, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2926
    if-eqz v1, :cond_1e2

    .line 2927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v18, v6

    iget-object v6, v14, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2928
    invoke-direct {v0, v14, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2927
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v6, v14, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2931
    invoke-direct {v0, v14, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2930
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e4

    .line 2926
    :cond_1e2
    move-object/from16 v18, v6

    .line 2934
    :goto_1e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  protectionLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2935
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2934
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_207

    .line 2923
    :cond_202
    move-object/from16 v18, v6

    goto :goto_207

    .line 2903
    :cond_205
    move-object/from16 v18, v6

    .line 2897
    :goto_207
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v14, 0x0

    goto/16 :goto_113

    .line 2940
    :cond_212
    move/from16 v17, v3

    if-eqz p4, :cond_219

    .line 2941
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    :cond_219
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    const/4 v4, 0x0

    goto/16 :goto_e

    .line 2944
    :cond_222
    return-void
.end method

.method private doRemoveSplit(ILjava/lang/String;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2779
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2780
    nop

    .line 2782
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2783
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_2c
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    .line 2784
    :try_start_15
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 2786
    if-eqz p3, :cond_1f

    .line 2787
    const-string p1, "Success"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_27
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 2789
    :cond_1f
    const/4 p1, 0x0

    .line 2794
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2789
    return p1

    .line 2794
    :catchall_24
    move-exception p1

    move-object v1, v2

    goto :goto_4a

    .line 2790
    :catch_27
    move-exception p1

    move-object v1, v2

    goto :goto_2d

    .line 2794
    :catchall_2a
    move-exception p1

    goto :goto_4a

    .line 2790
    :catch_2c
    move-exception p1

    .line 2791
    :goto_2d
    :try_start_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error: failed to remove split; "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_2a

    .line 2792
    const/4 p1, 0x1

    .line 2794
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2792
    return p1

    .line 2794
    :goto_4a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2713
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2715
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 2717
    const-string v5, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1f

    .line 2718
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-wide/from16 v14, p3

    goto :goto_62

    .line 2719
    :cond_1f
    if-eqz v0, :cond_58

    .line 2720
    const-string/jumbo v5, "r"

    invoke-virtual {v1, v0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_b8
    .catchall {:try_start_6 .. :try_end_28} :catchall_b6

    .line 2721
    const/4 v8, -0x1

    if-nez v5, :cond_30

    .line 2722
    nop

    .line 2749
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2722
    return v8

    .line 2724
    :cond_30
    :try_start_30
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9

    .line 2725
    cmp-long v11, v9, v6

    if-gez v11, :cond_55

    .line 2726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get size of: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_50} :catch_b8
    .catchall {:try_start_30 .. :try_end_50} :catchall_b6

    .line 2727
    nop

    .line 2749
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2727
    return v8

    .line 2725
    :cond_55
    move-object v0, v5

    move-wide v14, v9

    goto :goto_62

    .line 2730
    :cond_58
    :try_start_58
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-wide/from16 v14, p3

    .line 2732
    :goto_62
    cmp-long v5, v14, v6

    if-gtz v5, :cond_74

    .line 2733
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "Error: must specify a APK size"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_6f} :catch_b8
    .catchall {:try_start_58 .. :try_end_6f} :catchall_b6

    .line 2734
    nop

    .line 2749
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2734
    return v2

    .line 2737
    :cond_74
    :try_start_74
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2738
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    move/from16 v7, p1

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_85} :catch_b8
    .catchall {:try_start_74 .. :try_end_85} :catchall_b6

    .line 2739
    const-wide/16 v10, 0x0

    move-object v8, v5

    move-object/from16 v9, p5

    move-wide v12, v14

    move-wide v6, v14

    move-object v14, v0

    :try_start_8d
    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 2741
    if-eqz p6, :cond_ab

    .line 2742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: streamed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_ab} :catch_b3
    .catchall {:try_start_8d .. :try_end_ab} :catchall_b0

    .line 2744
    :cond_ab
    const/4 v0, 0x0

    .line 2749
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2744
    return v0

    .line 2749
    :catchall_b0
    move-exception v0

    move-object v3, v5

    goto :goto_da

    .line 2745
    :catch_b3
    move-exception v0

    move-object v3, v5

    goto :goto_b9

    .line 2749
    :catchall_b6
    move-exception v0

    goto :goto_da

    .line 2745
    :catch_b8
    move-exception v0

    .line 2746
    :goto_b9
    :try_start_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: failed to write; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_b9 .. :try_end_d5} :catchall_b6

    .line 2747
    nop

    .line 2749
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2747
    return v2

    .line 2749
    :goto_da
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .registers 2

    .line 1797
    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    .line 1809
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 1807
    :cond_12
    const-string p0, "disabled-until-used"

    return-object p0

    .line 1805
    :cond_15
    const-string p0, "disabled-user"

    return-object p0

    .line 1803
    :cond_18
    const-string p0, "disabled"

    return-object p0

    .line 1801
    :cond_1b
    const-string p0, "enabled"

    return-object p0

    .line 1799
    :cond_1e
    const-string p0, "default"

    return-object p0
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2964
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 2965
    if-eqz v0, :cond_d

    return-object v0

    .line 2967
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2968
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 2969
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2970
    new-instance v0, Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 2971
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    return-object v0
.end method

.method private getStagedSessions()I
    .registers 6

    .line 345
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 347
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 348
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; sessionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; isStaged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; isStagedSessionReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; isStagedSessionApplied = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; isStagedSessionFailed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7b} :catch_7f

    .line 356
    goto :goto_16

    .line 362
    :cond_7c
    nop

    .line 363
    const/4 v0, 0x1

    return v0

    .line 357
    :catch_7f
    move-exception v1

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .registers 1

    .line 2248
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    .line 2251
    nop

    .line 2252
    const/4 p0, 0x1

    return p0

    .line 2249
    :catch_6
    move-exception p0

    .line 2250
    const/4 p0, 0x0

    return p0
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .registers 4

    .line 1993
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1994
    if-eqz p1, :cond_12

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 1995
    :catch_13
    move-exception p1

    .line 1996
    return v0
.end method

.method private isProductServicesApp(Ljava/lang/String;)Z
    .registers 4

    .line 2002
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2003
    if-eqz p1, :cond_12

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isProductServices()Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 2004
    :catch_13
    move-exception p1

    .line 2005
    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .registers 4

    .line 1984
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1985
    if-eqz p1, :cond_12

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 1986
    :catch_13
    move-exception p1

    .line 1987
    return v0
.end method

.method static synthetic lambda$runSetHomeActivity$1(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 2

    .line 2545
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private linkStateToString(I)Ljava/lang/String;
    .registers 4

    .line 2076
    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown link state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2081
    :cond_20
    const-string p1, "always ask"

    return-object p1

    .line 2080
    :cond_23
    const-string/jumbo p1, "never"

    return-object p1

    .line 2079
    :cond_27
    const-string p1, "always"

    return-object p1

    .line 2078
    :cond_2a
    const-string p1, "ask"

    return-object p1

    .line 2077
    :cond_2d
    const-string/jumbo p1, "undefined"

    return-object p1
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2948
    if-eqz p3, :cond_7

    .line 2949
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2951
    :cond_7
    if-eqz p2, :cond_15

    .line 2952
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 2953
    if-eqz p1, :cond_15

    .line 2955
    :try_start_f
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_13} :catch_14

    return-object p1

    .line 2956
    :catch_14
    move-exception p1

    .line 2960
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 13

    .line 2381
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2382
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2384
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2386
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2389
    move v4, v1

    .line 2390
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2a8

    .line 2391
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x10

    const/4 v10, 0x4

    const/4 v11, 0x0

    sparse-switch v8, :sswitch_data_2b0

    :cond_29
    goto/16 :goto_173

    :sswitch_2b
    const-string v8, "--force-sdk"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x18

    goto/16 :goto_173

    :sswitch_37
    const-string v8, "--staged"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x1b

    goto/16 :goto_173

    :sswitch_43
    const-string v8, "--restrict-permissions"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v7, 0x7

    goto/16 :goto_173

    :sswitch_4e
    const-string v8, "--user"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x14

    goto/16 :goto_173

    :sswitch_5a
    const-string v8, "--full"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x12

    goto/16 :goto_173

    :sswitch_66
    const-string v8, "--apex"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x19

    goto/16 :goto_173

    :sswitch_72
    const-string v8, "--preload"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x13

    goto/16 :goto_173

    :sswitch_7e
    const-string v8, "--ephemeral"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0xf

    goto/16 :goto_173

    :sswitch_8a
    const-string v8, "--originating-uri"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x9

    goto/16 :goto_173

    :sswitch_96
    const-string v8, "--pkg"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0xc

    goto/16 :goto_173

    :sswitch_a2
    const-string v8, "--abi"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0xe

    goto/16 :goto_173

    :sswitch_ae
    const-string v8, "-t"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v7, 0x3

    goto/16 :goto_173

    :sswitch_b9
    const-string v8, "-r"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    move v7, v11

    goto/16 :goto_173

    :sswitch_c4
    const-string v8, "-p"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0xb

    goto/16 :goto_173

    :sswitch_d0
    const-string v8, "-i"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    move v7, v6

    goto/16 :goto_173

    :sswitch_db
    const-string v8, "-g"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v7, 0x6

    goto/16 :goto_173

    :sswitch_e6
    const-string v8, "-f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    move v7, v10

    goto/16 :goto_173

    :sswitch_f1
    const-string v8, "-d"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v7, 0x5

    goto/16 :goto_173

    :sswitch_fc
    const-string v8, "-S"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0xd

    goto/16 :goto_173

    :sswitch_108
    const-string v8, "-R"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    move v7, v1

    goto :goto_173

    :sswitch_112
    const-string v8, "--multi-package"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x1a

    goto :goto_173

    :sswitch_11d
    const-string v8, "--enable-rollback"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x1c

    goto :goto_173

    :sswitch_128
    const-string v8, "--referrer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0xa

    goto :goto_173

    :sswitch_133
    const-string v8, "--instant"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    move v7, v9

    goto :goto_173

    :sswitch_13d
    const-string v8, "--instantapp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x11

    goto :goto_173

    :sswitch_148
    const-string v8, "--install-location"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x15

    goto :goto_173

    :sswitch_153
    const-string v8, "--dont-kill"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x8

    goto :goto_173

    :sswitch_15e
    const-string v8, "--force-uuid"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x17

    goto :goto_173

    :sswitch_169
    const-string v8, "--install-reason"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v7, 0x16

    :goto_173
    packed-switch v7, :pswitch_data_326

    .line 2504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2491
    :pswitch_18d  #0x1c
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v5, :cond_195

    .line 2499
    const-string v5, "com.android.shell"

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2501
    :cond_195
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2502
    goto/16 :goto_2a6

    .line 2488
    :pswitch_19e  #0x1b
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2489
    goto/16 :goto_2a6

    .line 2485
    :pswitch_1a3  #0x1a
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 2486
    goto/16 :goto_2a6

    .line 2481
    :pswitch_1a8  #0x19
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 2482
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2483
    goto/16 :goto_2a6

    .line 2479
    :pswitch_1b0  #0x18
    goto/16 :goto_2a6

    .line 2472
    :pswitch_1b2  #0x17
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2473
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2474
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string v6, "internal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a6

    .line 2475
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_2a6

    .line 2469
    :pswitch_1cc  #0x16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2470
    goto/16 :goto_2a6

    .line 2466
    :pswitch_1d8  #0x15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2467
    goto/16 :goto_2a6

    .line 2463
    :pswitch_1e4  #0x14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2464
    goto/16 :goto_2a6

    .line 2460
    :pswitch_1f0  #0x13
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 2461
    goto/16 :goto_2a6

    .line 2457
    :pswitch_1f5  #0x12
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2458
    goto/16 :goto_2a6

    .line 2454
    :pswitch_1fa  #0xf, 0x10, 0x11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2455
    goto/16 :goto_2a6

    .line 2449
    :pswitch_1ff  #0xe
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2450
    goto/16 :goto_2a6

    .line 2442
    :pswitch_20b  #0xd
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2443
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_21e

    .line 2446
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 2447
    goto/16 :goto_2a6

    .line 2444
    :cond_21e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2436
    :pswitch_226  #0xc
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2437
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_232

    goto/16 :goto_2a6

    .line 2438
    :cond_232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :pswitch_23a  #0xb
    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2430
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2431
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_247

    goto :goto_2a6

    .line 2432
    :cond_247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing inherit package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :pswitch_24f  #0xa
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2427
    goto :goto_2a6

    .line 2423
    :pswitch_25a  #0x9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2424
    goto :goto_2a6

    .line 2420
    :pswitch_265  #0x8
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2421
    goto :goto_2a6

    .line 2416
    :pswitch_26c  #0x7
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2418
    goto :goto_2a6

    .line 2413
    :pswitch_275  #0x6
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2414
    goto :goto_2a6

    .line 2410
    :pswitch_27c  #0x5
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2411
    goto :goto_2a6

    .line 2407
    :pswitch_283  #0x4
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v9

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2408
    goto :goto_2a6

    .line 2404
    :pswitch_289  #0x3
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v10

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2405
    goto :goto_2a6

    .line 2398
    :pswitch_28f  #0x2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2399
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_29a

    goto :goto_2a6

    .line 2400
    :cond_29a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing installer package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2395
    :pswitch_2a2  #0x1
    nop

    .line 2396
    move v4, v11

    goto :goto_2a6

    .line 2393
    :pswitch_2a5  #0x0
    nop

    .line 2504
    :cond_2a6
    :goto_2a6
    goto/16 :goto_16

    .line 2507
    :cond_2a8
    if-eqz v4, :cond_2af

    .line 2508
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v6

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2510
    :cond_2af
    return-object v2

    :sswitch_data_2b0
    .sparse-switch
        -0x7ca7efaa -> :sswitch_169
        -0x7449dd03 -> :sswitch_15e
        -0x69f9e586 -> :sswitch_153
        -0x4e451eb9 -> :sswitch_148
        -0x43c705c0 -> :sswitch_13d
        -0x38b573bf -> :sswitch_133
        -0x2a211e41 -> :sswitch_128
        -0x26fa19b2 -> :sswitch_11d
        -0xa293dee -> :sswitch_112
        0x5c5 -> :sswitch_108
        0x5c6 -> :sswitch_fc
        0x5d7 -> :sswitch_f1
        0x5d9 -> :sswitch_e6
        0x5da -> :sswitch_db
        0x5dc -> :sswitch_d0
        0x5e3 -> :sswitch_c4
        0x5e5 -> :sswitch_b9
        0x5e7 -> :sswitch_ae
        0x2900ec8 -> :sswitch_a2
        0x290482c -> :sswitch_96
        0x8d57768 -> :sswitch_8a
        0x3eb0e7fd -> :sswitch_7e
        0x3fa0d469 -> :sswitch_72
        0x4f71fec2 -> :sswitch_66
        0x4f74582f -> :sswitch_5a
        0x4f7b216b -> :sswitch_4e
        0x59147c93 -> :sswitch_43
        0x59daeac6 -> :sswitch_37
        0x781e9cb8 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_326
    .packed-switch 0x0
        :pswitch_2a5  #00000000
        :pswitch_2a2  #00000001
        :pswitch_28f  #00000002
        :pswitch_289  #00000003
        :pswitch_283  #00000004
        :pswitch_27c  #00000005
        :pswitch_275  #00000006
        :pswitch_26c  #00000007
        :pswitch_265  #00000008
        :pswitch_25a  #00000009
        :pswitch_24f  #0000000a
        :pswitch_23a  #0000000b
        :pswitch_226  #0000000c
        :pswitch_20b  #0000000d
        :pswitch_1ff  #0000000e
        :pswitch_1fa  #0000000f
        :pswitch_1fa  #00000010
        :pswitch_1fa  #00000011
        :pswitch_1f5  #00000012
        :pswitch_1f0  #00000013
        :pswitch_1e4  #00000014
        :pswitch_1d8  #00000015
        :pswitch_1cc  #00000016
        :pswitch_1b2  #00000017
        :pswitch_1b0  #00000018
        :pswitch_1a8  #00000019
        :pswitch_1a3  #0000001a
        :pswitch_19e  #0000001b
        :pswitch_18d  #0000001c
    .end packed-switch
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 875
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 877
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 878
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 897
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 899
    return-object v0
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .registers 8

    .line 904
    if-nez p4, :cond_4

    if-eqz p5, :cond_9c

    .line 906
    :cond_4
    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p4, :cond_16

    .line 907
    new-instance p4, Landroid/content/ComponentName;

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 908
    :cond_16
    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p4, :cond_28

    .line 909
    new-instance p4, Landroid/content/ComponentName;

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 910
    :cond_28
    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p4, :cond_3a

    .line 911
    new-instance p4, Landroid/content/ComponentName;

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 913
    :cond_3a
    const/4 p4, 0x0

    .line 915
    :goto_3b
    if-eqz p4, :cond_9c

    .line 916
    if-nez p5, :cond_85

    .line 917
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "priority="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " preferredOrder="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " match=0x"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/content/pm/ResolveInfo;->match:I

    .line 919
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " specificIndex="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isDefault="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 917
    invoke-virtual {p1, p3}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 923
    :cond_85
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 924
    return-void

    .line 927
    :cond_9c
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method private runClear()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    nop

    .line 1765
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 1766
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1767
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    .line 1770
    :cond_19
    move v0, v1

    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1771
    const/4 v3, 0x1

    if-nez v2, :cond_2b

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    return v3

    .line 1776
    :cond_2b
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 1777
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v2, v1, v4, v0}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 1778
    monitor-enter v4

    .line 1779
    :goto_38
    :try_start_38
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_5b

    if-nez v0, :cond_42

    .line 1781
    :try_start_3c
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_5b

    .line 1783
    :goto_3f
    goto :goto_38

    .line 1782
    :catch_40
    move-exception v0

    goto :goto_3f

    .line 1785
    :cond_42
    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_5b

    .line 1787
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v0, :cond_51

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    return v1

    .line 1791
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    return v3

    .line 1785
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method private runCompile()I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1315
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1316
    const/4 v2, 0x0

    const-string v3, "dalvik.vm.usejitprofiles"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1317
    nop

    .line 1318
    nop

    .line 1319
    nop

    .line 1320
    nop

    .line 1321
    nop

    .line 1322
    nop

    .line 1323
    nop

    .line 1324
    nop

    .line 1325
    const/4 v4, 0x0

    move v8, v2

    move v9, v8

    move v15, v9

    move/from16 v18, v15

    move/from16 v19, v18

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object/from16 v17, v7

    .line 1328
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v14, 0x1

    if-eqz v10, :cond_e1

    .line 1329
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_2a4

    :cond_31
    goto/16 :goto_98

    :sswitch_33
    const-string v12, "--check-prof"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v11, 0x6

    goto :goto_98

    :sswitch_3d
    const-string v12, "--compile-layouts"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v11, 0x5

    goto :goto_98

    :sswitch_47
    const-string v12, "--secondary-dex"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/16 v11, 0x8

    goto :goto_98

    :sswitch_52
    const-string v12, "-r"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v11, 0x4

    goto :goto_98

    :sswitch_5c
    const-string v12, "-m"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v11, 0x3

    goto :goto_98

    :sswitch_66
    const-string v12, "-f"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v11, 0x2

    goto :goto_98

    :sswitch_70
    const-string v12, "-c"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    move v11, v14

    goto :goto_98

    :sswitch_7a
    const-string v12, "-a"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    move v11, v2

    goto :goto_98

    :sswitch_84
    const-string v12, "--split"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/16 v11, 0x9

    goto :goto_98

    :sswitch_8f
    const-string v12, "--reset"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v11, 0x7

    :goto_98
    packed-switch v11, :pswitch_data_2ce

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    return v14

    .line 1360
    :pswitch_b0  #0x9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 1361
    move-object/from16 v17, v10

    goto :goto_df

    .line 1357
    :pswitch_b7  #0x8
    nop

    .line 1358
    move v9, v14

    goto :goto_df

    .line 1352
    :pswitch_ba  #0x7
    nop

    .line 1353
    nop

    .line 1354
    nop

    .line 1355
    const-string v7, "install"

    move v15, v14

    move/from16 v19, v15

    goto :goto_df

    .line 1349
    :pswitch_c3  #0x6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 1350
    goto :goto_df

    .line 1346
    :pswitch_c8  #0x5
    nop

    .line 1347
    move v8, v14

    goto :goto_df

    .line 1343
    :pswitch_cb  #0x4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 1344
    goto :goto_df

    .line 1340
    :pswitch_d0  #0x3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1341
    goto :goto_df

    .line 1337
    :pswitch_d5  #0x2
    nop

    .line 1338
    move v15, v14

    goto :goto_df

    .line 1334
    :pswitch_d8  #0x1
    nop

    .line 1335
    move/from16 v19, v14

    goto :goto_df

    .line 1331
    :pswitch_dc  #0x0
    nop

    .line 1332
    move/from16 v18, v14

    .line 1364
    :goto_df
    goto/16 :goto_22

    .line 1368
    :cond_e1
    if-eqz v5, :cond_fe

    .line 1369
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1370
    move v3, v14

    goto :goto_fe

    .line 1371
    :cond_ee
    const-string v3, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 1372
    move v3, v2

    goto :goto_fe

    .line 1374
    :cond_f8
    const-string v0, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    return v14

    .line 1379
    :cond_fe
    :goto_fe
    if-eqz v6, :cond_102

    move v5, v14

    goto :goto_103

    :cond_102
    move v5, v2

    .line 1380
    :goto_103
    if-eqz v7, :cond_107

    move v10, v14

    goto :goto_108

    :cond_107
    move v10, v2

    .line 1382
    :goto_108
    if-nez v5, :cond_10e

    if-nez v10, :cond_10e

    if-eqz v8, :cond_126

    :cond_10e
    if-nez v5, :cond_114

    if-eqz v10, :cond_114

    if-nez v8, :cond_126

    :cond_114
    if-eqz v5, :cond_11a

    if-nez v10, :cond_11a

    if-nez v8, :cond_126

    :cond_11a
    if-eqz v5, :cond_120

    if-eqz v10, :cond_120

    if-eqz v8, :cond_126

    :cond_120
    if-eqz v5, :cond_12c

    if-eqz v10, :cond_12c

    if-eqz v8, :cond_12c

    .line 1387
    :cond_126
    const-string v0, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    return v14

    .line 1392
    :cond_12c
    if-eqz v18, :cond_136

    if-eqz v17, :cond_136

    .line 1393
    const-string v0, "-a cannot be specified together with --split"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    return v14

    .line 1397
    :cond_136
    if-eqz v9, :cond_140

    if-eqz v17, :cond_140

    .line 1398
    const-string v0, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    return v14

    .line 1402
    :cond_140
    nop

    .line 1403
    if-eqz v5, :cond_164

    .line 1404
    invoke-static {v6}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_163

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a valid compilation filter."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    return v14

    .line 1409
    :cond_163
    move-object v4, v6

    .line 1411
    :cond_164
    if-eqz v10, :cond_199

    .line 1412
    nop

    .line 1413
    move v4, v2

    :goto_168
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_17c

    .line 1414
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_179

    .line 1416
    nop

    .line 1417
    goto :goto_17d

    .line 1413
    :cond_179
    add-int/lit8 v4, v4, 0x1

    goto :goto_168

    :cond_17c
    move v4, v11

    .line 1420
    :goto_17d
    if-ne v4, v11, :cond_194

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown compilation reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    return v14

    .line 1424
    :cond_194
    nop

    .line 1425
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v4

    .line 1429
    :cond_199
    nop

    .line 1430
    if-eqz v18, :cond_1a3

    .line 1431
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v5

    goto :goto_1b3

    .line 1433
    :cond_1a3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 1434
    if-nez v5, :cond_1af

    .line 1435
    const-string v0, "Error: package name not specified"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    return v14

    .line 1438
    :cond_1af
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1441
    :goto_1b3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    nop

    .line 1443
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v2

    :goto_1be
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_246

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    .line 1444
    if-eqz v19, :cond_1d2

    .line 1445
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v13}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 1448
    :cond_1d2
    if-eqz v18, :cond_1ff

    .line 1449
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    move/from16 v20, v10

    goto :goto_201

    .line 1448
    :cond_1ff
    move/from16 v20, v10

    .line 1453
    :goto_201
    nop

    .line 1454
    if-eqz v8, :cond_215

    .line 1455
    const-class v10, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 1457
    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v10

    .line 1458
    move-object v2, v13

    move v0, v14

    move/from16 v21, v15

    goto :goto_237

    .line 1459
    :cond_215
    if-eqz v9, :cond_222

    .line 1460
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v10, v13, v4, v15}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    move-object v2, v13

    move v0, v14

    move/from16 v21, v15

    goto :goto_236

    .line 1462
    :cond_222
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v16, 0x1

    move-object v11, v13

    move v12, v3

    move-object v2, v13

    move-object v13, v4

    move v0, v14

    move v14, v15

    move/from16 v21, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-interface/range {v10 .. v16}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v10

    :goto_236
    nop

    .line 1466
    :goto_237
    if-nez v10, :cond_23c

    .line 1467
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_23c
    const/4 v2, 0x0

    move v14, v0

    move/from16 v10, v20

    move/from16 v15, v21

    move-object/from16 v0, p0

    goto/16 :goto_1be

    .line 1471
    :cond_246
    move v0, v14

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_254

    .line 1472
    const-string v0, "Success"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const/4 v2, 0x0

    return v2

    .line 1474
    :cond_254
    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_27b

    .line 1475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be compiled"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    return v0

    .line 1478
    :cond_27b
    const-string v3, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    nop

    .line 1480
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_286
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1481
    if-eqz v4, :cond_296

    .line 1482
    move v4, v2

    goto :goto_29b

    .line 1484
    :cond_296
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    :goto_29b
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    goto :goto_286

    .line 1488
    :cond_29f
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1489
    return v0

    nop

    :sswitch_data_2a4
    .sparse-switch
        -0x60476451 -> :sswitch_8f
        -0x60346686 -> :sswitch_84
        0x5d4 -> :sswitch_7a
        0x5d6 -> :sswitch_70
        0x5d9 -> :sswitch_66
        0x5e0 -> :sswitch_5c
        0x5e5 -> :sswitch_52
        0x4baaae9e -> :sswitch_47
        0x4ee8cb4f -> :sswitch_3d
        0x64c6429e -> :sswitch_33
    .end sparse-switch

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_dc  #00000000
        :pswitch_d8  #00000001
        :pswitch_d5  #00000002
        :pswitch_d0  #00000003
        :pswitch_cb  #00000004
        :pswitch_c8  #00000005
        :pswitch_c3  #00000006
        :pswitch_ba  #00000007
        :pswitch_b7  #00000008
        :pswitch_b0  #00000009
    .end packed-switch
.end method

.method private runDexoptJob()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1508
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1510
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    .line 1511
    :cond_19
    nop

    .line 1510
    :goto_1a
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v0

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-eqz v0, :cond_27

    const-string v2, "Success"

    goto :goto_29

    :cond_27
    const-string v2, "Failure"

    :goto_29
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    if-eqz v0, :cond_30

    const/4 v0, 0x0

    goto :goto_31

    :cond_30
    const/4 v0, -0x1

    :goto_31
    return v0
.end method

.method private runDump()I
    .registers 3

    .line 2617
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2618
    if-nez v0, :cond_11

    .line 2619
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    const/4 v0, 0x1

    return v0

    .line 2622
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2623
    const/4 v0, 0x0

    return v0
.end method

.method private runDumpProfiles()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1518
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 1519
    const/4 v0, 0x0

    return v0
.end method

.method private runGetAppLink()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    const/4 v0, 0x0

    move v1, v0

    .line 2165
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    .line 2166
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2167
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 2169
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    return v3

    .line 2175
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2176
    if-nez v2, :cond_43

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    return v3

    .line 2181
    :cond_43
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2182
    const-string v5, "Error: package "

    if-nez v4, :cond_69

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    return v3

    .line 2187
    :cond_69
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_8d

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not handle web links."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    return v3

    .line 2193
    :cond_8d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2194
    invoke-interface {v4, v2, v1}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v1

    .line 2193
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    return v0
.end method

.method private runGetHarmfulAppWarning()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2650
    const/4 v0, -0x2

    .line 2653
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2654
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2655
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2657
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    const/4 v0, -0x1

    return v0

    .line 2662
    :cond_32
    const/4 v1, 0x0

    const-string/jumbo v2, "runGetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2665
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v0}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 2667
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2668
    return v1

    .line 2670
    :cond_52
    const/4 v0, 0x1

    return v0
.end method

.method private runGetInstallLocation()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    .line 1251
    nop

    .line 1252
    if-nez v0, :cond_c

    .line 1253
    const-string v1, "auto"

    goto :goto_1a

    .line 1254
    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1255
    const-string v1, "internal"

    goto :goto_1a

    .line 1256
    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 1257
    const-string v1, "external"

    goto :goto_1a

    .line 1256
    :cond_18
    const-string v1, "invalid"

    .line 1259
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const/4 v0, 0x0

    return v0
.end method

.method private runGetInstantAppResolver()I
    .registers 4

    .line 2580
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2582
    const/4 v1, 0x1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2583
    if-nez v2, :cond_e

    .line 2584
    return v1

    .line 2586
    :cond_e
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    .line 2587
    const/4 v0, 0x0

    return v0

    .line 2588
    :catch_17
    move-exception v2

    .line 2589
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    return v1
.end method

.method private runGetModuleInfo()I
    .registers 9

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    move v2, v1

    .line 312
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_51

    .line 313
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x2901001

    if-eq v6, v7, :cond_27

    const v7, 0x1ed785da

    if-eq v6, v7, :cond_1d

    :cond_1c
    goto :goto_31

    :cond_1d
    const-string v6, "--installed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v6, v4

    goto :goto_32

    :cond_27
    const-string v6, "--all"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v6, v1

    goto :goto_32

    :goto_31
    move v6, v5

    :goto_32
    if-eqz v6, :cond_4c

    if-eq v6, v4, :cond_4b

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    return v5

    .line 318
    :cond_4b
    goto :goto_50

    .line 315
    :cond_4c
    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    .line 316
    nop

    .line 321
    :goto_50
    goto :goto_6

    .line 325
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v3, " packageName: "

    if-eqz v1, :cond_7d

    .line 328
    :try_start_59
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v2}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v1

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    goto :goto_b1

    .line 332
    :cond_7d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ModuleInfo;

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_b0} :catch_b3

    .line 335
    goto :goto_87

    .line 340
    :cond_b1
    :goto_b1
    nop

    .line 341
    return v4

    .line 337
    :catch_b3
    move-exception v1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    return v5
.end method

.method private runGetOemPermissions()I
    .registers 3

    .line 2058
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2059
    if-nez v0, :cond_11

    .line 2060
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    const/4 v0, 0x1

    return v0

    .line 2063
    :cond_11
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2064
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2065
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_2b

    .line 2068
    :cond_22
    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_35

    .line 2066
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "{}"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    :goto_35
    const/4 v0, 0x0

    return v0
.end method

.method private runGetPrivappDenyPermissions()I
    .registers 3

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2035
    if-nez v0, :cond_11

    .line 2036
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    const/4 v0, 0x1

    return v0

    .line 2040
    :cond_11
    nop

    .line 2041
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2042
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_47

    .line 2043
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2044
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_47

    .line 2045
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductServicesApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2046
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2047
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_47

    .line 2049
    :cond_3f
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 2052
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-nez v0, :cond_51

    .line 2053
    const-string/jumbo v0, "{}"

    goto :goto_55

    :cond_51
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2052
    :goto_55
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    const/4 v0, 0x0

    return v0
.end method

.method private runGetPrivappPermissions()I
    .registers 3

    .line 2010
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2011
    if-nez v0, :cond_11

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    const/4 v0, 0x1

    return v0

    .line 2016
    :cond_11
    nop

    .line 2017
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2018
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_47

    .line 2019
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2020
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_47

    .line 2021
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductServicesApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2022
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2023
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_47

    .line 2025
    :cond_3f
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 2028
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-nez v0, :cond_51

    .line 2029
    const-string/jumbo v0, "{}"

    goto :goto_55

    :cond_51
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2028
    :goto_55
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    const/4 v0, 0x0

    return v0
.end method

.method private runGrantRevokePermission(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    nop

    .line 1936
    const/4 v0, 0x0

    move v1, v0

    .line 1937
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1938
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 1943
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1944
    const/4 v3, 0x1

    if-nez v2, :cond_2b

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: no package specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    return v3

    .line 1948
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1949
    if-nez v4, :cond_3b

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: no permission specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    return v3

    .line 1954
    :cond_3b
    if-eqz p1, :cond_43

    .line 1955
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, v2, v4, v1}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_48

    .line 1957
    :cond_43
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, v2, v4, v1}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1959
    :goto_48
    return v0
.end method

.method private runHasFeature()I
    .registers 7

    .line 2595
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2596
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2597
    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 2598
    const-string v1, "Error: expected FEATURE name"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    return v2

    .line 2601
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2603
    if-nez v3, :cond_19

    const/4 v4, 0x0

    goto :goto_1d

    :cond_19
    :try_start_19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2604
    :goto_1d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    .line 2605
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2a} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2a} :catch_2d

    .line 2606
    xor-int/lit8 v0, v1, 0x1

    return v0

    .line 2610
    :catch_2d
    move-exception v1

    .line 2611
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    return v2

    .line 2607
    :catch_36
    move-exception v1

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: illegal version number "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    return v2
.end method

.method private runInstall()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1057
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1060
    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V

    .line 1061
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v9

    .line 1063
    nop

    .line 1065
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v4, :cond_35

    :try_start_1e
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_35

    .line 1066
    const-string v1, "Error: must either specify a package size or an APK file"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_88

    .line 1067
    nop

    .line 1084
    nop

    .line 1086
    :try_start_2f
    invoke-direct {p0, v9, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 1088
    goto :goto_34

    .line 1087
    :catch_33
    move-exception v0

    .line 1067
    :goto_34
    return v10

    .line 1069
    :cond_35
    :try_start_35
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_40

    move v2, v10

    goto :goto_41

    :cond_40
    move v2, v11

    .line 1071
    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "base."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_50

    const-string v2, "apex"

    goto :goto_52

    :cond_50
    const-string v2, "apk"

    :goto_52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1072
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v1
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_88

    if-eqz v1, :cond_6e

    .line 1074
    nop

    .line 1084
    nop

    .line 1086
    :try_start_68
    invoke-direct {p0, v9, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 1088
    goto :goto_6d

    .line 1087
    :catch_6c
    move-exception v0

    .line 1074
    :goto_6d
    return v10

    .line 1076
    :cond_6e
    :try_start_6e
    invoke-direct {p0, v9, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_88

    if-eqz v1, :cond_7c

    .line 1078
    nop

    .line 1084
    nop

    .line 1086
    :try_start_76
    invoke-direct {p0, v9, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    .line 1088
    goto :goto_7b

    .line 1087
    :catch_7a
    move-exception v0

    .line 1078
    :goto_7b
    return v10

    .line 1080
    :cond_7c
    nop

    .line 1081
    :try_start_7d
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_85

    .line 1082
    nop

    .line 1084
    nop

    .line 1082
    return v11

    .line 1084
    :catchall_85
    move-exception v0

    move v10, v11

    goto :goto_89

    :catchall_88
    move-exception v0

    :goto_89
    if-eqz v10, :cond_90

    .line 1086
    :try_start_8b
    invoke-direct {p0, v9, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 1088
    goto :goto_90

    .line 1087
    :catch_8f
    move-exception v1

    .line 1088
    :cond_90
    :goto_90
    throw v0
.end method

.method private runInstallAbandon()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1095
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v0

    return v0
.end method

.method private runInstallAddSession()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 1139
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1141
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_30

    .line 1142
    const-string v1, "Error: At least two sessions are required."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    return v4

    .line 1145
    :cond_30
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    invoke-direct {p0, v1, v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result v0

    return v0
.end method

.method private runInstallCommit()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1100
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v0

    return v0
.end method

.method private runInstallCreate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1105
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1106
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v1

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: created install session ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    const/4 v0, 0x0

    return v0
.end method

.method private runInstallExisting()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1164
    nop

    .line 1165
    nop

    .line 1167
    const/4 v1, 0x0

    const/high16 v2, 0x400000

    move v9, v1

    move v6, v2

    move v2, v9

    .line 1168
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    if-eqz v3, :cond_9c

    .line 1169
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    sparse-switch v5, :sswitch_data_144

    :cond_1f
    goto :goto_5b

    :sswitch_20
    const-string v5, "--restrict-permissions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v4, v7

    goto :goto_5b

    :sswitch_2a
    const-string v5, "--wait"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v4, v8

    goto :goto_5b

    :sswitch_34
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v4, v1

    goto :goto_5b

    :sswitch_3e
    const-string v5, "--full"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v4, v11

    goto :goto_5b

    :sswitch_48
    const-string v5, "--ephemeral"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v4, v10

    goto :goto_5b

    :sswitch_52
    const-string v5, "--instant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v4, v12

    :goto_5b
    if-eqz v4, :cond_91

    if-eq v4, v10, :cond_8b

    if-eq v4, v12, :cond_8b

    if-eq v4, v11, :cond_85

    if-eq v4, v8, :cond_82

    if-eq v4, v7, :cond_7c

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    return v10

    .line 1186
    :cond_7c
    const v3, -0x400001

    and-int/2addr v3, v6

    .line 1187
    move v6, v3

    goto :goto_9a

    .line 1183
    :cond_82
    nop

    .line 1184
    move v2, v10

    goto :goto_9a

    .line 1179
    :cond_85
    and-int/lit16 v3, v6, -0x801

    .line 1180
    or-int/lit16 v3, v3, 0x4000

    .line 1181
    move v6, v3

    goto :goto_9a

    .line 1175
    :cond_8b
    or-int/lit16 v3, v6, 0x800

    .line 1176
    and-int/lit16 v3, v3, -0x4001

    .line 1177
    move v6, v3

    goto :goto_9a

    .line 1171
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 1172
    move v9, v3

    .line 1190
    :goto_9a
    goto/16 :goto_c

    .line 1194
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1195
    if-nez v11, :cond_a8

    .line 1196
    const-string v1, "Error: package name not specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    return v10

    .line 1200
    :cond_a8
    const/4 v7, 0x0

    .line 1202
    if-eqz v2, :cond_f6

    .line 1203
    :try_start_ab
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1204
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    .line 1205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    nop

    .line 1207
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    const/4 v12, 0x0

    .line 1206
    move-object v4, v11

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v12

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 1208
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v2

    .line 1209
    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1211
    const-string v3, "Received intent for package install"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    if-nez v2, :cond_f4

    goto :goto_f5

    :cond_f4
    move v1, v10

    :goto_f5
    return v1

    .line 1215
    :cond_f6
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, v11

    move v5, v9

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v2
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_100} :catch_13a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ab .. :try_end_100} :catch_13a

    .line 1217
    const/4 v3, -0x3

    const-string v4, "Package "

    if-eq v2, v3, :cond_120

    .line 1220
    :try_start_105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " installed for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    return v1

    .line 1218
    :cond_120
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_13a} :catch_13a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_105 .. :try_end_13a} :catch_13a

    .line 1222
    :catch_13a
    move-exception v1

    .line 1223
    invoke-virtual {v1}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    return v10

    nop

    :sswitch_data_144
    .sparse-switch
        -0x38b573bf -> :sswitch_52
        0x3eb0e7fd -> :sswitch_48
        0x4f74582f -> :sswitch_3e
        0x4f7b216b -> :sswitch_34
        0x4f7bc715 -> :sswitch_2a
        0x59147c93 -> :sswitch_20
    .end sparse-switch
.end method

.method private runInstallRemove()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1155
    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 1156
    const-string v1, "Error: split name not specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    return v3

    .line 1159
    :cond_19
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private runInstallWrite()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    const-wide/16 v0, -0x1

    move-wide v5, v0

    .line 1118
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1119
    const-string v1, "-S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    .line 1122
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1126
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1129
    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private runList()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 519
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 520
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 521
    const-string v1, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    return v2

    .line 524
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_d0

    :cond_19
    goto :goto_6f

    :sswitch_1a
    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x6

    goto :goto_70

    :sswitch_25
    const-string v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    goto :goto_70

    :sswitch_2f
    const-string/jumbo v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x4

    goto :goto_70

    :sswitch_3a
    const-string v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_70

    :sswitch_44
    const-string/jumbo v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x7

    goto :goto_70

    :sswitch_4f
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_70

    :sswitch_59
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    goto :goto_70

    :sswitch_64
    const-string/jumbo v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x5

    goto :goto_70

    :goto_6f
    move v3, v2

    :goto_70
    packed-switch v3, :pswitch_data_f2

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    return v2

    .line 539
    :pswitch_8d  #0x7
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 540
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    .line 541
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    .line 539
    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 542
    return v4

    .line 537
    :pswitch_b2  #0x6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v0

    return v0

    .line 535
    :pswitch_b7  #0x5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v0

    return v0

    .line 533
    :pswitch_bc  #0x3, 0x4
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v0

    return v0

    .line 530
    :pswitch_c1  #0x2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v0

    return v0

    .line 528
    :pswitch_c6  #0x1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v0

    return v0

    .line 526
    :pswitch_cb  #0x0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v0

    return v0

    :sswitch_data_d0
    .sparse-switch
        -0x3b73d86e -> :sswitch_64
        -0x301acbba -> :sswitch_59
        -0x11531bc3 -> :sswitch_4f
        0x6a68e08 -> :sswitch_44
        0x20752f6e -> :sswitch_3a
        0x2cc154ed -> :sswitch_2f
        0x3071b299 -> :sswitch_25
        0x4392f484 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_cb  #00000000
        :pswitch_c6  #00000001
        :pswitch_c1  #00000002
        :pswitch_bc  #00000003
        :pswitch_bc  #00000004
        :pswitch_b7  #00000005
        :pswitch_b2  #00000006
        :pswitch_8d  #00000007
    .end packed-switch
.end method

.method private runListFeatures()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 553
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 562
    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 563
    :goto_1f
    move v4, v2

    :goto_20
    if-ge v4, v3, :cond_66

    .line 564
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 565
    const-string v6, "feature:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_48

    .line 567
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_44

    .line 569
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget v5, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    :cond_44
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_63

    .line 574
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reqGlEsVersion=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 575
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 578
    :cond_66
    return v2
.end method

.method private runListInstrumentation()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 583
    nop

    .line 584
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 588
    :goto_8
    const/4 v4, -0x1

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 589
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x5d9

    if-eq v6, v7, :cond_18

    :cond_17
    goto :goto_22

    :cond_18
    const-string v6, "-f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v1

    goto :goto_23

    :goto_22
    move v6, v4

    :goto_23
    if-eqz v6, :cond_44

    .line 594
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_2f

    .line 595
    move-object v2, v5

    goto :goto_46

    .line 597
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_43} :catch_9f

    .line 598
    return v4

    .line 591
    :cond_44
    nop

    .line 592
    const/4 v3, 0x1

    .line 600
    :goto_46
    goto :goto_8

    .line 606
    :cond_47
    nop

    .line 608
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 609
    invoke-interface {v4, v2, v1}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 612
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 618
    if-eqz v2, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_62

    :cond_61
    move v4, v1

    .line 619
    :goto_62
    move v5, v1

    :goto_63
    if-ge v5, v4, :cond_9e

    .line 620
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/InstrumentationInfo;

    .line 621
    const-string v7, "instrumentation:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    if-eqz v3, :cond_7c

    .line 623
    iget-object v7, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    :cond_7c
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const-string v7, " (target="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 632
    :cond_9e
    return v1

    .line 603
    :catch_9f
    move-exception v1

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return v4
.end method

.method private runListLibraries()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 639
    const/4 v3, 0x0

    move v4, v3

    :goto_11
    array-length v5, v2

    if-ge v4, v5, :cond_1c

    .line 640
    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 644
    :cond_1c
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 653
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 654
    move v4, v3

    :goto_29
    if-ge v4, v2, :cond_3c

    .line 655
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 656
    const-string v6, "library:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 659
    :cond_3c
    return v3
.end method

.method private runListPackages(Z)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 664
    nop

    .line 665
    nop

    .line 666
    nop

    .line 667
    nop

    .line 668
    nop

    .line 669
    nop

    .line 670
    nop

    .line 671
    nop

    .line 672
    move/from16 v12, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 675
    :goto_1b
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    if-eqz v3, :cond_12d

    .line 676
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_23c

    :cond_2a
    goto/16 :goto_c3

    :sswitch_2c
    const-string v2, "--apex-only"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xb

    goto/16 :goto_c4

    :sswitch_38
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xc

    goto/16 :goto_c4

    :sswitch_44
    const-string v2, "--uid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xd

    goto/16 :goto_c4

    :sswitch_50
    const-string v2, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x8

    goto/16 :goto_c4

    :sswitch_5c
    const-string v2, "-s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x6

    goto :goto_c4

    :sswitch_66
    const-string v2, "-l"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x5

    goto :goto_c4

    :sswitch_70
    const-string v2, "-i"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x4

    goto :goto_c4

    :sswitch_7a
    const-string v2, "-f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x3

    goto :goto_c4

    :sswitch_84
    const-string v2, "-e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move/from16 v2, v16

    goto :goto_c4

    :sswitch_8f
    const-string v2, "-d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    goto :goto_c4

    :sswitch_99
    const-string v2, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x2

    goto :goto_c4

    :sswitch_a3
    const-string v2, "-U"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x7

    goto :goto_c4

    :sswitch_ad
    const-string v2, "-3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x9

    goto :goto_c4

    :sswitch_b8
    const-string v2, "--show-versioncode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xa

    goto :goto_c4

    :goto_c3
    const/4 v2, -0x1

    :goto_c4
    packed-switch v2, :pswitch_data_276

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_119

    .line 719
    :pswitch_cb  #0xd
    nop

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 721
    move v6, v2

    move/from16 v14, v16

    goto :goto_117

    .line 716
    :pswitch_d8  #0xc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 717
    move v5, v2

    goto :goto_117

    .line 712
    :pswitch_e2  #0xb
    const/high16 v2, 0x40000000  # 2.0f

    or-int/2addr v2, v4

    .line 713
    nop

    .line 714
    move v4, v2

    move/from16 v11, v16

    goto :goto_117

    .line 709
    :pswitch_ea  #0xa
    nop

    .line 710
    move/from16 v13, v16

    goto :goto_117

    .line 706
    :pswitch_ee  #0x9
    nop

    .line 707
    move/from16 v10, v16

    goto :goto_117

    .line 703
    :pswitch_f2  #0x8
    or-int/lit16 v2, v4, 0x2000

    .line 704
    move v4, v2

    goto :goto_117

    .line 700
    :pswitch_f6  #0x7
    nop

    .line 701
    move/from16 v14, v16

    goto :goto_117

    .line 697
    :pswitch_fa  #0x6
    nop

    .line 698
    move/from16 v9, v16

    goto :goto_117

    .line 695
    :pswitch_fe  #0x5
    goto :goto_117

    .line 691
    :pswitch_ff  #0x4
    nop

    .line 692
    move/from16 v15, v16

    goto :goto_117

    .line 688
    :pswitch_103  #0x3
    nop

    .line 689
    move/from16 v12, v16

    goto :goto_117

    .line 684
    :pswitch_107  #0x2
    const v2, 0x402000

    or-int/2addr v2, v4

    .line 685
    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    .line 686
    move v4, v2

    goto :goto_117

    .line 681
    :pswitch_110  #0x1
    nop

    .line 682
    move/from16 v8, v16

    goto :goto_117

    .line 678
    :pswitch_114  #0x0
    nop

    .line 679
    move/from16 v7, v16

    .line 724
    :goto_117
    goto/16 :goto_1b

    .line 723
    :goto_119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_12b} :catch_220

    .line 724
    const/4 v1, -0x1

    return v1

    .line 730
    :cond_12d
    nop

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 735
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 736
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 737
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 739
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 740
    const/4 v5, 0x0

    :goto_141
    if-ge v5, v4, :cond_21e

    .line 741
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p1, v3

    move-object/from16 v3, v18

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 742
    if-eqz v2, :cond_161

    move/from16 v18, v4

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_163

    .line 743
    move-object/from16 v19, v2

    move/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_210

    .line 742
    :cond_161
    move/from16 v18, v4

    .line 745
    :cond_163
    iget-boolean v4, v3, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 746
    move-object/from16 v19, v2

    const/4 v2, -0x1

    if-eq v6, v2, :cond_178

    if-nez v4, :cond_178

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v6, :cond_178

    .line 747
    move/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_210

    .line 750
    :cond_178
    if-nez v4, :cond_185

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_185

    move/from16 v2, v16

    goto :goto_186

    :cond_185
    const/4 v2, 0x0

    .line 752
    :goto_186
    if-nez v4, :cond_193

    move/from16 v20, v6

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_195

    move/from16 v6, v16

    goto :goto_196

    :cond_193
    move/from16 v20, v6

    :cond_195
    const/4 v6, 0x0

    .line 753
    :goto_196
    if-eqz v7, :cond_19f

    if-nez v6, :cond_19b

    goto :goto_19f

    :cond_19b
    move/from16 v21, v7

    goto/16 :goto_210

    :cond_19f
    :goto_19f
    if-eqz v8, :cond_1a3

    if-eqz v6, :cond_19b

    :cond_1a3
    if-eqz v9, :cond_1a7

    if-eqz v2, :cond_19b

    :cond_1a7
    if-eqz v10, :cond_1ab

    if-nez v2, :cond_19b

    :cond_1ab
    if-eqz v11, :cond_1af

    if-eqz v4, :cond_19b

    .line 758
    :cond_1af
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    if-eqz v12, :cond_1c5

    if-nez v4, :cond_1c5

    .line 760
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    :cond_1c5
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    if-eqz v13, :cond_1e9

    .line 765
    const-string v2, " versionCode:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1df

    .line 767
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v21, v7

    iget-wide v6, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_1eb

    .line 769
    :cond_1df
    move/from16 v21, v7

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_1eb

    .line 764
    :cond_1e9
    move/from16 v21, v7

    .line 772
    :goto_1eb
    if-eqz v15, :cond_1fd

    .line 773
    const-string v2, "  installer="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    :cond_1fd
    if-eqz v14, :cond_20d

    if-nez v4, :cond_20d

    .line 777
    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 780
    :cond_20d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 740
    :goto_210
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p1

    move/from16 v4, v18

    move-object/from16 v2, v19

    move/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_141

    .line 783
    :cond_21e
    const/4 v0, 0x0

    return v0

    .line 727
    :catch_220
    move-exception v0

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    const/4 v1, -0x1

    return v1

    nop

    :sswitch_data_23c
    .sparse-switch
        -0x1d6f426b -> :sswitch_b8
        0x5a6 -> :sswitch_ad
        0x5c8 -> :sswitch_a3
        0x5d4 -> :sswitch_99
        0x5d7 -> :sswitch_8f
        0x5d8 -> :sswitch_84
        0x5d9 -> :sswitch_7a
        0x5dc -> :sswitch_70
        0x5df -> :sswitch_66
        0x5e6 -> :sswitch_5c
        0x5e8 -> :sswitch_50
        0x2905ab0 -> :sswitch_44
        0x4f7b216b -> :sswitch_38
        0x6bd72bd7 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_114  #00000000
        :pswitch_110  #00000001
        :pswitch_107  #00000002
        :pswitch_103  #00000003
        :pswitch_ff  #00000004
        :pswitch_fe  #00000005
        :pswitch_fa  #00000006
        :pswitch_f6  #00000007
        :pswitch_f2  #00000008
        :pswitch_ee  #00000009
        :pswitch_ea  #0000000a
        :pswitch_e2  #0000000b
        :pswitch_d8  #0000000c
        :pswitch_cb  #0000000d
    .end packed-switch
.end method

.method private runListPermissionGroups()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 790
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 791
    move v4, v2

    :goto_14
    if-ge v4, v3, :cond_2a

    .line 792
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 793
    const-string/jumbo v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 796
    :cond_2a
    return v2
.end method

.method private runListPermissions()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 801
    nop

    .line 802
    nop

    .line 803
    nop

    .line 804
    nop

    .line 805
    const/4 v1, 0x0

    move v2, v1

    move v9, v2

    move v10, v9

    move v11, v10

    move v12, v11

    .line 807
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 808
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x5d7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v5, v6, :cond_5a

    const/16 v6, 0x5e6

    if-eq v5, v6, :cond_50

    const/16 v6, 0x5e8

    if-eq v5, v6, :cond_46

    const/16 v6, 0x5d9

    if-eq v5, v6, :cond_3c

    const/16 v6, 0x5da

    if-eq v5, v6, :cond_32

    :cond_31
    goto :goto_63

    :cond_32
    const-string v5, "-g"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v4, v13

    goto :goto_63

    :cond_3c
    const-string v5, "-f"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v4, v14

    goto :goto_63

    :cond_46
    const-string v5, "-u"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v4, v7

    goto :goto_63

    :cond_50
    const-string v5, "-s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v4, v8

    goto :goto_63

    :cond_5a
    const-string v5, "-d"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v4, v1

    :goto_63
    if-eqz v4, :cond_92

    if-eq v4, v14, :cond_8f

    if-eq v4, v13, :cond_8c

    if-eq v4, v8, :cond_85

    if-eq v4, v7, :cond_82

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    return v14

    .line 824
    :cond_82
    nop

    .line 825
    move v10, v14

    goto :goto_94

    .line 819
    :cond_85
    nop

    .line 820
    nop

    .line 821
    nop

    .line 822
    move v9, v14

    move v11, v9

    move v12, v11

    goto :goto_94

    .line 816
    :cond_8c
    nop

    .line 817
    move v9, v14

    goto :goto_94

    .line 813
    :cond_8f
    nop

    .line 814
    move v12, v14

    goto :goto_94

    .line 810
    :cond_92
    nop

    .line 811
    move v2, v14

    .line 828
    :goto_94
    goto/16 :goto_e

    .line 832
    :cond_96
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 833
    if-eqz v9, :cond_c1

    .line 834
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 835
    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 836
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 837
    move v5, v1

    :goto_ac
    if-ge v5, v4, :cond_bc

    .line 838
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 840
    :cond_bc
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    goto :goto_c8

    .line 842
    :cond_c1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :goto_c8
    const-string v14, ""

    if-eqz v2, :cond_f3

    .line 847
    const-string v2, "Dangerous Permissions:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v12

    move v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 852
    if-eqz v10, :cond_11c

    .line 853
    const-string v2, "Normal Permissions:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v12

    move v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_11c

    .line 859
    :cond_f3
    if-eqz v10, :cond_108

    .line 860
    const-string v2, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v12

    move v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_11c

    .line 866
    :cond_108
    const-string v2, "All Permissions:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    const/16 v7, -0x2710

    const/16 v8, 0x2710

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v12

    move v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 871
    :cond_11c
    :goto_11c
    return v1
.end method

.method private runPath()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    nop

    .line 504
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_18

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 506
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    .line 509
    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 510
    if-nez v1, :cond_2a

    .line 511
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_2a
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private runQueryIntentActivities()I
    .registers 12

    .line 956
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_95

    .line 959
    nop

    .line 961
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 964
    const/4 v2, 0x0

    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_85

    .line 967
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_64

    .line 968
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " activities found:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 970
    move v10, v2

    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_63

    .line 971
    const-string v4, "  Activity #"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    const-string v6, "    "

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 970
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 974
    :cond_63
    goto :goto_8a

    .line 975
    :cond_64
    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 976
    move v1, v2

    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8a

    .line 977
    const-string v5, ""

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 965
    :cond_85
    :goto_85
    const-string v0, "No activities found"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8a} :catch_8c

    .line 983
    :cond_8a
    :goto_8a
    nop

    .line 984
    return v2

    .line 981
    :catch_8c
    move-exception v0

    .line 982
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed calling service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 957
    :catch_95
    move-exception v0

    .line 958
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentReceivers()I
    .registers 12

    .line 1024
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_95

    .line 1027
    nop

    .line 1029
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1032
    const/4 v2, 0x0

    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_85

    .line 1035
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_64

    .line 1036
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " receivers found:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1038
    move v10, v2

    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_63

    .line 1039
    const-string v4, "  Receiver #"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    const-string v6, "    "

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1038
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1042
    :cond_63
    goto :goto_8a

    .line 1043
    :cond_64
    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1044
    move v1, v2

    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8a

    .line 1045
    const-string v5, ""

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 1033
    :cond_85
    :goto_85
    const-string v0, "No receivers found"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8a} :catch_8c

    .line 1051
    :cond_8a
    :goto_8a
    nop

    .line 1052
    return v2

    .line 1049
    :catch_8c
    move-exception v0

    .line 1050
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed calling service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1025
    :catch_95
    move-exception v0

    .line 1026
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentServices()I
    .registers 12

    .line 990
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_95

    .line 993
    nop

    .line 995
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 997
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 998
    const/4 v2, 0x0

    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_85

    .line 1001
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_64

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " services found:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1004
    move v10, v2

    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_63

    .line 1005
    const-string v4, "  Service #"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    const-string v6, "    "

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1004
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1008
    :cond_63
    goto :goto_8a

    .line 1009
    :cond_64
    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1010
    move v1, v2

    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8a

    .line 1011
    const-string v5, ""

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 999
    :cond_85
    :goto_85
    const-string v0, "No services found"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8a} :catch_8c

    .line 1017
    :cond_8a
    :goto_8a
    nop

    .line 1018
    return v2

    .line 1015
    :catch_8c
    move-exception v0

    .line 1016
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed calling service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 991
    :catch_95
    move-exception v0

    .line 992
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1721
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 1722
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1723
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1724
    nop

    .line 1725
    const/4 p1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p1

    .line 1726
    nop

    .line 1728
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1b
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result p2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_43

    if-eqz p2, :cond_29

    .line 1730
    nop

    .line 1740
    nop

    .line 1742
    :try_start_23
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    .line 1744
    goto :goto_28

    .line 1743
    :catch_27
    move-exception p1

    .line 1730
    :goto_28
    return v1

    .line 1732
    :cond_29
    :try_start_29
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result p2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_43

    if-eqz p2, :cond_37

    .line 1734
    nop

    .line 1740
    nop

    .line 1742
    :try_start_31
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    .line 1744
    goto :goto_36

    .line 1743
    :catch_35
    move-exception p1

    .line 1734
    :goto_36
    return v1

    .line 1736
    :cond_37
    nop

    .line 1737
    :try_start_38
    const-string p2, "Success"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_40

    .line 1738
    nop

    .line 1740
    nop

    .line 1738
    return v2

    .line 1740
    :catchall_40
    move-exception p2

    move v1, v2

    goto :goto_44

    :catchall_43
    move-exception p2

    :goto_44
    if-eqz v1, :cond_4b

    .line 1742
    :try_start_46
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    .line 1744
    goto :goto_4b

    .line 1743
    :catch_4a
    move-exception p1

    .line 1744
    :cond_4b
    :goto_4b
    throw p2
.end method

.method private runResetPermissions()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->resetRuntimePermissions()V

    .line 1964
    const/4 v0, 0x0

    return v0
.end method

.method private runResolveActivity()I
    .registers 12

    .line 933
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_3a

    .line 936
    nop

    .line 938
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 940
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 941
    if-nez v8, :cond_1f

    .line 942
    const-string v1, "No activity found"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 944
    :cond_1f
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 945
    const-string v7, ""

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2e} :catch_31

    .line 949
    :goto_2e
    nop

    .line 950
    const/4 v0, 0x0

    return v0

    .line 947
    :catch_31
    move-exception v0

    .line 948
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed calling service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 934
    :catch_3a
    move-exception v0

    .line 935
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRollbackApp()I
    .registers 11

    .line 408
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 411
    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 412
    const-string v1, "Error: package name not specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return v2

    .line 416
    :cond_11
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 418
    :try_start_17
    const-string/jumbo v5, "rollback"

    .line 419
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 418
    invoke-static {v5}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v5

    .line 421
    nop

    .line 422
    invoke-interface {v5}, Landroid/content/rollback/IRollbackManager;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/RollbackInfo;

    .line 423
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    .line 424
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 425
    nop

    .line 426
    move-object v4, v7

    goto :goto_5d

    .line 428
    :cond_5c
    goto :goto_43

    .line 429
    :cond_5d
    :goto_5d
    goto :goto_2f

    .line 431
    :cond_5e
    if-nez v4, :cond_75

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No available rollbacks for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    return v2

    .line 436
    :cond_75
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    .line 437
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    const-string v6, "com.android.shell"

    .line 438
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    .line 436
    invoke-interface {v5, v1, v4, v6, v7}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_86} :catch_87

    .line 441
    goto :goto_88

    .line 439
    :catch_87
    move-exception v1

    .line 443
    :goto_88
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v1

    .line 444
    const-string v3, "android.content.rollback.extra.STATUS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 446
    if-nez v3, :cond_9b

    .line 447
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v4, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    return v2
.end method

.method private runSetAppLink()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    const/4 v0, 0x0

    move v1, v0

    .line 2091
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    .line 2092
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2093
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 2095
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    return v3

    .line 2101
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2102
    if-nez v2, :cond_43

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    return v3

    .line 2108
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2109
    if-nez v4, :cond_53

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no app link state specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2111
    return v3

    .line 2115
    :cond_53
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v7, :sswitch_data_138

    :cond_62
    goto :goto_96

    :sswitch_63
    const-string v7, "always-ask"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v6, v9

    goto :goto_96

    :sswitch_6d
    const-string/jumbo v7, "never"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v6, v8

    goto :goto_96

    :sswitch_78
    const-string v7, "ask"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v6, v10

    goto :goto_96

    :sswitch_82
    const-string/jumbo v7, "undefined"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v6, v0

    goto :goto_96

    :sswitch_8d
    const-string v7, "always"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v6, v3

    :goto_96
    if-eqz v6, :cond_c9

    if-eq v6, v3, :cond_c6

    if-eq v6, v10, :cond_c3

    if-eq v6, v9, :cond_c1

    if-eq v6, v8, :cond_be

    .line 2137
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown app link state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    return v3

    .line 2133
    :cond_be
    nop

    .line 2134
    move v8, v9

    goto :goto_cb

    .line 2129
    :cond_c1
    nop

    .line 2130
    goto :goto_cb

    .line 2125
    :cond_c3
    nop

    .line 2126
    move v8, v3

    goto :goto_cb

    .line 2121
    :cond_c6
    nop

    .line 2122
    move v8, v10

    goto :goto_cb

    .line 2117
    :cond_c9
    nop

    .line 2118
    move v8, v0

    .line 2141
    :goto_cb
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2142
    const-string v5, "Error: package "

    if-nez v4, :cond_f1

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    return v3

    .line 2147
    :cond_f1
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_115

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not handle web links."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    return v3

    .line 2152
    :cond_115
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, v8, v1}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_136

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unable to update app link status for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    return v3

    .line 2157
    :cond_136
    return v0

    nop

    :sswitch_data_138
    .sparse-switch
        -0x54506df1 -> :sswitch_8d
        -0x3de09eb0 -> :sswitch_82
        0x17a79 -> :sswitch_78
        0x63dca8c -> :sswitch_6d
        0x467fe1bb -> :sswitch_63
    .end sparse-switch
.end method

.method private runSetEnabledSetting(I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    nop

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 1815
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    .line 1819
    :cond_19
    move v0, v1

    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 1820
    if-nez v8, :cond_2b

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: no package or component specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    const/4 p1, 0x1

    return p1

    .line 1824
    :cond_2b
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1825
    const-string v9, " new state: "

    if-nez v2, :cond_7b

    .line 1826
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1826
    move-object v3, v8

    move v4, p1

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1830
    invoke-interface {v3, v8, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    .line 1829
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    return v1

    .line 1833
    :cond_7b
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1836
    invoke-interface {v4, v2, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1835
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1834
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    return v1
.end method

.method private runSetHarmfulAppWarning()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2627
    const/4 v0, -0x2

    .line 2630
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2631
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2634
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    const/4 v0, -0x1

    return v0

    .line 2639
    :cond_32
    const/4 v1, 0x0

    const-string/jumbo v2, "runSetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2641
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2644
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, v3, v0}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2646
    return v1
.end method

.method private runSetHiddenSetting(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1842
    nop

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 1844
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    .line 1848
    :cond_19
    move v0, v1

    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1849
    if-nez v2, :cond_2b

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: no package or component specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    const/4 p1, 0x1

    return p1

    .line 1853
    :cond_2b
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new hidden state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1855
    invoke-interface {v4, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    return v1
.end method

.method private runSetHomeActivity()I
    .registers 11

    .line 2514
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2515
    const/4 v1, 0x0

    move v6, v1

    .line 2517
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    if-eqz v2, :cond_42

    .line 2518
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x4f7b216b

    if-eq v4, v5, :cond_18

    :cond_17
    goto :goto_21

    :cond_18
    const-string v4, "--user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v3, v1

    :goto_21
    if-eqz v3, :cond_38

    .line 2523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    return v8

    .line 2520
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v6

    .line 2521
    nop

    .line 2524
    goto :goto_6

    .line 2529
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2530
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_50

    .line 2532
    move-object v4, v2

    goto :goto_61

    .line 2535
    :cond_50
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2536
    if-nez v2, :cond_5c

    .line 2537
    const-string v1, "Error: invalid component name"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    return v8

    .line 2540
    :cond_5c
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 2544
    :goto_61
    new-instance v9, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2545
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;

    invoke-direct {v2, v9}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v7, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 2547
    :try_start_70
    const-string/jumbo v2, "role"

    .line 2548
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2547
    invoke-static {v2}, Landroid/app/role/IRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleManager;

    move-result-object v2

    .line 2549
    const-string v3, "android.app.role.HOME"

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/app/role/IRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 2551
    invoke-virtual {v9}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2552
    if-eqz v2, :cond_93

    .line 2553
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    return v1

    .line 2556
    :cond_93
    const-string v1, "Error: Failed to set default home."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_98} :catch_99

    .line 2557
    return v8

    .line 2559
    :catch_99
    move-exception v1

    .line 2560
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    return v8
.end method

.method private runSetInstallLocation()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1231
    const-string v0, "Error: install location has to be a number."

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1232
    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no install location specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    return v2

    .line 1237
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_2a

    .line 1241
    nop

    .line 1242
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    return v2

    .line 1246
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 1238
    :catch_2a
    move-exception v1

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    return v2
.end method

.method private runSetInstaller()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2566
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2567
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2569
    if-eqz v0, :cond_1d

    if-nez v1, :cond_d

    goto :goto_1d

    .line 2574
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    const/4 v0, 0x0

    return v0

    .line 2570
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Must provide both target and installer package names"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    const/4 v0, 0x1

    return v0
.end method

.method private runSetPermissionEnforced()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1969
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no permission specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    return v1

    .line 1973
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1974
    if-nez v2, :cond_21

    .line 1975
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no enforcement specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    return v1

    .line 1978
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1979
    const/4 v0, 0x0

    return v0
.end method

.method private runSnapshotProfile()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1526
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1527
    const-string v1, "android"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1529
    const/4 v9, 0x0

    move-object v1, v9

    .line 1531
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eqz v2, :cond_51

    .line 1532
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x28d32d9b

    if-eq v1, v3, :cond_22

    :cond_21
    goto :goto_2b

    :cond_22
    const-string v1, "--code-path"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_2c

    :goto_2b
    move v10, v11

    :goto_2c
    if-eqz v10, :cond_43

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown arg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1542
    return v11

    .line 1534
    :cond_43
    if-eqz v8, :cond_4b

    .line 1535
    const-string v1, "--code-path cannot be used for the boot image."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1536
    return v11

    .line 1538
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1539
    nop

    .line 1542
    goto :goto_10

    .line 1547
    :cond_51
    nop

    .line 1548
    if-nez v8, :cond_7f

    .line 1549
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v7, v10, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1551
    if-nez v2, :cond_71

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1553
    return v11

    .line 1555
    :cond_71
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 1556
    if-nez v1, :cond_7c

    .line 1557
    move-object v12, v2

    move-object v13, v12

    goto :goto_81

    .line 1556
    :cond_7c
    move-object v12, v1

    move-object v13, v2

    goto :goto_81

    .line 1548
    :cond_7f
    move-object v12, v1

    move-object v13, v9

    .line 1562
    :goto_81
    new-instance v14, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    invoke-direct {v14, v9}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-nez v1, :cond_90

    .line 1565
    const-string/jumbo v1, "root"

    goto :goto_92

    :cond_90
    const-string v1, "com.android.shell"

    :goto_92
    move-object v6, v1

    .line 1566
    if-eqz v8, :cond_98

    .line 1567
    const/4 v1, 0x1

    move v2, v1

    goto :goto_99

    :cond_98
    move v2, v10

    .line 1568
    :goto_99
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v1

    invoke-interface {v1, v2, v6}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 1569
    const-string v1, "Error: Runtime profiling is not enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    return v11

    .line 1572
    :cond_ab
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v1

    move-object v3, v7

    move-object v4, v12

    move-object v5, v14

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v1

    if-nez v1, :cond_c7

    .line 1575
    const-string v1, "Error: callback not called"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$200(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    .line 1580
    :cond_c7
    :try_start_c7
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v14}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d0} :catch_132
    .catch Landroid/system/ErrnoException; {:try_start_c7 .. :try_end_d0} :catch_132

    .line 1581
    if-nez v8, :cond_f4

    :try_start_d2
    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    goto :goto_f4

    .line 1582
    :cond_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f6

    :cond_f4
    :goto_f4
    const-string v2, ""

    .line 1583
    :goto_f6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/misc/profman/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".prof"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1585
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_114
    .catchall {:try_start_d2 .. :try_end_114} :catchall_12b

    .line 1586
    :try_start_114
    invoke-static {v1, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_124

    .line 1587
    :try_start_117
    invoke-static {v9, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1589
    const/16 v3, 0x1a4

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_11f
    .catchall {:try_start_117 .. :try_end_11f} :catchall_12b

    .line 1590
    :try_start_11f
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_132
    .catch Landroid/system/ErrnoException; {:try_start_11f .. :try_end_122} :catch_132

    .line 1594
    nop

    .line 1595
    return v10

    .line 1585
    :catchall_124
    move-exception v2

    :try_start_125
    throw v2
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_126

    .line 1587
    :catchall_126
    move-exception v4

    :try_start_127
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_12b
    .catchall {:try_start_127 .. :try_end_12b} :catchall_12b

    .line 1580
    :catchall_12b
    move-exception v2

    :try_start_12c
    throw v2
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12d

    .line 1590
    :catchall_12d
    move-exception v3

    :try_start_12e
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_132} :catch_132
    .catch Landroid/system/ErrnoException; {:try_start_12e .. :try_end_132} :catch_132

    :catch_132
    move-exception v1

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when reading the profile fd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1593
    return v11
.end method

.method private runSuspend(Z)I
    .registers 15

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1861
    nop

    .line 1862
    nop

    .line 1863
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 1864
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v10, v9

    .line 1866
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    if-eqz v3, :cond_e0

    .line 1867
    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    sparse-switch v7, :sswitch_data_146

    :cond_24
    goto :goto_74

    :sswitch_25
    const-string v7, "--user"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v6, v9

    goto :goto_74

    :sswitch_2f
    const-string v7, "--les"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v6, 0x6

    goto :goto_74

    :sswitch_39
    const-string v7, "--lel"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v6, 0x5

    goto :goto_74

    :sswitch_43
    const-string v7, "--led"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v6, 0x7

    goto :goto_74

    :sswitch_4d
    const-string v7, "--aes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v6, 0x3

    goto :goto_74

    :sswitch_57
    const-string v7, "--ael"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v6, 0x2

    goto :goto_74

    :sswitch_61
    const-string v7, "--aed"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v6, v8

    goto :goto_74

    :sswitch_6b
    const-string v7, "--dialogMessage"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v6, v11

    :goto_74
    packed-switch v6, :pswitch_data_168

    .line 1900
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    return v11

    .line 1880
    :pswitch_8c  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1881
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 1882
    if-nez p1, :cond_97

    .line 1883
    goto :goto_de

    .line 1886
    :cond_97
    const-string v11, "--a"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a1

    move-object v11, v4

    goto :goto_a2

    :cond_a1
    move-object v11, v5

    .line 1887
    :goto_a2
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x64

    if-eq v3, v8, :cond_c3

    const/16 v8, 0x6c

    if-eq v3, v8, :cond_b7

    const/16 v8, 0x73

    if-eq v3, v8, :cond_b3

    goto :goto_cf

    .line 1895
    :cond_b3
    invoke-virtual {v11, v6, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cf

    .line 1889
    :cond_b7
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v11, v6, v7, v8}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 1890
    goto :goto_cf

    .line 1892
    :cond_c3
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v11, v6, v7, v8}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 1893
    nop

    .line 1898
    :goto_cf
    goto :goto_de

    .line 1872
    :pswitch_d0  #0x1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1873
    goto :goto_de

    .line 1869
    :pswitch_d5  #0x0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    .line 1870
    nop

    .line 1901
    :goto_de
    goto/16 :goto_14

    .line 1905
    :cond_e0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 1906
    if-nez v12, :cond_ec

    .line 1907
    const-string p1, "Error: package name not specified"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    return v11

    .line 1911
    :cond_ec
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-nez v3, :cond_f6

    const-string/jumbo v3, "root"

    goto :goto_f8

    :cond_f6
    const-string v3, "com.android.shell"

    :goto_f8
    move-object v7, v3

    .line 1914
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10e

    .line 1915
    new-instance v1, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1916
    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v1

    .line 1917
    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    move-object v6, v1

    goto :goto_10f

    .line 1919
    :cond_10e
    move-object v6, v1

    .line 1922
    :goto_10f
    :try_start_10f
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v2, v11, [Ljava/lang/String;

    aput-object v12, v2, v9

    move v3, p1

    move v8, v10

    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    .line 1924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new suspended state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1925
    invoke-interface {v1, v12, v10}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1924
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_13c} :catch_13d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10f .. :try_end_13c} :catch_13d

    .line 1926
    return v9

    .line 1927
    :catch_13d
    move-exception p1

    .line 1928
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    return v11

    :sswitch_data_146
    .sparse-switch
        -0x25a4801 -> :sswitch_6b
        0x2900f20 -> :sswitch_61
        0x2900f28 -> :sswitch_57
        0x2900f2f -> :sswitch_4d
        0x290386b -> :sswitch_43
        0x2903873 -> :sswitch_39
        0x290387a -> :sswitch_2f
        0x4f7b216b -> :sswitch_25
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_d5  #00000000
        :pswitch_d0  #00000001
        :pswitch_8c  #00000002
        :pswitch_8c  #00000003
        :pswitch_8c  #00000004
        :pswitch_8c  #00000005
        :pswitch_8c  #00000006
        :pswitch_8c  #00000007
    .end packed-switch
.end method

.method private runTrimCaches()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2201
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no size specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    return v1

    .line 2205
    :cond_11
    const-wide/16 v2, 0x1

    .line 2206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2207
    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2208
    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_25

    const/16 v6, 0x39

    if-le v5, v6, :cond_67

    .line 2209
    :cond_25
    const/16 v2, 0x4b

    if-eq v5, v2, :cond_61

    const/16 v2, 0x6b

    if-ne v5, v2, :cond_2e

    goto :goto_61

    .line 2211
    :cond_2e
    const/16 v2, 0x4d

    if-eq v5, v2, :cond_5d

    const/16 v2, 0x6d

    if-ne v5, v2, :cond_37

    goto :goto_5d

    .line 2213
    :cond_37
    const/16 v2, 0x47

    if-eq v5, v2, :cond_59

    const/16 v2, 0x67

    if-ne v5, v2, :cond_40

    goto :goto_59

    .line 2216
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid suffix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    return v1

    .line 2214
    :cond_59
    :goto_59
    const-wide/32 v2, 0x40000000

    goto :goto_63

    .line 2212
    :cond_5d
    :goto_5d
    const-wide/32 v2, 0x100000

    goto :goto_63

    .line 2210
    :cond_61
    :goto_61
    const-wide/16 v2, 0x400

    .line 2219
    :goto_63
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2223
    :cond_67
    :try_start_67
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6b} :catch_9a

    mul-long v10, v0, v2

    .line 2227
    nop

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2229
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2230
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_7e

    .line 2229
    :cond_7d
    move-object v9, v0

    .line 2232
    :goto_7e
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 2233
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v12, 0x2

    move-object v13, v2

    invoke-interface/range {v8 .. v13}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2235
    monitor-enter v2

    .line 2236
    :goto_8b
    :try_start_8b
    iget-boolean v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_97

    if-nez v0, :cond_95

    .line 2238
    :try_start_8f
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_97

    .line 2240
    :goto_92
    goto :goto_8b

    .line 2239
    :catch_93
    move-exception v0

    goto :goto_92

    .line 2242
    :cond_95
    :try_start_95
    monitor-exit v2

    .line 2243
    return v7

    .line 2242
    :catchall_97
    move-exception v0

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_97

    throw v0

    .line 2224
    :catch_9a
    move-exception v2

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: expected number at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    return v1
.end method

.method private runUninstall()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1640
    nop

    .line 1641
    nop

    .line 1642
    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-wide v8, v4

    move v4, v2

    move v5, v3

    .line 1645
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    if-eqz v6, :cond_7b

    .line 1646
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v10, 0x5de

    const/4 v11, 0x2

    if-eq v7, v10, :cond_3e

    const v10, 0x4f7b216b

    if-eq v7, v10, :cond_34

    const v10, 0x704d4945

    if-eq v7, v10, :cond_2a

    :cond_29
    goto :goto_48

    :cond_2a
    const-string v7, "--versionCode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    move v7, v11

    goto :goto_49

    :cond_34
    const-string v7, "--user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    move v7, v12

    goto :goto_49

    :cond_3e
    const-string v7, "-k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    move v7, v3

    goto :goto_49

    :goto_48
    move v7, v2

    :goto_49
    if-eqz v7, :cond_77

    if-eq v7, v12, :cond_6e

    if-eq v7, v11, :cond_64

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    return v12

    .line 1654
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1655
    move-wide v8, v6

    goto :goto_7a

    .line 1651
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    .line 1652
    goto :goto_7a

    .line 1648
    :cond_77
    or-int/lit8 v5, v5, 0x1

    .line 1649
    nop

    .line 1658
    :goto_7a
    goto :goto_f

    .line 1662
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1663
    if-nez v7, :cond_87

    .line 1664
    const-string v0, "Error: package name not specified"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    return v12

    .line 1669
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 1670
    if-eqz v6, :cond_92

    .line 1671
    invoke-direct {v0, v7, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1674
    :cond_92
    const-string/jumbo v6, "runUninstall"

    invoke-direct {v0, v4, v12, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v10

    .line 1675
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1676
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 1678
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v11

    const-string v13, "]"

    if-eqz v11, :cond_b7

    .line 1679
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;)V

    goto :goto_10e

    .line 1681
    :cond_b7
    if-ne v10, v2, :cond_c1

    .line 1682
    nop

    .line 1683
    or-int/lit8 v5, v5, 0x2

    move/from16 v19, v3

    move/from16 v17, v5

    goto :goto_fa

    .line 1685
    :cond_c1
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v6, 0x4000000

    invoke-interface {v2, v7, v6, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1687
    if-nez v2, :cond_e3

    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure [not installed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    return v12

    .line 1691
    :cond_e3
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v12

    if-eqz v2, :cond_ec

    move v2, v12

    goto :goto_ed

    :cond_ec
    move v2, v3

    .line 1696
    :goto_ed
    if-eqz v2, :cond_f6

    .line 1697
    or-int/lit8 v5, v5, 0x4

    move/from16 v17, v5

    move/from16 v19, v10

    goto :goto_fa

    .line 1696
    :cond_f6
    move/from16 v17, v5

    move/from16 v19, v10

    .line 1701
    :goto_fa
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v14

    new-instance v15, Landroid/content/pm/VersionedPackage;

    invoke-direct {v15, v7, v8, v9}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v16, 0x0

    .line 1703
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v18

    .line 1701
    invoke-interface/range {v14 .. v19}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 1706
    :goto_10e
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    .line 1707
    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1709
    if-nez v2, :cond_120

    .line 1710
    const-string v0, "Success"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    return v3

    .line 1713
    :cond_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    return v12
.end method

.method private runreconcileSecondaryDexFiles()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1495
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1496
    const/4 v0, 0x0

    return v0
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V
    .registers 16

    .line 457
    const-string v0, "Error: Failed to parse APK file: "

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_ab

    const-string v1, "-"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 458
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_7e

    .line 464
    :try_start_1d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v6

    .line 465
    new-instance v2, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 467
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 468
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 467
    invoke-static {v2, p1, v4}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_44
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1d .. :try_end_44} :catch_4c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_44} :catch_4c
    .catchall {:try_start_1d .. :try_end_44} :catchall_4a

    .line 475
    :try_start_44
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 477
    goto :goto_ab

    .line 476
    :catch_48
    move-exception p1

    .line 478
    goto :goto_ab

    .line 474
    :catchall_4a
    move-exception p1

    goto :goto_78

    .line 469
    :catch_4c
    move-exception p1

    .line 470
    :try_start_4d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_78
    .catchall {:try_start_4d .. :try_end_78} :catchall_4a

    .line 475
    :goto_78
    :try_start_78
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 477
    goto :goto_7d

    .line 476
    :catch_7c
    move-exception p2

    .line 477
    :goto_7d
    throw p1

    .line 460
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Can\'t open file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_ab
    :goto_ab
    return-void
.end method

.method private translateUserId(IZLjava/lang/String;)I
    .registers 11

    .line 2694
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const-string/jumbo v6, "pm command"

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private uninstallSystemUpdates()I
    .registers 16

    .line 367
    const-string v0, "]"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 368
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 370
    const/4 v3, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0x100000

    .line 371
    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 373
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    .line 374
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 375
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    .line 376
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstalling updates to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v14, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v14, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 379
    new-instance v7, Landroid/content/pm/VersionedPackage;

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v13, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v7, v6, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 381
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    const/4 v11, 0x0

    .line 379
    move-object v6, v5

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 383
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v6

    .line 384
    const-string v7, "android.content.pm.extra.STATUS"

    invoke-virtual {v6, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 386
    if-eqz v6, :cond_7c

    .line 387
    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_7c} :catch_a8

    .line 390
    :cond_7c
    goto :goto_22

    .line 396
    :cond_7d
    nop

    .line 397
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure [Couldn\'t uninstall packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v5, ", "

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    return v3

    .line 403
    :cond_a2
    const-string v0, "Success"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    return v12

    .line 391
    :catch_a8
    move-exception v2

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    return v3
.end method


# virtual methods
.method public synthetic lambda$runGetOemPermissions$0$PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    .line 2069
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " granted:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 10

    .line 147
    if-nez p1, :cond_7

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 151
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 153
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_490

    :cond_18
    goto/16 :goto_30b

    :sswitch_1a
    const-string v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x7

    goto/16 :goto_30c

    :sswitch_25
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3d

    goto/16 :goto_30c

    :sswitch_31
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x15

    goto/16 :goto_30c

    :sswitch_3e
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xf

    goto/16 :goto_30c

    :sswitch_4b
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1f

    goto/16 :goto_30c

    :sswitch_57
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1d

    goto/16 :goto_30c

    :sswitch_63
    const-string v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xd

    goto/16 :goto_30c

    :sswitch_6f
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x34

    goto/16 :goto_30c

    :sswitch_7c
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2e

    goto/16 :goto_30c

    :sswitch_89
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x16

    goto/16 :goto_30c

    :sswitch_95
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v3

    goto/16 :goto_30c

    :sswitch_a1
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x14

    goto/16 :goto_30c

    :sswitch_ad
    const-string/jumbo v2, "set-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2c

    goto/16 :goto_30c

    :sswitch_ba
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x31

    goto/16 :goto_30c

    :sswitch_c7
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3b

    goto/16 :goto_30c

    :sswitch_d4
    const-string v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x9

    goto/16 :goto_30c

    :sswitch_e0
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x19

    goto/16 :goto_30c

    :sswitch_ed
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3c

    goto/16 :goto_30c

    :sswitch_fa
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x27

    goto/16 :goto_30c

    :sswitch_107
    const-string v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xc

    goto/16 :goto_30c

    :sswitch_113
    const-string v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x11

    goto/16 :goto_30c

    :sswitch_11f
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x39

    goto/16 :goto_30c

    :sswitch_12b
    const-string v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xe

    goto/16 :goto_30c

    :sswitch_137
    const-string v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x25

    goto/16 :goto_30c

    :sswitch_143
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1b

    goto/16 :goto_30c

    :sswitch_14f
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x32

    goto/16 :goto_30c

    :sswitch_15b
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x12

    goto/16 :goto_30c

    :sswitch_168
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v7

    goto/16 :goto_30c

    :sswitch_174
    const-string v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v5

    goto/16 :goto_30c

    :sswitch_17f
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x21

    goto/16 :goto_30c

    :sswitch_18b
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v6

    goto/16 :goto_30c

    :sswitch_196
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x13

    goto/16 :goto_30c

    :sswitch_1a3
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x20

    goto/16 :goto_30c

    :sswitch_1af
    const-string v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xb

    goto/16 :goto_30c

    :sswitch_1bb
    const-string v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xa

    goto/16 :goto_30c

    :sswitch_1c7
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x24

    goto/16 :goto_30c

    :sswitch_1d4
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x28

    goto/16 :goto_30c

    :sswitch_1e1
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x30

    goto/16 :goto_30c

    :sswitch_1ee
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3a

    goto/16 :goto_30c

    :sswitch_1fa
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x6

    goto/16 :goto_30c

    :sswitch_206
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x17

    goto/16 :goto_30c

    :sswitch_212
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x5

    goto/16 :goto_30c

    :sswitch_21e
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2f

    goto/16 :goto_30c

    :sswitch_22a
    const-string v2, "get-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2d

    goto/16 :goto_30c

    :sswitch_236
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1a

    goto/16 :goto_30c

    :sswitch_243
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x22

    goto/16 :goto_30c

    :sswitch_250
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x18

    goto/16 :goto_30c

    :sswitch_25c
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x26

    goto/16 :goto_30c

    :sswitch_269
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1e

    goto/16 :goto_30c

    :sswitch_275
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x29

    goto/16 :goto_30c

    :sswitch_281
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2b

    goto/16 :goto_30c

    :sswitch_28d
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2a

    goto/16 :goto_30c

    :sswitch_299
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v4

    goto/16 :goto_30c

    :sswitch_2a5
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x36

    goto :goto_30c

    :sswitch_2b0
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1c

    goto :goto_30c

    :sswitch_2bb
    const-string v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x37

    goto :goto_30c

    :sswitch_2c6
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x35

    goto :goto_30c

    :sswitch_2d2
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x33

    goto :goto_30c

    :sswitch_2dd
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x23

    goto :goto_30c

    :sswitch_2e9
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x10

    goto :goto_30c

    :sswitch_2f4
    const-string v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x8

    goto :goto_30c

    :sswitch_2ff
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x38

    goto :goto_30c

    :goto_30b
    move v2, v1

    :goto_30c
    packed-switch v2, :pswitch_data_58a

    .line 280
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_446

    .line 278
    :pswitch_315  #0x3d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result p1

    return p1

    .line 276
    :pswitch_31a  #0x3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result p1

    return p1

    .line 274
    :pswitch_31f  #0x3b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates()I

    move-result p1

    return p1

    .line 272
    :pswitch_324  #0x3a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getStagedSessions()I

    move-result p1

    return p1

    .line 270
    :pswitch_329  #0x39
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result p1

    return p1

    .line 268
    :pswitch_32e  #0x38
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result p1

    return p1

    .line 266
    :pswitch_333  #0x37
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result p1

    return p1

    .line 264
    :pswitch_338  #0x36
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result p1

    return p1

    .line 262
    :pswitch_33d  #0x35
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result p1

    return p1

    .line 260
    :pswitch_342  #0x34
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result p1

    return p1

    .line 258
    :pswitch_347  #0x33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result p1

    return p1

    .line 256
    :pswitch_34c  #0x32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result p1

    return p1

    .line 254
    :pswitch_351  #0x31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result p1

    return p1

    .line 252
    :pswitch_356  #0x30
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result p1

    return p1

    .line 250
    :pswitch_35b  #0x2f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result p1

    return p1

    .line 248
    :pswitch_360  #0x2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result p1

    return p1

    .line 246
    :pswitch_365  #0x2d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppLink()I

    move-result p1

    return p1

    .line 244
    :pswitch_36a  #0x2c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetAppLink()I

    move-result p1

    return p1

    .line 242
    :pswitch_36f  #0x2b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result p1

    return p1

    .line 240
    :pswitch_374  #0x2a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result p1

    return p1

    .line 238
    :pswitch_379  #0x29
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result p1

    return p1

    .line 236
    :pswitch_37e  #0x28
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result p1

    return p1

    .line 234
    :pswitch_383  #0x27
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result p1

    return p1

    .line 232
    :pswitch_388  #0x26
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result p1

    return p1

    .line 230
    :pswitch_38d  #0x25
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result p1

    return p1

    .line 228
    :pswitch_392  #0x24
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result p1

    return p1

    .line 226
    :pswitch_397  #0x23
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result p1

    return p1

    .line 224
    :pswitch_39c  #0x22
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result p1

    return p1

    .line 222
    :pswitch_3a1  #0x21
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result p1

    return p1

    .line 220
    :pswitch_3a6  #0x20
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p1

    return p1

    .line 217
    :pswitch_3ab  #0x1f
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p1

    return p1

    .line 214
    :pswitch_3b0  #0x1e
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p1

    return p1

    .line 212
    :pswitch_3b5  #0x1d
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p1

    return p1

    .line 210
    :pswitch_3ba  #0x1c
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p1

    return p1

    .line 208
    :pswitch_3bf  #0x1b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result p1

    return p1

    .line 206
    :pswitch_3c4  #0x1a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result p1

    return p1

    .line 204
    :pswitch_3c9  #0x19
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result p1

    return p1

    .line 202
    :pswitch_3ce  #0x18
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result p1

    return p1

    .line 200
    :pswitch_3d3  #0x17
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result p1

    return p1

    .line 198
    :pswitch_3d8  #0x16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result p1

    return p1

    .line 196
    :pswitch_3dd  #0x15
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result p1

    return p1

    .line 194
    :pswitch_3e2  #0x14
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result p1

    return p1

    .line 192
    :pswitch_3e7  #0x13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result p1

    return p1

    .line 190
    :pswitch_3ec  #0x12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result p1

    return p1

    .line 188
    :pswitch_3f1  #0x11
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result p1

    return p1

    .line 186
    :pswitch_3f6  #0x10
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result p1

    return p1

    .line 184
    :pswitch_3fb  #0xf
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result p1

    return p1

    .line 182
    :pswitch_400  #0xe
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result p1

    return p1

    .line 180
    :pswitch_405  #0xd
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result p1

    return p1

    .line 178
    :pswitch_40a  #0xc
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result p1

    return p1

    .line 176
    :pswitch_40f  #0xb
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result p1

    return p1

    .line 174
    :pswitch_414  #0xa
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result p1

    return p1

    .line 172
    :pswitch_419  #0x8, 0x9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result p1

    return p1

    .line 169
    :pswitch_41e  #0x7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result p1

    return p1

    .line 167
    :pswitch_423  #0x6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result p1

    return p1

    .line 165
    :pswitch_428  #0x5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result p1

    return p1

    .line 163
    :pswitch_42d  #0x4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result p1

    return p1

    .line 161
    :pswitch_432  #0x3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result p1

    return p1

    .line 159
    :pswitch_437  #0x2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result p1

    return p1

    .line 157
    :pswitch_43c  #0x1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result p1

    return p1

    .line 155
    :pswitch_441  #0x0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result p1

    return p1

    .line 281
    :goto_446
    if-nez v2, :cond_462

    .line 282
    const-string v2, "-l"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_455

    .line 283
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result p1

    return p1

    .line 284
    :cond_455
    const-string v2, "-lf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_475

    .line 285
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result p1

    return p1

    .line 287
    :cond_462
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_475

    .line 288
    const-string v3, "-p"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_475

    .line 289
    invoke-direct {p0, v2, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 292
    :cond_475
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1
    :try_end_479
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_479} :catch_47a

    return p1

    .line 295
    :catch_47a
    move-exception p1

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    return v1

    :sswitch_data_490
    .sparse-switch
        -0x7d5639bf -> :sswitch_2ff
        -0x7540f3bd -> :sswitch_2f4
        -0x737996c2 -> :sswitch_2e9
        -0x6e635fc4 -> :sswitch_2dd
        -0x6e1196e6 -> :sswitch_2d2
        -0x67c8bc23 -> :sswitch_2c6
        -0x504e493d -> :sswitch_2bb
        -0x4d6ada7d -> :sswitch_2b0
        -0x4b90d264 -> :sswitch_2a5
        -0x495fa230 -> :sswitch_299
        -0x41b47fcb -> :sswitch_28d
        -0x410d7369 -> :sswitch_281
        -0x3fd1a8ae -> :sswitch_275
        -0x3d838470 -> :sswitch_269
        -0x37b0f17a -> :sswitch_25c
        -0x36d5185d -> :sswitch_250
        -0x321a08a5 -> :sswitch_243
        -0x2549d71e -> :sswitch_236
        -0x2525a743 -> :sswitch_22a
        -0x202b5604 -> :sswitch_21e
        -0x1b57243d -> :sswitch_212
        -0x1a825bcc -> :sswitch_206
        -0x1a490a61 -> :sswitch_1fa
        -0x18d650e6 -> :sswitch_1ee
        -0x143f388c -> :sswitch_1e1
        -0xd1dc6eb -> :sswitch_1d4
        -0x85b5c7d -> :sswitch_1c7
        -0x7e40657 -> :sswitch_1bb
        -0x7bd8e92 -> :sswitch_1af
        -0x6dac5fb -> :sswitch_1a3
        -0x533744c -> :sswitch_196
        0x2f39f4 -> :sswitch_18b
        0x30dd42 -> :sswitch_17f
        0x32b09e -> :sswitch_174
        0x346425 -> :sswitch_168
        0x120f24a -> :sswitch_15b
        0x5296aa8 -> :sswitch_14f
        0x5a5b64d -> :sswitch_143
        0x5e0c11c -> :sswitch_137
        0x664b17d -> :sswitch_12b
        0x8569735 -> :sswitch_11f
        0xe265438 -> :sswitch_113
        0x1127c8f6 -> :sswitch_107
        0x156ea506 -> :sswitch_fa
        0x1678dbb8 -> :sswitch_ed
        0x1bde3ea0 -> :sswitch_e0
        0x2f90ddc8 -> :sswitch_d4
        0x3142fb77 -> :sswitch_c7
        0x372512d5 -> :sswitch_ba
        0x372e1931 -> :sswitch_ad
        0x38a75a33 -> :sswitch_a1
        0x3ec9c212 -> :sswitch_95
        0x4308171b -> :sswitch_89
        0x4634ad3c -> :sswitch_7c
        0x55326612 -> :sswitch_6f
        0x5bb0b12d -> :sswitch_63
        0x639e22e8 -> :sswitch_57
        0x653560d1 -> :sswitch_4b
        0x681c75b2 -> :sswitch_3e
        0x6a555f29 -> :sswitch_31
        0x6ecbfff1 -> :sswitch_25
        0x74ae259b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_58a
    .packed-switch 0x0
        :pswitch_441  #00000000
        :pswitch_43c  #00000001
        :pswitch_437  #00000002
        :pswitch_432  #00000003
        :pswitch_42d  #00000004
        :pswitch_428  #00000005
        :pswitch_423  #00000006
        :pswitch_41e  #00000007
        :pswitch_419  #00000008
        :pswitch_419  #00000009
        :pswitch_414  #0000000a
        :pswitch_40f  #0000000b
        :pswitch_40a  #0000000c
        :pswitch_405  #0000000d
        :pswitch_400  #0000000e
        :pswitch_3fb  #0000000f
        :pswitch_3f6  #00000010
        :pswitch_3f1  #00000011
        :pswitch_3ec  #00000012
        :pswitch_3e7  #00000013
        :pswitch_3e2  #00000014
        :pswitch_3dd  #00000015
        :pswitch_3d8  #00000016
        :pswitch_3d3  #00000017
        :pswitch_3ce  #00000018
        :pswitch_3c9  #00000019
        :pswitch_3c4  #0000001a
        :pswitch_3bf  #0000001b
        :pswitch_3ba  #0000001c
        :pswitch_3b5  #0000001d
        :pswitch_3b0  #0000001e
        :pswitch_3ab  #0000001f
        :pswitch_3a6  #00000020
        :pswitch_3a1  #00000021
        :pswitch_39c  #00000022
        :pswitch_397  #00000023
        :pswitch_392  #00000024
        :pswitch_38d  #00000025
        :pswitch_388  #00000026
        :pswitch_383  #00000027
        :pswitch_37e  #00000028
        :pswitch_379  #00000029
        :pswitch_374  #0000002a
        :pswitch_36f  #0000002b
        :pswitch_36a  #0000002c
        :pswitch_365  #0000002d
        :pswitch_360  #0000002e
        :pswitch_35b  #0000002f
        :pswitch_356  #00000030
        :pswitch_351  #00000031
        :pswitch_34c  #00000032
        :pswitch_347  #00000033
        :pswitch_342  #00000034
        :pswitch_33d  #00000035
        :pswitch_338  #00000036
        :pswitch_333  #00000037
        :pswitch_32e  #00000038
        :pswitch_329  #00000039
        :pswitch_324  #0000003a
        :pswitch_31f  #0000003b
        :pswitch_31a  #0000003c
        :pswitch_315  #0000003d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 9

    .line 2977
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2978
    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    const-string v2, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const-string v2, "  dump PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    const-string v2, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const-string v2, "  list features"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    const-string v2, "    Prints all features of the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    const-string v2, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    const-string v2, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    const-string v2, "    Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v2, "  list libraries"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v2, "    Prints all system libraries."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    const-string v2, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v2, "      -f: see their associated file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    const-string v2, "      -a: all known packages (but excluding APEXes)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v2, "      -s: filter to only show system packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string v2, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    const-string v2, "      -i: see the installer for the packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    const-string v2, "      -U: also show the package UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    const-string v2, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const-string v2, "      --show-versioncode: also show the version code"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    const-string v2, "      --apex-only: only show APEX packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    const-string v2, "  list permission-groups"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    const-string v2, "    Prints all known permission groups."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    const-string v2, "      -g: organize by group"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string v2, "      -f: print all information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    const-string v2, "      -s: short summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    const-string v2, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    const-string v2, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    const-string v2, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string v2, "       [--user USER_ID] INTENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    const-string v3, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const-string v3, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string v3, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string v3, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string v3, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string v3, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string v2, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v2, "  install [-lrtsfdgw] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string v2, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string v3, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string v4, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string v5, "       [--preload] [--instantapp] [--full] [--dont-kill]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v6, "       [--enable-rollback]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string v6, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES] [--apex]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string v6, "       [PATH|-]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string v6, "    Install an application.  Must provide the apk data to install, either as a"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string v6, "    file path or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string v6, "      -l: forward lock application"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string v6, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string v6, "      -t: allow test packages"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v6, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v6, "      -s: install application on sdcard"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v6, "      -f: install application on internal flash"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-string v6, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v6, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string v6, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v6, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v7, "      --user: install under the given user."

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v7, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v7, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v7, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v7, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v7, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v7, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v7, "      --instantapp: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v7, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v7, "      --install-location: force the install location:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v7, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v7, "      --install-reason: indicates why the app is being installed:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v7, "          0=unknown, 1=admin policy, 2=device restore,"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v7, "          3=device setup, 4=user request"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string v7, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v7, "      --apex: install an .apex file, not an .apk"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v7, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const-string v2, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    const-string v2, "       [--multi-package] [--staged]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    const-string v2, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const-string v2, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const-string v2, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const-string v2, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string v2, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    const-string v2, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    const-string v2, "    Add one or more session IDs to a multi-package session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    const-string v2, "  install-commit SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    const-string v2, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    const-string v2, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string v2, "    Delete the given active install session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    const-string v2, "  set-install-location LOCATION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    const-string v2, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    const-string v2, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const-string v2, "    LOCATION is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string v2, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string v2, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string v2, "    2 [external]: Install on external media"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string v2, "  get-install-location"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string v2, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string v2, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string v2, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    const-string v2, "  pm uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE] PACKAGE [SPLIT]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v2, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3127
    const-string v2, "    if no SPLIT name is specified, otherwise will remove only the split of the"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const-string v2, "    given app.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    const-string v2, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string v2, "      --user: remove the app from the given user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const-string v2, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    const-string v2, "  clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    const-string v2, "    Deletes all data associated with a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const-string v2, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    const-string v2, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3138
    const-string v2, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    const-string v2, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    const-string v2, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    const-string v2, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    const-string v2, "    component (written as \"package/class\")."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string v2, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    const-string v2, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    const-string v2, "  suspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string v2, "    Suspends the specified package (as user)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    const-string v2, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    const-string v2, "    Unsuspends the specified package (as user)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    const-string v2, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    const-string v2, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string v2, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string v2, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    const-string v2, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    const-string v2, "  reset-permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string v2, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    const-string v2, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string v2, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    const-string v2, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    const-string v2, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    const-string v2, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const-string v2, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    const-string v2, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    const-string v2, "  set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    const-string v2, "  get-app-link [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    const-string v2, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    const-string v2, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    const-string v2, "  list users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    const-string v2, "    Lists the current users."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    const-string v2, "      [--guest] [--pre-create-only] USER_NAME"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    const-string v2, "    of the user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    const-string v2, "  remove-user USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    const-string v2, "    associated with that user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3190
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    const-string v2, "  get-max-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    const-string v2, "  get-max-running-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    const-string v2, "      -a: compile all packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3201
    const-string v2, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    const-string v2, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    const-string v2, "      -m: select compilation mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    const-string v2, "            assume-verified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    const-string v2, "            extract"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    const-string v2, "            verify"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3208
    const-string v2, "            quicken"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    const-string v2, "            space-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    const-string v2, "            space"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    const-string v2, "            speed-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3212
    const-string v2, "            speed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    const-string v2, "            everything"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    const-string v2, "      -r: select compilation reason"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    const-string v2, "          REASON is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    const/4 v2, 0x0

    :goto_445
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_465

    .line 3217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "            "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    add-int/lit8 v2, v2, 0x1

    goto :goto_445

    .line 3219
    :cond_465
    const-string v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    const-string v2, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string v2, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    const-string v2, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    const-string v2, "  bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    const-string v2, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    const-string v2, "    maintenance mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    const-string v2, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    const-string v2, "    Dumps method/class profile files to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    const-string v2, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3246
    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    const-string v2, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    const-string v2, "    matters: the actual component used will be determined automatically from"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    const-string v2, "    the package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    const-string v2, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    const-string v2, "    Set installer package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    const-string v2, "  get-instantapp-resolver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    const-string v2, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3261
    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    const-string v2, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3267
    const-string v2, "  uninstall-system-updates"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3268
    const-string v2, "    Remove updates to all system applications and fall back to their /system version."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3271
    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    const-string v2, "    By default, without any argument only installed modules are shown."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    const-string v2, "      --all: show all module info"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    const-string v2, "      --installed: show only installed modules"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3278
    return-void
.end method

.method public runCreateUser()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2257
    nop

    .line 2258
    nop

    .line 2260
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    move v2, v3

    .line 2261
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 2262
    const-string v6, "--profileOf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_8

    .line 2264
    :cond_1f
    const-string v6, "--managed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 2265
    or-int/lit8 v3, v3, 0x20

    goto :goto_8

    .line 2266
    :cond_2a
    const-string v6, "--restricted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2267
    or-int/lit8 v3, v3, 0x8

    goto :goto_8

    .line 2268
    :cond_35
    const-string v6, "--ephemeral"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2269
    or-int/lit16 v3, v3, 0x100

    goto :goto_8

    .line 2270
    :cond_40
    const-string v6, "--guest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2271
    or-int/lit8 v3, v3, 0x4

    goto :goto_8

    .line 2272
    :cond_4b
    const-string v6, "--demo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 2273
    or-int/lit16 v3, v3, 0x200

    goto :goto_8

    .line 2274
    :cond_56
    const-string v2, "--pre-create-only"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2275
    move v2, v0

    goto :goto_8

    .line 2277
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    return v0

    .line 2281
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 2282
    if-nez v5, :cond_8b

    if-nez v2, :cond_8b

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no user name specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    return v0

    .line 2286
    :cond_8b
    if-eqz v5, :cond_98

    if-eqz v2, :cond_98

    .line 2287
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Warning: name is ignored for pre-created users"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    :cond_98
    nop

    .line 2292
    nop

    .line 2293
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2292
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    .line 2294
    nop

    .line 2295
    const-string v7, "account"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 2294
    invoke-static {v7}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v7

    .line 2296
    and-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_ce

    .line 2298
    if-ltz v4, :cond_b8

    move v2, v4

    goto :goto_b9

    :cond_b8
    move v2, v1

    .line 2299
    :goto_b9
    invoke-interface {v6, v5, v2}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2300
    nop

    .line 2301
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-nez v5, :cond_c8

    const-string/jumbo v5, "root"

    goto :goto_ca

    :cond_c8
    const-string v5, "com.android.shell"

    .line 2300
    :goto_ca
    invoke-interface {v7, v2, v4, v5}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 2302
    goto :goto_e2

    :cond_ce
    if-gez v4, :cond_dd

    .line 2303
    if-eqz v2, :cond_d7

    invoke-interface {v6, v3}, Landroid/os/IUserManager;->preCreateUser(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_db

    :cond_d7
    invoke-interface {v6, v5, v3}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    :goto_db
    move-object v3, v2

    goto :goto_e2

    .line 2305
    :cond_dd
    const/4 v2, 0x0

    invoke-interface {v6, v5, v3, v4, v2}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2308
    :goto_e2
    if-eqz v3, :cond_ff

    .line 2309
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: created user id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    return v1

    .line 2312
    :cond_ff
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: couldn\'t create User."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2313
    return v0
.end method

.method public runForceDexOpt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    .line 1501
    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxRunningUsers()I
    .registers 5

    .line 2367
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2368
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2369
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2369
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxUsers()I
    .registers 4

    .line 2361
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2361
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    const/4 v0, 0x0

    return v0
.end method

.method public runMovePackage()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1265
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: package name not specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    return v1

    .line 1269
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1270
    const-string v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1271
    const/4 v2, 0x0

    .line 1274
    :cond_1e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1276
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1277
    :goto_2a
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1278
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1279
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_2a

    .line 1282
    :cond_3c
    const/16 v0, -0x64

    if-ne v2, v0, :cond_4b

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    const/4 v0, 0x0

    return v0

    .line 1286
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    return v1
.end method

.method public runMovePrimaryStorage()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1293
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1294
    const/4 v0, 0x0

    .line 1297
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v0

    .line 1299
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v1

    .line 1300
    :goto_19
    invoke-static {v1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1301
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1302
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v1

    goto :goto_19

    .line 1305
    :cond_2b
    const/16 v0, -0x64

    if-ne v1, v0, :cond_3a

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    const/4 v0, 0x0

    return v0

    .line 1309
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x1

    return v0
.end method

.method public runRemoveUser()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2319
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2320
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no user id specified."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    return v1

    .line 2324
    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2325
    nop

    .line 2326
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2325
    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v2

    .line 2327
    invoke-interface {v2, v0}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2328
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success: removed user"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2329
    const/4 v0, 0x0

    return v0

    .line 2331
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: couldn\'t remove user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    return v1
.end method

.method public runSetUserRestriction()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    nop

    .line 2338
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 2339
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v2, "--user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2340
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    .line 2343
    :cond_19
    move v0, v1

    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2346
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2c

    .line 2347
    goto :goto_35

    .line 2348
    :cond_2c
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2349
    move v5, v1

    .line 2354
    :goto_35
    nop

    .line 2355
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2354
    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 2356
    invoke-interface {v3, v2, v5, v0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2357
    return v1

    .line 2351
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: valid value not specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    return v5
.end method
