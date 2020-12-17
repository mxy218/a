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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 1590
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

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "service"  # Lcom/android/server/pm/PackageManagerService;

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
    .registers 6
    .param p0, "abi"  # Ljava/lang/String;

    .line 2668
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2672
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2673
    return-object p0

    .line 2676
    :cond_f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2677
    .local v0, "supportedAbis":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 2678
    .local v3, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2679
    return-object p0

    .line 2677
    .end local v3  # "supportedAbi":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2683
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ABI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not supported on this device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2669
    .end local v0  # "supportedAbis":[Ljava/lang/String;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing ABI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .registers 11
    .param p1, "pckg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 487
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_3c

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3c

    .line 488
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 489
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 492
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_2e
    if-ge v6, v5, :cond_3b

    aget-object v7, v4, v6

    .line 493
    .local v7, "splitSourceDir":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    .end local v7  # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 497
    :cond_3b
    return v1

    .line 499
    .end local v2  # "pw":Ljava/io/PrintWriter;
    :cond_3c
    const/4 v1, 0x1

    return v1
.end method

.method private doAbandonSession(IZ)I
    .registers 7
    .param p1, "sessionId"  # I
    .param p2, "logSuccess"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2829
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2830
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2832
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2833
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2834
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 2835
    if-eqz p2, :cond_1f

    .line 2836
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 2838
    :cond_1f
    const/4 v2, 0x0

    .line 2840
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2838
    return v2

    .line 2840
    :catchall_24
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doCommitSession(IZ)I
    .registers 11
    .param p1, "sessionId"  # I
    .param p2, "logSuccess"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2794
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2795
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2797
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2798
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2799
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_8b

    const-string v3, "]"

    if-nez v2, :cond_47

    :try_start_1d
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_8b

    if-nez v2, :cond_47

    .line 2803
    :try_start_23
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_8b

    .line 2807
    goto :goto_47

    .line 2804
    :catch_2b
    move-exception v2

    .line 2805
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2805
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_47
    :goto_47
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2810
    .local v2, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 2811
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 2812
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2814
    .local v5, "status":I
    if-nez v5, :cond_69

    .line 2815
    if-eqz p2, :cond_86

    .line 2816
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_86

    .line 2819
    :cond_69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    .line 2820
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2819
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_2c .. :try_end_86} :catchall_8b

    .line 2822
    :cond_86
    :goto_86
    nop

    .line 2824
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2822
    return v5

    .line 2824
    .end local v2  # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v4  # "result":Landroid/content/Intent;
    .end local v5  # "status":I
    :catchall_8b
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6
    .param p1, "params"  # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2693
    const/4 v0, 0x1

    const-string/jumbo v1, "runInstallCreate"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result p3

    .line 2694
    const/4 v0, -0x1

    if-ne p3, v0, :cond_12

    .line 2695
    const/4 p3, 0x0

    .line 2696
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2699
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 2700
    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0

    .line 2701
    .local v0, "sessionId":I
    return v0
.end method

.method private doInstallAddSession(I[IZ)I
    .registers 9
    .param p1, "parentId"  # I
    .param p2, "sessionIds"  # [I
    .param p3, "logSuccess"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2749
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2751
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2752
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2753
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2754
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: parent session ID is not a multi-package session"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_43

    .line 2756
    nop

    .line 2766
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2756
    const/4 v2, 0x1

    return v2

    .line 2758
    :cond_2a
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_2c
    :try_start_2c
    array-length v4, p2

    if-ge v3, v4, :cond_37

    .line 2759
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 2758
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2761
    .end local v3  # "i":I
    :cond_37
    if-eqz p3, :cond_3e

    .line 2762
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_43

    .line 2764
    :cond_3e
    nop

    .line 2766
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2764
    return v2

    .line 2766
    :catchall_43
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 28
    .param p2, "groups"  # Z
    .param p3, "labels"  # Z
    .param p4, "summary"  # Z
    .param p5, "startProtectionLevel"  # I
    .param p6, "endProtectionLevel"  # I
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

    .line 2847
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2848
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2849
    .local v3, "groupCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v3, :cond_241

    .line 2850
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2851
    .local v5, "groupName":Ljava/lang/String;
    const-string v6, ""

    .line 2852
    .local v6, "prefix":Ljava/lang/String;
    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const/4 v10, 0x0

    const-string v11, "+ "

    const-string v12, ""

    if-eqz p2, :cond_10a

    .line 2853
    if-lez v4, :cond_29

    .line 2854
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    :cond_29
    if-eqz v5, :cond_e7

    .line 2857
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2858
    invoke-interface {v13, v5, v10}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    .line 2859
    .local v13, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_74

    .line 2860
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 2861
    .local v14, "res":Landroid/content/res/Resources;
    const-string v15, ": "

    if-eqz v14, :cond_5a

    .line 2862
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3  # "groupCount":I
    .local v17, "groupCount":I
    iget v3, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move-object/from16 v18, v6

    .end local v6  # "prefix":Ljava/lang/String;
    .local v18, "prefix":Ljava/lang/String;
    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v13, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 2864
    .end local v17  # "groupCount":I
    .end local v18  # "prefix":Ljava/lang/String;
    .restart local v3  # "groupCount":I
    .restart local v6  # "prefix":Ljava/lang/String;
    :cond_5a
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3  # "groupCount":I
    .end local v6  # "prefix":Ljava/lang/String;
    .restart local v17  # "groupCount":I
    .restart local v18  # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2867
    .end local v14  # "res":Landroid/content/res/Resources;
    :goto_72
    goto/16 :goto_e6

    .line 2868
    .end local v17  # "groupCount":I
    .end local v18  # "prefix":Ljava/lang/String;
    .restart local v3  # "groupCount":I
    .restart local v6  # "prefix":Ljava/lang/String;
    :cond_74
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3  # "groupCount":I
    .end local v6  # "prefix":Ljava/lang/String;
    .restart local v17  # "groupCount":I
    .restart local v18  # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_81

    move-object v6, v11

    goto :goto_82

    :cond_81
    move-object v6, v12

    :goto_82
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "group:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    if-eqz p3, :cond_e6

    .line 2870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2872
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_e6

    .line 2873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2874
    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2873
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2876
    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2875
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    .end local v3  # "res":Landroid/content/res/Resources;
    .end local v13  # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_e6
    :goto_e6
    goto :goto_107

    .line 2882
    .end local v17  # "groupCount":I
    .end local v18  # "prefix":Ljava/lang/String;
    .local v3, "groupCount":I
    .restart local v6  # "prefix":Ljava/lang/String;
    :cond_e7
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3  # "groupCount":I
    .end local v6  # "prefix":Ljava/lang/String;
    .restart local v17  # "groupCount":I
    .restart local v18  # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_f6

    if-nez p4, :cond_f6

    move-object v6, v11

    goto :goto_f7

    :cond_f6
    move-object v6, v12

    :goto_f7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ungrouped:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    :goto_107
    const-string v6, "  "

    .end local v18  # "prefix":Ljava/lang/String;
    .restart local v6  # "prefix":Ljava/lang/String;
    goto :goto_10e

    .line 2852
    .end local v17  # "groupCount":I
    .restart local v3  # "groupCount":I
    :cond_10a
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 2886
    .end local v3  # "groupCount":I
    .restart local v17  # "groupCount":I
    :goto_10e
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2887
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v3, v10, v13}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 2888
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 2889
    .local v10, "count":I
    const/4 v13, 0x1

    .line 2890
    .local v13, "first":Z
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_125
    if-ge v14, v10, :cond_230

    .line 2891
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 2892
    .local v15, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_13b

    if-nez v5, :cond_13b

    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_13b

    .line 2893
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    goto/16 :goto_226

    .line 2895
    :cond_13b
    iget v1, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 2896
    .local v1, "base":I
    move-object/from16 v16, v3

    move/from16 v3, p5

    .end local v3  # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .local v16, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-lt v1, v3, :cond_222

    move/from16 v3, p6

    if-le v1, v3, :cond_14d

    .line 2898
    move-object/from16 v20, v5

    goto/16 :goto_226

    .line 2900
    :cond_14d
    if-eqz p4, :cond_17b

    .line 2901
    if-eqz v13, :cond_155

    .line 2902
    const/4 v13, 0x0

    move/from16 v18, v1

    goto :goto_15c

    .line 2904
    :cond_155
    move/from16 v18, v1

    .end local v1  # "base":I
    .local v18, "base":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2906
    :goto_15c
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2907
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_170

    .line 2908
    move-object/from16 v19, v1

    .end local v1  # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_177

    .line 2911
    .end local v19  # "res":Landroid/content/res/Resources;
    .restart local v1  # "res":Landroid/content/res/Resources;
    :cond_170
    move-object/from16 v19, v1

    .end local v1  # "res":Landroid/content/res/Resources;
    .restart local v19  # "res":Landroid/content/res/Resources;
    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2913
    .end local v19  # "res":Landroid/content/res/Resources;
    :goto_177
    move-object/from16 v20, v5

    goto/16 :goto_226

    .line 2914
    .end local v18  # "base":I
    .local v1, "base":I
    :cond_17b
    move/from16 v18, v1

    .end local v1  # "base":I
    .restart local v18  # "base":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_189

    move-object v3, v11

    goto :goto_18a

    :cond_189
    move-object v3, v12

    :goto_18a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    if-eqz p3, :cond_21f

    .line 2917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2919
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_1fd

    .line 2920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    .end local v1  # "res":Landroid/content/res/Resources;
    .restart local v19  # "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v20, v5

    .end local v5  # "groupName":Ljava/lang/String;
    .local v20, "groupName":Ljava/lang/String;
    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2921
    invoke-direct {v0, v15, v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2920
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2924
    invoke-direct {v0, v15, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2923
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_201

    .line 2919
    .end local v19  # "res":Landroid/content/res/Resources;
    .end local v20  # "groupName":Ljava/lang/String;
    .restart local v1  # "res":Landroid/content/res/Resources;
    .restart local v5  # "groupName":Ljava/lang/String;
    :cond_1fd
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    .line 2927
    .end local v1  # "res":Landroid/content/res/Resources;
    .end local v5  # "groupName":Ljava/lang/String;
    .restart local v19  # "res":Landroid/content/res/Resources;
    .restart local v20  # "groupName":Ljava/lang/String;
    :goto_201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  protectionLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2928
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2927
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_226

    .line 2916
    .end local v19  # "res":Landroid/content/res/Resources;
    .end local v20  # "groupName":Ljava/lang/String;
    .restart local v5  # "groupName":Ljava/lang/String;
    :cond_21f
    move-object/from16 v20, v5

    .end local v5  # "groupName":Ljava/lang/String;
    .restart local v20  # "groupName":Ljava/lang/String;
    goto :goto_226

    .line 2896
    .end local v18  # "base":I
    .end local v20  # "groupName":Ljava/lang/String;
    .local v1, "base":I
    .restart local v5  # "groupName":Ljava/lang/String;
    :cond_222
    move/from16 v18, v1

    move-object/from16 v20, v5

    .line 2890
    .end local v1  # "base":I
    .end local v5  # "groupName":Ljava/lang/String;
    .end local v15  # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v20  # "groupName":Ljava/lang/String;
    :goto_226
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v20

    goto/16 :goto_125

    .end local v16  # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v20  # "groupName":Ljava/lang/String;
    .restart local v3  # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v5  # "groupName":Ljava/lang/String;
    :cond_230
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    .line 2933
    .end local v3  # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v5  # "groupName":Ljava/lang/String;
    .end local v14  # "p":I
    .restart local v16  # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v20  # "groupName":Ljava/lang/String;
    if-eqz p4, :cond_239

    .line 2934
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    .end local v6  # "prefix":Ljava/lang/String;
    .end local v10  # "count":I
    .end local v13  # "first":Z
    .end local v16  # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v20  # "groupName":Ljava/lang/String;
    :cond_239
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto/16 :goto_d

    .line 2937
    .end local v4  # "i":I
    .end local v17  # "groupCount":I
    .local v3, "groupCount":I
    :cond_241
    return-void
.end method

.method private doRemoveSplit(ILjava/lang/String;Z)I
    .registers 9
    .param p1, "sessionId"  # I
    .param p2, "splitName"  # Ljava/lang/String;
    .param p3, "logSuccess"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2773
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2775
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2776
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2777
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 2779
    if-eqz p3, :cond_1f

    .line 2780
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_26
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 2782
    :cond_1f
    const/4 v2, 0x0

    .line 2787
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2782
    return v2

    .line 2787
    :catchall_24
    move-exception v2

    goto :goto_44

    .line 2783
    :catch_26
    move-exception v2

    .line 2784
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to remove split; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_24

    .line 2785
    const/4 v3, 0x1

    .line 2787
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2785
    return v3

    .line 2787
    .end local v2  # "e":Ljava/io/IOException;
    :goto_44
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 23
    .param p1, "sessionId"  # I
    .param p2, "inPath"  # Ljava/lang/String;
    .param p3, "sizeBytes"  # J
    .param p5, "splitName"  # Ljava/lang/String;
    .param p6, "logSuccess"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2706
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2708
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v4, 0x1

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2710
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v5, "-"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1f

    .line 2711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-wide/from16 v14, p3

    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_6d

    .line 2712
    .end local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1f
    if-eqz v2, :cond_63

    .line 2713
    const-string/jumbo v5, "r"

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_e0
    .catchall {:try_start_6 .. :try_end_28} :catchall_da

    .line 2714
    .restart local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, -0x1

    if-nez v5, :cond_30

    .line 2715
    nop

    .line 2742
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2715
    return v8

    .line 2717
    :cond_30
    :try_start_30
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_e0
    .catchall {:try_start_30 .. :try_end_34} :catchall_da

    .line 2718
    .end local p3  # "sizeBytes":J
    .local v9, "sizeBytes":J
    cmp-long v11, v9, v6

    if-gez v11, :cond_61

    .line 2719
    :try_start_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get size of: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_50} :catch_5b
    .catchall {:try_start_38 .. :try_end_50} :catchall_55

    .line 2720
    nop

    .line 2742
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2720
    return v8

    .line 2742
    .end local v0  # "pw":Ljava/io/PrintWriter;
    .end local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_55
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v9

    goto/16 :goto_107

    .line 2738
    :catch_5b
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v9

    goto/16 :goto_e5

    .line 2718
    .restart local v0  # "pw":Ljava/io/PrintWriter;
    .restart local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_61
    move-wide v14, v9

    goto :goto_6d

    .line 2723
    .end local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9  # "sizeBytes":J
    .restart local p3  # "sizeBytes":J
    :cond_63
    :try_start_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_e0
    .catchall {:try_start_63 .. :try_end_6b} :catchall_da

    move-wide/from16 v14, p3

    .line 2725
    .end local p3  # "sizeBytes":J
    .restart local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    .local v14, "sizeBytes":J
    :goto_6d
    cmp-long v6, v14, v6

    if-gtz v6, :cond_8b

    .line 2726
    :try_start_71
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: must specify a APK size"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7a} :catch_85
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7f

    .line 2727
    nop

    .line 2742
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2727
    return v4

    .line 2742
    .end local v0  # "pw":Ljava/io/PrintWriter;
    .end local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_7f
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v14

    goto/16 :goto_107

    .line 2738
    :catch_85
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v14

    goto/16 :goto_e5

    .line 2730
    .restart local v0  # "pw":Ljava/io/PrintWriter;
    .restart local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_8b
    :try_start_8b
    new-instance v8, Landroid/content/pm/PackageInstaller$Session;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2731
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_93} :catch_d5
    .catchall {:try_start_8b .. :try_end_93} :catchall_d0

    move/from16 v7, p1

    :try_start_95
    invoke-interface {v6, v7}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9c} :catch_ce
    .catchall {:try_start_95 .. :try_end_9c} :catchall_cc

    .line 2732
    .end local v3  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v8, "session":Landroid/content/pm/PackageInstaller$Session;
    const-wide/16 v10, 0x0

    move-object/from16 v9, p5

    move-wide v12, v14

    move-wide v1, v14

    .end local v14  # "sizeBytes":J
    .local v1, "sizeBytes":J
    move-object v14, v5

    :try_start_a3
    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 2734
    if-eqz p6, :cond_c1

    .line 2735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success: streamed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_c1} :catch_c9
    .catchall {:try_start_a3 .. :try_end_c1} :catchall_c6

    .line 2737
    :cond_c1
    const/4 v3, 0x0

    .line 2742
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2737
    return v3

    .line 2742
    .end local v0  # "pw":Ljava/io/PrintWriter;
    .end local v5  # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_c6
    move-exception v0

    move-object v3, v8

    goto :goto_107

    .line 2738
    :catch_c9
    move-exception v0

    move-object v3, v8

    goto :goto_e5

    .line 2742
    .end local v1  # "sizeBytes":J
    .end local v8  # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v3  # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14  # "sizeBytes":J
    :catchall_cc
    move-exception v0

    goto :goto_d3

    .line 2738
    :catch_ce
    move-exception v0

    goto :goto_d8

    .line 2742
    :catchall_d0
    move-exception v0

    move/from16 v7, p1

    :goto_d3
    move-wide v1, v14

    .end local v14  # "sizeBytes":J
    .restart local v1  # "sizeBytes":J
    goto :goto_107

    .line 2738
    .end local v1  # "sizeBytes":J
    .restart local v14  # "sizeBytes":J
    :catch_d5
    move-exception v0

    move/from16 v7, p1

    :goto_d8
    move-wide v1, v14

    .end local v14  # "sizeBytes":J
    .restart local v1  # "sizeBytes":J
    goto :goto_e5

    .line 2742
    .end local v1  # "sizeBytes":J
    .restart local p3  # "sizeBytes":J
    :catchall_da
    move-exception v0

    move/from16 v7, p1

    move-wide/from16 v1, p3

    goto :goto_107

    .line 2738
    :catch_e0
    move-exception v0

    move/from16 v7, p1

    move-wide/from16 v1, p3

    .line 2739
    .end local p3  # "sizeBytes":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v1  # "sizeBytes":J
    :goto_e5
    :try_start_e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: failed to write; "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_e5 .. :try_end_101} :catchall_106

    .line 2740
    nop

    .line 2742
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2740
    return v4

    .line 2742
    .end local v0  # "e":Ljava/io/IOException;
    :catchall_106
    move-exception v0

    :goto_107
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I

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
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 1807
    :cond_12
    const-string v0, "disabled-until-used"

    return-object v0

    .line 1805
    :cond_15
    const-string v0, "disabled-user"

    return-object v0

    .line 1803
    :cond_18
    const-string v0, "disabled"

    return-object v0

    .line 1801
    :cond_1b
    const-string v0, "enabled"

    return-object v0

    .line 1799
    :cond_1e
    const-string v0, "default"

    return-object v0
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "pii"  # Landroid/content/pm/PackageItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2957
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 2958
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_d

    return-object v0

    .line 2960
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2961
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 2962
    .local v2, "am":Landroid/content/res/AssetManager;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2963
    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 2964
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    return-object v0
.end method

.method private getStagedSessions()I
    .registers 7

    .line 345
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 347
    .local v0, "pw":Ljava/io/PrintWriter;
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
    .local v1, "stagedSessionsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 350
    .local v3, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; sessionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; isStaged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isStagedSessionReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isStagedSessionApplied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isStagedSessionFailed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7b} :catch_7f

    .line 356
    .end local v3  # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_16

    .line 362
    .end local v1  # "stagedSessionsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :cond_7c
    nop

    .line 363
    const/4 v1, 0x1

    return v1

    .line 357
    :catch_7f
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
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

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const/4 v2, 0x0

    return v2
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"  # Ljava/lang/String;

    .line 2248
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    .line 2251
    nop

    .line 2252
    const/4 v0, 0x1

    return v0

    .line 2249
    :catch_6
    move-exception v0

    .line 2250
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 1993
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1994
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_12

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 1995
    .end local v1  # "info":Landroid/content/pm/PackageInfo;
    :catch_13
    move-exception v1

    .line 1996
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isProductServicesApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 2002
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2003
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_12

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProductServices()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 2004
    .end local v1  # "info":Landroid/content/pm/PackageInfo;
    :catch_13
    move-exception v1

    .line 2005
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 1984
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1985
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_12

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 1986
    .end local v1  # "info":Landroid/content/pm/PackageInfo;
    :catch_13
    move-exception v1

    .line 1987
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method static synthetic lambda$runSetHomeActivity$1(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "future"  # Ljava/util/concurrent/CompletableFuture;
    .param p1, "res"  # Landroid/os/Bundle;

    .line 2538
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private linkStateToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"  # I

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

    move-result-object v0

    return-object v0

    .line 2081
    :cond_20
    const-string v0, "always ask"

    return-object v0

    .line 2080
    :cond_23
    const-string/jumbo v0, "never"

    return-object v0

    .line 2079
    :cond_27
    const-string v0, "always"

    return-object v0

    .line 2078
    :cond_2a
    const-string v0, "ask"

    return-object v0

    .line 2077
    :cond_2d
    const-string/jumbo v0, "undefined"

    return-object v0
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "pii"  # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"  # I
    .param p3, "nonLocalized"  # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2941
    if-eqz p3, :cond_7

    .line 2942
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2944
    :cond_7
    if-eqz p2, :cond_15

    .line 2945
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2946
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_15

    .line 2948
    :try_start_f
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 2949
    :catch_14
    move-exception v1

    .line 2953
    .end local v0  # "r":Landroid/content/res/Resources;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 13

    .line 2374
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2375
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2377
    .local v2, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2379
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2382
    const/4 v4, 0x1

    .line 2383
    .local v4, "replaceExisting":Z
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "opt":Ljava/lang/String;
    const/4 v7, 0x2

    if-eqz v5, :cond_2a9

    .line 2384
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x4

    sparse-switch v8, :sswitch_data_2b2

    :cond_2a
    goto/16 :goto_174

    :sswitch_2c
    const-string v8, "--force-sdk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x18

    goto/16 :goto_174

    :sswitch_38
    const-string v8, "--staged"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x1b

    goto/16 :goto_174

    :sswitch_44
    const-string v8, "--restrict-permissions"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v5, 0x7

    goto/16 :goto_174

    :sswitch_4f
    const-string v8, "--user"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x14

    goto/16 :goto_174

    :sswitch_5b
    const-string v8, "--full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x12

    goto/16 :goto_174

    :sswitch_67
    const-string v8, "--apex"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x19

    goto/16 :goto_174

    :sswitch_73
    const-string v8, "--preload"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x13

    goto/16 :goto_174

    :sswitch_7f
    const-string v8, "--ephemeral"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0xf

    goto/16 :goto_174

    :sswitch_8b
    const-string v8, "--originating-uri"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x9

    goto/16 :goto_174

    :sswitch_97
    const-string v8, "--pkg"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0xc

    goto/16 :goto_174

    :sswitch_a3
    const-string v8, "--abi"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0xe

    goto/16 :goto_174

    :sswitch_af
    const-string v8, "-t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v5, 0x3

    goto/16 :goto_174

    :sswitch_ba
    const-string v8, "-r"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v5, v9

    goto/16 :goto_174

    :sswitch_c5
    const-string v8, "-p"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0xb

    goto/16 :goto_174

    :sswitch_d1
    const-string v8, "-i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v5, v7

    goto/16 :goto_174

    :sswitch_dc
    const-string v8, "-g"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v5, 0x6

    goto/16 :goto_174

    :sswitch_e7
    const-string v8, "-f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v5, v11

    goto/16 :goto_174

    :sswitch_f2
    const-string v8, "-d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v5, 0x5

    goto/16 :goto_174

    :sswitch_fd
    const-string v8, "-S"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0xd

    goto/16 :goto_174

    :sswitch_109
    const-string v8, "-R"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v5, v1

    goto :goto_174

    :sswitch_113
    const-string v8, "--multi-package"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x1a

    goto :goto_174

    :sswitch_11e
    const-string v8, "--enable-rollback"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x1c

    goto :goto_174

    :sswitch_129
    const-string v8, "--referrer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0xa

    goto :goto_174

    :sswitch_134
    const-string v8, "--instant"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v5, v10

    goto :goto_174

    :sswitch_13e
    const-string v8, "--instantapp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x11

    goto :goto_174

    :sswitch_149
    const-string v8, "--install-location"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x15

    goto :goto_174

    :sswitch_154
    const-string v8, "--dont-kill"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x8

    goto :goto_174

    :sswitch_15f
    const-string v8, "--force-uuid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x17

    goto :goto_174

    :sswitch_16a
    const-string v8, "--install-reason"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/16 v5, 0x16

    :goto_174
    packed-switch v5, :pswitch_data_328

    .line 2497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2484
    :pswitch_18e  #0x1c
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v5, :cond_196

    .line 2492
    const-string v5, "com.android.shell"

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2494
    :cond_196
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v7, 0x40000

    or-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2495
    goto/16 :goto_2a7

    .line 2481
    :pswitch_19f  #0x1b
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2482
    goto/16 :goto_2a7

    .line 2478
    :pswitch_1a4  #0x1a
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 2479
    goto/16 :goto_2a7

    .line 2474
    :pswitch_1a9  #0x19
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 2475
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2476
    goto/16 :goto_2a7

    .line 2472
    :pswitch_1b1  #0x18
    goto/16 :goto_2a7

    .line 2465
    :pswitch_1b3  #0x17
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2466
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2467
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v7, "internal"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a7

    .line 2468
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_2a7

    .line 2462
    :pswitch_1ce  #0x16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2463
    goto/16 :goto_2a7

    .line 2459
    :pswitch_1da  #0x15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2460
    goto/16 :goto_2a7

    .line 2456
    :pswitch_1e6  #0x14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2457
    goto/16 :goto_2a7

    .line 2453
    :pswitch_1f2  #0x13
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 2454
    goto/16 :goto_2a7

    .line 2450
    :pswitch_1f7  #0x12
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2451
    goto/16 :goto_2a7

    .line 2447
    :pswitch_1fc  #0xf, 0x10, 0x11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2448
    goto/16 :goto_2a7

    .line 2442
    :pswitch_201  #0xe
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2443
    goto/16 :goto_2a7

    .line 2435
    :pswitch_20d  #0xd
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2436
    .local v7, "sizeBytes":J
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_220

    .line 2439
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 2440
    goto/16 :goto_2a7

    .line 2437
    :cond_220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size must be positive"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2429
    .end local v7  # "sizeBytes":J
    :pswitch_228  #0xc
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2430
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_234

    goto/16 :goto_2a7

    .line 2431
    :cond_234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2422
    :pswitch_23c  #0xb
    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2423
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2424
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_249

    goto :goto_2a7

    .line 2425
    :cond_249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing inherit package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2419
    :pswitch_251  #0xa
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2420
    goto :goto_2a7

    .line 2416
    :pswitch_25c  #0x9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2417
    goto :goto_2a7

    .line 2413
    :pswitch_267  #0x8
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2414
    goto :goto_2a7

    .line 2409
    :pswitch_26e  #0x7
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v7, -0x400001

    and-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2411
    goto :goto_2a7

    .line 2406
    :pswitch_277  #0x6
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2407
    goto :goto_2a7

    .line 2403
    :pswitch_27e  #0x5
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2404
    goto :goto_2a7

    .line 2400
    :pswitch_285  #0x4
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v10

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2401
    goto :goto_2a7

    .line 2397
    :pswitch_28b  #0x3
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v11

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2398
    goto :goto_2a7

    .line 2391
    :pswitch_291  #0x2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2392
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_29c

    goto :goto_2a7

    .line 2393
    :cond_29c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing installer package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2388
    :pswitch_2a4  #0x1
    const/4 v4, 0x0

    .line 2389
    goto :goto_2a7

    .line 2386
    :pswitch_2a6  #0x0
    nop

    .line 2497
    :cond_2a7
    :goto_2a7
    goto/16 :goto_16

    .line 2500
    :cond_2a9
    if-eqz v4, :cond_2b0

    .line 2501
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v7

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2503
    :cond_2b0
    return-object v2

    nop

    :sswitch_data_2b2
    .sparse-switch
        -0x7ca7efaa -> :sswitch_16a
        -0x7449dd03 -> :sswitch_15f
        -0x69f9e586 -> :sswitch_154
        -0x4e451eb9 -> :sswitch_149
        -0x43c705c0 -> :sswitch_13e
        -0x38b573bf -> :sswitch_134
        -0x2a211e41 -> :sswitch_129
        -0x26fa19b2 -> :sswitch_11e
        -0xa293dee -> :sswitch_113
        0x5c5 -> :sswitch_109
        0x5c6 -> :sswitch_fd
        0x5d7 -> :sswitch_f2
        0x5d9 -> :sswitch_e7
        0x5da -> :sswitch_dc
        0x5dc -> :sswitch_d1
        0x5e3 -> :sswitch_c5
        0x5e5 -> :sswitch_ba
        0x5e7 -> :sswitch_af
        0x2900ec8 -> :sswitch_a3
        0x290482c -> :sswitch_97
        0x8d57768 -> :sswitch_8b
        0x3eb0e7fd -> :sswitch_7f
        0x3fa0d469 -> :sswitch_73
        0x4f71fec2 -> :sswitch_67
        0x4f74582f -> :sswitch_5b
        0x4f7b216b -> :sswitch_4f
        0x59147c93 -> :sswitch_44
        0x59daeac6 -> :sswitch_38
        0x781e9cb8 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_2a6  #00000000
        :pswitch_2a4  #00000001
        :pswitch_291  #00000002
        :pswitch_28b  #00000003
        :pswitch_285  #00000004
        :pswitch_27e  #00000005
        :pswitch_277  #00000006
        :pswitch_26e  #00000007
        :pswitch_267  #00000008
        :pswitch_25c  #00000009
        :pswitch_251  #0000000a
        :pswitch_23c  #0000000b
        :pswitch_228  #0000000c
        :pswitch_20d  #0000000d
        :pswitch_201  #0000000e
        :pswitch_1fc  #0000000f
        :pswitch_1fc  #00000010
        :pswitch_1fc  #00000011
        :pswitch_1f7  #00000012
        :pswitch_1f2  #00000013
        :pswitch_1e6  #00000014
        :pswitch_1da  #00000015
        :pswitch_1ce  #00000016
        :pswitch_1b3  #00000017
        :pswitch_1b1  #00000018
        :pswitch_1a9  #00000019
        :pswitch_1a4  #0000001a
        :pswitch_19f  #0000001b
        :pswitch_18e  #0000001c
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
    .local v0, "intent":Landroid/content/Intent;
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
    .registers 9
    .param p1, "pr"  # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "ri"  # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"  # Z
    .param p5, "components"  # Z

    .line 904
    if-nez p4, :cond_4

    if-eqz p5, :cond_9c

    .line 906
    :cond_4
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_16

    .line 907
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "comp":Landroid/content/ComponentName;
    goto :goto_3b

    .line 908
    .end local v0  # "comp":Landroid/content/ComponentName;
    :cond_16
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_28

    .line 909
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0  # "comp":Landroid/content/ComponentName;
    goto :goto_3b

    .line 910
    .end local v0  # "comp":Landroid/content/ComponentName;
    :cond_28
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3a

    .line 911
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0  # "comp":Landroid/content/ComponentName;
    goto :goto_3b

    .line 913
    .end local v0  # "comp":Landroid/content/ComponentName;
    :cond_3a
    const/4 v0, 0x0

    .line 915
    .restart local v0  # "comp":Landroid/content/ComponentName;
    :goto_3b
    if-eqz v0, :cond_9c

    .line 916
    if-nez p5, :cond_85

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preferredOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    .line 919
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " specificIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 923
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 924
    return-void

    .line 927
    .end local v0  # "comp":Landroid/content/ComponentName;
    :cond_9c
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method private runClear()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    const/4 v0, 0x0

    .line 1765
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1766
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1767
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1770
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1771
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_28

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    return v3

    .line 1776
    :cond_28
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 1777
    .local v4, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, v4, v0}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 1778
    monitor-enter v4

    .line 1779
    :goto_36
    :try_start_36
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_59

    if-nez v5, :cond_40

    .line 1781
    :try_start_3a
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_59

    .line 1783
    :goto_3d
    goto :goto_36

    .line 1782
    :catch_3e
    move-exception v5

    goto :goto_3d

    .line 1785
    :cond_40
    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_59

    .line 1787
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v5, :cond_4f

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v5, "Success"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    return v6

    .line 1791
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Failed"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    return v3

    .line 1785
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v3
.end method

.method private runCompile()I
    .registers 29
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
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const-string v3, "dalvik.vm.usejitprofiles"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1317
    .local v3, "checkProfiles":Z
    const/4 v4, 0x0

    .line 1318
    .local v4, "forceCompilation":Z
    const/4 v5, 0x0

    .line 1319
    .local v5, "allPackages":Z
    const/4 v6, 0x0

    .line 1320
    .local v6, "clearProfileData":Z
    const/4 v7, 0x0

    .line 1321
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1322
    .local v8, "compilationReason":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1323
    .local v9, "checkProfilesRaw":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1324
    .local v10, "secondaryDex":Z
    const/4 v11, 0x0

    .line 1325
    .local v11, "split":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1328
    .local v12, "compileLayouts":Z
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .local v15, "opt":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v13, :cond_d8

    .line 1329
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2c6

    :cond_25
    goto/16 :goto_8d

    :sswitch_27
    const-string v13, "--check-prof"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x6

    goto :goto_8e

    :sswitch_31
    const-string v13, "--compile-layouts"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x5

    goto :goto_8e

    :sswitch_3b
    const-string v13, "--secondary-dex"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/16 v13, 0x8

    goto :goto_8e

    :sswitch_46
    const-string v13, "-r"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x4

    goto :goto_8e

    :sswitch_50
    const-string v13, "-m"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x3

    goto :goto_8e

    :sswitch_5a
    const-string v13, "-f"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x2

    goto :goto_8e

    :sswitch_64
    const-string v13, "-c"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    move v13, v2

    goto :goto_8e

    :sswitch_6e
    const-string v13, "-a"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x0

    goto :goto_8e

    :sswitch_78
    const-string v13, "--split"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/16 v13, 0x9

    goto :goto_8e

    :sswitch_83
    const-string v13, "--reset"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x7

    goto :goto_8e

    :goto_8d
    const/4 v13, -0x1

    :goto_8e
    packed-switch v13, :pswitch_data_2f0

    .line 1363
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    return v2

    .line 1360
    :pswitch_a6  #0x9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1361
    .end local v11  # "split":Ljava/lang/String;
    .local v2, "split":Ljava/lang/String;
    move-object v11, v2

    goto :goto_d5

    .line 1357
    .end local v2  # "split":Ljava/lang/String;
    .restart local v11  # "split":Ljava/lang/String;
    :pswitch_ac  #0x8
    const/4 v2, 0x1

    .line 1358
    .end local v10  # "secondaryDex":Z
    .local v2, "secondaryDex":Z
    move v10, v2

    goto :goto_d5

    .line 1352
    .end local v2  # "secondaryDex":Z
    .restart local v10  # "secondaryDex":Z
    :pswitch_af  #0x7
    const/4 v2, 0x1

    .line 1353
    .end local v4  # "forceCompilation":Z
    .local v2, "forceCompilation":Z
    const/4 v4, 0x1

    .line 1354
    .end local v6  # "clearProfileData":Z
    .local v4, "clearProfileData":Z
    const-string/jumbo v6, "install"

    .line 1355
    .end local v8  # "compilationReason":Ljava/lang/String;
    .local v6, "compilationReason":Ljava/lang/String;
    move-object v8, v6

    move v6, v4

    move v4, v2

    goto :goto_d5

    .line 1349
    .end local v2  # "forceCompilation":Z
    .local v4, "forceCompilation":Z
    .local v6, "clearProfileData":Z
    .restart local v8  # "compilationReason":Ljava/lang/String;
    :pswitch_b8  #0x6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1350
    .end local v9  # "checkProfilesRaw":Ljava/lang/String;
    .local v2, "checkProfilesRaw":Ljava/lang/String;
    move-object v9, v2

    goto :goto_d5

    .line 1346
    .end local v2  # "checkProfilesRaw":Ljava/lang/String;
    .restart local v9  # "checkProfilesRaw":Ljava/lang/String;
    :pswitch_be  #0x5
    const/4 v2, 0x1

    .line 1347
    .end local v12  # "compileLayouts":Z
    .local v2, "compileLayouts":Z
    move v12, v2

    goto :goto_d5

    .line 1343
    .end local v2  # "compileLayouts":Z
    .restart local v12  # "compileLayouts":Z
    :pswitch_c1  #0x4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1344
    .end local v8  # "compilationReason":Ljava/lang/String;
    .local v2, "compilationReason":Ljava/lang/String;
    move-object v8, v2

    goto :goto_d5

    .line 1340
    .end local v2  # "compilationReason":Ljava/lang/String;
    .restart local v8  # "compilationReason":Ljava/lang/String;
    :pswitch_c7  #0x3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1341
    .end local v7  # "compilerFilter":Ljava/lang/String;
    .local v2, "compilerFilter":Ljava/lang/String;
    move-object v7, v2

    goto :goto_d5

    .line 1337
    .end local v2  # "compilerFilter":Ljava/lang/String;
    .restart local v7  # "compilerFilter":Ljava/lang/String;
    :pswitch_cd  #0x2
    const/4 v2, 0x1

    .line 1338
    .end local v4  # "forceCompilation":Z
    .local v2, "forceCompilation":Z
    move v4, v2

    goto :goto_d5

    .line 1334
    .end local v2  # "forceCompilation":Z
    .restart local v4  # "forceCompilation":Z
    :pswitch_d0  #0x1
    const/4 v2, 0x1

    .line 1335
    .end local v6  # "clearProfileData":Z
    .local v2, "clearProfileData":Z
    move v6, v2

    goto :goto_d5

    .line 1331
    .end local v2  # "clearProfileData":Z
    .restart local v6  # "clearProfileData":Z
    :pswitch_d3  #0x0
    const/4 v2, 0x1

    .line 1332
    .end local v5  # "allPackages":Z
    .local v2, "allPackages":Z
    move v5, v2

    .line 1364
    .end local v2  # "allPackages":Z
    .restart local v5  # "allPackages":Z
    :goto_d5
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 1368
    :cond_d8
    if-eqz v9, :cond_f5

    .line 1369
    const-string/jumbo v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e5

    .line 1370
    const/4 v3, 0x1

    goto :goto_f5

    .line 1371
    :cond_e5
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ef

    .line 1372
    const/4 v3, 0x0

    goto :goto_f5

    .line 1374
    :cond_ef
    const-string v13, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    return v2

    .line 1379
    :cond_f5
    :goto_f5
    if-eqz v7, :cond_f9

    move v13, v2

    goto :goto_fa

    :cond_f9
    const/4 v13, 0x0

    :goto_fa
    move/from16 v20, v13

    .line 1380
    .local v20, "compilerFilterGiven":Z
    if-eqz v8, :cond_100

    move v13, v2

    goto :goto_101

    :cond_100
    const/4 v13, 0x0

    :goto_101
    move/from16 v21, v13

    .line 1382
    .local v21, "compilationReasonGiven":Z
    if-nez v20, :cond_109

    if-nez v21, :cond_109

    if-eqz v12, :cond_121

    :cond_109
    if-nez v20, :cond_10f

    if-eqz v21, :cond_10f

    if-nez v12, :cond_121

    :cond_10f
    if-eqz v20, :cond_115

    if-nez v21, :cond_115

    if-nez v12, :cond_121

    :cond_115
    if-eqz v20, :cond_11b

    if-eqz v21, :cond_11b

    if-eqz v12, :cond_121

    :cond_11b
    if-eqz v20, :cond_127

    if-eqz v21, :cond_127

    if-eqz v12, :cond_127

    .line 1387
    :cond_121
    const-string v13, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    return v2

    .line 1392
    :cond_127
    if-eqz v5, :cond_131

    if-eqz v11, :cond_131

    .line 1393
    const-string v13, "-a cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    return v2

    .line 1397
    :cond_131
    if-eqz v10, :cond_13b

    if-eqz v11, :cond_13b

    .line 1398
    const-string v13, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    return v2

    .line 1402
    :cond_13b
    const/4 v13, 0x0

    .line 1403
    .local v13, "targetCompilerFilter":Ljava/lang/String;
    if-eqz v20, :cond_160

    .line 1404
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_15f

    .line 1405
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \""

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a valid compilation filter."

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    const/4 v2, 0x1

    return v2

    .line 1409
    :cond_15f
    move-object v13, v7

    .line 1411
    :cond_160
    if-eqz v21, :cond_1a3

    .line 1412
    const/4 v2, -0x1

    .line 1413
    .local v2, "reason":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "i":I
    :goto_167
    move/from16 v16, v2

    .end local v2  # "reason":I
    .local v16, "reason":I
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v14, v2, :cond_17f

    .line 1414
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, v14

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 1416
    move v2, v14

    .line 1417
    .end local v16  # "reason":I
    .restart local v2  # "reason":I
    goto :goto_181

    .line 1413
    .end local v2  # "reason":I
    .restart local v16  # "reason":I
    :cond_17a
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto :goto_167

    :cond_17f
    move/from16 v2, v16

    .line 1420
    .end local v14  # "i":I
    .end local v16  # "reason":I
    .restart local v2  # "reason":I
    :goto_181
    const/4 v14, -0x1

    if-ne v2, v14, :cond_19c

    .line 1421
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7  # "compilerFilter":Ljava/lang/String;
    .local v22, "compilerFilter":Ljava/lang/String;
    const-string v7, "Error: Unknown compilation reason: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    const/4 v7, 0x1

    return v7

    .line 1424
    .end local v22  # "compilerFilter":Ljava/lang/String;
    .restart local v7  # "compilerFilter":Ljava/lang/String;
    :cond_19c
    move-object/from16 v22, v7

    .line 1425
    .end local v7  # "compilerFilter":Ljava/lang/String;
    .restart local v22  # "compilerFilter":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v7

    .end local v13  # "targetCompilerFilter":Ljava/lang/String;
    .local v7, "targetCompilerFilter":Ljava/lang/String;
    goto :goto_1a6

    .line 1411
    .end local v2  # "reason":I
    .end local v22  # "compilerFilter":Ljava/lang/String;
    .local v7, "compilerFilter":Ljava/lang/String;
    .restart local v13  # "targetCompilerFilter":Ljava/lang/String;
    :cond_1a3
    move-object/from16 v22, v7

    .end local v7  # "compilerFilter":Ljava/lang/String;
    .restart local v22  # "compilerFilter":Ljava/lang/String;
    move-object v7, v13

    .line 1429
    .end local v13  # "targetCompilerFilter":Ljava/lang/String;
    .local v7, "targetCompilerFilter":Ljava/lang/String;
    :goto_1a6
    const/4 v2, 0x0

    .line 1430
    .local v2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1b0

    .line 1431
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v2

    goto :goto_1c1

    .line 1433
    :cond_1b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1434
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_1bd

    .line 1435
    const-string v14, "Error: package name not specified"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    const/4 v14, 0x1

    return v14

    .line 1438
    :cond_1bd
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1441
    .end local v13  # "packageName":Ljava/lang/String;
    :goto_1c1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v13

    .line 1442
    .local v14, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1443
    .local v13, "index":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1cc
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_25f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v8

    .end local v8  # "compilationReason":Ljava/lang/String;
    .local v24, "compilationReason":Ljava/lang/String;
    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    .line 1444
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1e6

    .line 1445
    move/from16 v25, v6

    .end local v6  # "clearProfileData":Z
    .local v25, "clearProfileData":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v8}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    goto :goto_1e8

    .line 1444
    .end local v25  # "clearProfileData":Z
    .restart local v6  # "clearProfileData":Z
    :cond_1e6
    move/from16 v25, v6

    .line 1448
    .end local v6  # "clearProfileData":Z
    .restart local v25  # "clearProfileData":Z
    :goto_1e8
    if-eqz v5, :cond_216

    .line 1449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v26, v5

    .end local v5  # "allPackages":Z
    .local v26, "allPackages":Z
    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    move v5, v13

    goto :goto_219

    .line 1448
    .end local v26  # "allPackages":Z
    .restart local v5  # "allPackages":Z
    :cond_216
    move/from16 v26, v5

    .end local v5  # "allPackages":Z
    .restart local v26  # "allPackages":Z
    move v5, v13

    .line 1453
    .end local v13  # "index":I
    .local v5, "index":I
    :goto_219
    const/4 v6, 0x1

    .line 1454
    .local v6, "result":Z
    if-eqz v12, :cond_22c

    .line 1455
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 1457
    .local v13, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v6

    .line 1458
    .end local v13  # "internal":Landroid/content/pm/PackageManagerInternal;
    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_24c

    .line 1459
    :cond_22c
    if-eqz v10, :cond_238

    .line 1460
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v8, v7, v4}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_24b

    .line 1462
    :cond_238
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v18, 0x1

    move-object v0, v14

    .end local v14  # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v14, v8

    move-object/from16 v27, v15

    .end local v15  # "opt":Ljava/lang/String;
    .local v27, "opt":Ljava/lang/String;
    move v15, v3

    move-object/from16 v16, v7

    move/from16 v17, v4

    move-object/from16 v19, v11

    invoke-interface/range {v13 .. v19}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v13

    :goto_24b
    move v6, v13

    .line 1466
    :goto_24c
    if-nez v6, :cond_251

    .line 1467
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    .end local v6  # "result":Z
    .end local v8  # "packageName":Ljava/lang/String;
    :cond_251
    move-object v14, v0

    move v13, v5

    move-object/from16 v8, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move-object/from16 v15, v27

    move-object/from16 v0, p0

    goto/16 :goto_1cc

    .line 1471
    .end local v0  # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24  # "compilationReason":Ljava/lang/String;
    .end local v25  # "clearProfileData":Z
    .end local v26  # "allPackages":Z
    .end local v27  # "opt":Ljava/lang/String;
    .local v5, "allPackages":Z
    .local v6, "clearProfileData":Z
    .local v8, "compilationReason":Ljava/lang/String;
    .local v13, "index":I
    .restart local v14  # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "opt":Ljava/lang/String;
    :cond_25f
    move/from16 v26, v5

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object v0, v14

    move-object/from16 v27, v15

    .end local v5  # "allPackages":Z
    .end local v6  # "clearProfileData":Z
    .end local v8  # "compilationReason":Ljava/lang/String;
    .end local v14  # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15  # "opt":Ljava/lang/String;
    .restart local v0  # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24  # "compilationReason":Ljava/lang/String;
    .restart local v25  # "clearProfileData":Z
    .restart local v26  # "allPackages":Z
    .restart local v27  # "opt":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_275

    .line 1472
    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const/4 v5, 0x0

    return v5

    .line 1474
    :cond_275
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_29e

    .line 1475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure: package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be compiled"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const/4 v5, 0x1

    return v5

    .line 1478
    :cond_29e
    const-string v5, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    const/4 v5, 0x1

    .line 1480
    .local v5, "is_first":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1481
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_2b8

    .line 1482
    const/4 v5, 0x0

    goto :goto_2bd

    .line 1484
    :cond_2b8
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    :goto_2bd
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    .end local v8  # "packageName":Ljava/lang/String;
    goto :goto_2a8

    .line 1488
    :cond_2c1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1489
    const/4 v6, 0x1

    return v6

    :sswitch_data_2c6
    .sparse-switch
        -0x60476451 -> :sswitch_83
        -0x60346686 -> :sswitch_78
        0x5d4 -> :sswitch_6e
        0x5d6 -> :sswitch_64
        0x5d9 -> :sswitch_5a
        0x5e0 -> :sswitch_50
        0x5e5 -> :sswitch_46
        0x4baaae9e -> :sswitch_3b
        0x4ee8cb4f -> :sswitch_31
        0x64c6429e -> :sswitch_27
    .end sparse-switch

    :pswitch_data_2f0
    .packed-switch 0x0
        :pswitch_d3  #00000000
        :pswitch_d0  #00000001
        :pswitch_cd  #00000002
        :pswitch_c7  #00000003
        :pswitch_c1  #00000004
        :pswitch_be  #00000005
        :pswitch_b8  #00000006
        :pswitch_af  #00000007
        :pswitch_ac  #00000008
        :pswitch_a6  #00000009
    .end packed-switch
.end method

.method private runDexoptJob()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 1508
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1510
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_1b

    .line 1511
    :cond_1a
    move-object v3, v0

    .line 1510
    :goto_1b
    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v1

    .line 1512
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v1, :cond_28

    const-string v4, "Success"

    goto :goto_2a

    :cond_28
    const-string v4, "Failure"

    :goto_2a
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    if-eqz v1, :cond_31

    const/4 v3, 0x0

    goto :goto_32

    :cond_31
    const/4 v3, -0x1

    :goto_32
    return v3
.end method

.method private runDump()I
    .registers 4

    .line 2610
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2611
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    const/4 v1, 0x1

    return v1

    .line 2615
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2616
    const/4 v1, 0x0

    return v1
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
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 1519
    const/4 v1, 0x0

    return v1
.end method

.method private runGetAppLink()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    const/4 v0, 0x0

    .line 2165
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_33

    .line 2166
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2167
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2169
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    return v3

    .line 2175
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2176
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_43

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    return v3

    .line 2181
    :cond_43
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2182
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const-string v6, "Error: package "

    if-nez v4, :cond_6a

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    return v3

    .line 2187
    :cond_6a
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_8e

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not handle web links."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    return v3

    .line 2193
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2194
    invoke-interface {v6, v1, v0}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v6

    .line 2193
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->linkStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    return v5
.end method

.method private runGetHarmfulAppWarning()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2643
    const/4 v0, -0x2

    .line 2646
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2647
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2648
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2650
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2651
    const/4 v1, -0x1

    return v1

    .line 2655
    :cond_33
    const/4 v1, 0x0

    const-string/jumbo v3, "runGetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2657
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2658
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v0}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2659
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2661
    return v1

    .line 2663
    :cond_53
    const/4 v1, 0x1

    return v1
.end method

.method private runGetInstallLocation()I
    .registers 6
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
    .local v0, "loc":I
    const-string/jumbo v1, "invalid"

    .line 1252
    .local v1, "locStr":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1253
    const-string v1, "auto"

    goto :goto_1a

    .line 1254
    :cond_e
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1255
    const-string/jumbo v1, "internal"

    goto :goto_1a

    .line 1256
    :cond_15
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 1257
    const-string v1, "external"

    .line 1259
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const/4 v2, 0x0

    return v2
.end method

.method private runGetInstantAppResolver()I
    .registers 5

    .line 2573
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2575
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2576
    .local v2, "instantAppsResolver":Landroid/content/ComponentName;
    if-nez v2, :cond_e

    .line 2577
    return v1

    .line 2579
    :cond_e
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    .line 2580
    const/4 v1, 0x0

    return v1

    .line 2581
    .end local v2  # "instantAppsResolver":Landroid/content/ComponentName;
    :catch_17
    move-exception v2

    .line 2582
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    return v1
.end method

.method private runGetModuleInfo()I
    .registers 13

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 309
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 312
    .local v1, "flags":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_51

    .line 313
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, 0x2901001

    if-eq v2, v6, :cond_27

    const v6, 0x1ed785da

    if-eq v2, v6, :cond_1d

    :cond_1c
    goto :goto_31

    :cond_1d
    const-string v2, "--installed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    goto :goto_32

    :cond_27
    const-string v2, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_32

    :goto_31
    move v2, v5

    :goto_32
    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_4b

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    return v5

    .line 318
    :cond_4b
    goto :goto_50

    .line 315
    :cond_4c
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 316
    nop

    .line 321
    :goto_50
    goto :goto_5

    .line 325
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "moduleName":Ljava/lang/String;
    const-string v6, " packageName: "

    if-eqz v2, :cond_7d

    .line 328
    :try_start_59
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v7

    .line 329
    .local v7, "m":Landroid/content/pm/ModuleInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    .end local v7  # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_b1

    .line 332
    :cond_7d
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v7

    .line 333
    .local v7, "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_87
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ModuleInfo;

    .line 334
    .local v9, "m":Landroid/content/pm/ModuleInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_b0} :catch_b3

    .line 335
    .end local v9  # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_87

    .line 340
    .end local v7  # "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :cond_b1
    :goto_b1
    nop

    .line 341
    return v4

    .line 337
    :catch_b3
    move-exception v4

    .line 338
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    return v5
.end method

.method private runGetOemPermissions()I
    .registers 5

    .line 2058
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2059
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2060
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    const/4 v1, 0x1

    return v1

    .line 2063
    :cond_11
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2064
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2065
    .local v1, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2b

    .line 2068
    :cond_22
    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_35

    .line 2066
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    :goto_35
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappDenyPermissions()I
    .registers 5

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2035
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2036
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    const/4 v1, 0x1

    return v1

    .line 2040
    :cond_11
    const/4 v1, 0x0

    .line 2041
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2042
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_47

    .line 2043
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2044
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_47

    .line 2045
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductServicesApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2046
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2047
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_47

    .line 2049
    :cond_3f
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2052
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_51

    .line 2053
    const-string/jumbo v3, "{}"

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2052
    :goto_55
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappPermissions()I
    .registers 5

    .line 2010
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2011
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    const/4 v1, 0x1

    return v1

    .line 2016
    :cond_11
    const/4 v1, 0x0

    .line 2017
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2018
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_47

    .line 2019
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2020
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_47

    .line 2021
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductServicesApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2022
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2023
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_47

    .line 2025
    :cond_3f
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2028
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_51

    .line 2029
    const-string/jumbo v3, "{}"

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2028
    :goto_55
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    const/4 v2, 0x0

    return v2
.end method

.method private runGrantRevokePermission(Z)I
    .registers 9
    .param p1, "grant"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    const/4 v0, 0x0

    .line 1936
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1937
    .local v1, "opt":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1a

    .line 1938
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1943
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1944
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_2b

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    return v3

    .line 1948
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1949
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3b

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    return v3

    .line 1954
    :cond_3b
    if-eqz p1, :cond_43

    .line 1955
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v4, v0}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_48

    .line 1957
    :cond_43
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v4, v0}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1959
    :goto_48
    const/4 v3, 0x0

    return v3
.end method

.method private runHasFeature()I
    .registers 9

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2589
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2590
    .local v1, "featureName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 2591
    const-string v3, "Error: expected FEATURE name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    return v2

    .line 2594
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2596
    .local v3, "versionString":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_1a

    move v5, v4

    goto :goto_1e

    :cond_1a
    :try_start_1a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2597
    .local v5, "version":I
    :goto_1e
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 2598
    .local v6, "hasFeature":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2b} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_2f

    .line 2599
    if-eqz v6, :cond_2e

    move v2, v4

    :cond_2e
    return v2

    .line 2603
    .end local v5  # "version":I
    .end local v6  # "hasFeature":Z
    :catch_2f
    move-exception v4

    .line 2604
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    return v2

    .line 2600
    .end local v4  # "e":Landroid/os/RemoteException;
    :catch_38
    move-exception v4

    .line 2601
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: illegal version number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    return v2
.end method

.method private runInstall()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1057
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1058
    .local v1, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1060
    .local v9, "inPath":Ljava/lang/String;
    invoke-direct {p0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V

    .line 1061
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v10

    .line 1063
    .local v10, "sessionId":I
    const/4 v11, 0x1

    .line 1065
    .local v11, "abandonSession":Z
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v9, :cond_36

    :try_start_1e
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    .line 1066
    const-string v2, "Error: must either specify a package size or an APK file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_90

    .line 1067
    nop

    .line 1084
    if-eqz v11, :cond_35

    .line 1086
    :try_start_30
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    .line 1088
    goto :goto_35

    .line 1087
    :catch_34
    move-exception v2

    .line 1067
    :cond_35
    :goto_35
    return v12

    .line 1069
    :cond_36
    :try_start_36
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_41

    move v2, v12

    goto :goto_42

    :cond_41
    move v2, v13

    :goto_42
    move v14, v2

    .line 1071
    .local v14, "isApex":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_52

    const-string v3, "apex"

    goto :goto_54

    :cond_52
    const-string v3, "apk"

    :goto_54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1072
    .local v7, "splitName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v10

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2
    :try_end_67
    .catchall {:try_start_36 .. :try_end_67} :catchall_90

    if-eqz v2, :cond_72

    .line 1074
    nop

    .line 1084
    if-eqz v11, :cond_71

    .line 1086
    :try_start_6c
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    .line 1088
    goto :goto_71

    .line 1087
    :catch_70
    move-exception v2

    .line 1074
    :cond_71
    :goto_71
    return v12

    .line 1076
    :cond_72
    :try_start_72
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v2
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_90

    if-eqz v2, :cond_81

    .line 1078
    nop

    .line 1084
    if-eqz v11, :cond_80

    .line 1086
    :try_start_7b
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 1088
    goto :goto_80

    .line 1087
    :catch_7f
    move-exception v2

    .line 1078
    :cond_80
    :goto_80
    return v12

    .line 1080
    :cond_81
    const/4 v11, 0x0

    .line 1081
    :try_start_82
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_90

    .line 1082
    nop

    .line 1084
    if-eqz v11, :cond_8f

    .line 1086
    :try_start_8a
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 1088
    goto :goto_8f

    .line 1087
    :catch_8e
    move-exception v2

    .line 1082
    :cond_8f
    :goto_8f
    return v13

    .line 1084
    .end local v7  # "splitName":Ljava/lang/String;
    .end local v14  # "isApex":Z
    :catchall_90
    move-exception v2

    if-eqz v11, :cond_98

    .line 1086
    :try_start_93
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    .line 1088
    goto :goto_98

    .line 1087
    :catch_97
    move-exception v3

    .line 1088
    :cond_98
    :goto_98
    throw v2
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
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallAddSession()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1134
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1136
    .local v1, "parentSessionId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v2, "otherSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 1139
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1141
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_31

    .line 1142
    const-string v3, "Error: At least two sessions are required."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    return v5

    .line 1145
    :cond_31
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result v3

    return v3
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
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallCreate()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1105
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1106
    .local v1, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1110
    .local v2, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: created install session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    const/4 v3, 0x0

    return v3
.end method

.method private runInstallExisting()I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1164
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1165
    .local v0, "userId":I
    const/high16 v3, 0x400000

    .line 1167
    .local v3, "installFlags":I
    const/4 v4, 0x0

    move v12, v4

    move v4, v3

    move v3, v0

    .line 1168
    .end local v0  # "userId":I
    .local v3, "userId":I
    .local v4, "installFlags":I
    .local v12, "waitTillComplete":Z
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_9f

    .line 1169
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    sparse-switch v5, :sswitch_data_15e

    :cond_22
    goto :goto_5e

    :sswitch_23
    const-string v5, "--restrict-permissions"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v6

    goto :goto_5e

    :sswitch_2d
    const-string v5, "--wait"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v7

    goto :goto_5e

    :sswitch_37
    const-string v5, "--user"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v14

    goto :goto_5e

    :sswitch_41
    const-string v5, "--full"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v8

    goto :goto_5e

    :sswitch_4b
    const-string v5, "--ephemeral"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v15

    goto :goto_5e

    :sswitch_55
    const-string v5, "--instant"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v9

    :goto_5e
    if-eqz v0, :cond_94

    if-eq v0, v15, :cond_8e

    if-eq v0, v9, :cond_8e

    if-eq v0, v8, :cond_88

    if-eq v0, v7, :cond_85

    if-eq v0, v6, :cond_7f

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    return v15

    .line 1186
    :cond_7f
    const v0, -0x400001

    and-int/2addr v0, v4

    .line 1187
    .end local v4  # "installFlags":I
    .local v0, "installFlags":I
    move v4, v0

    goto :goto_9d

    .line 1183
    .end local v0  # "installFlags":I
    .restart local v4  # "installFlags":I
    :cond_85
    const/4 v0, 0x1

    .line 1184
    .end local v12  # "waitTillComplete":Z
    .local v0, "waitTillComplete":Z
    move v12, v0

    goto :goto_9d

    .line 1179
    .end local v0  # "waitTillComplete":Z
    .restart local v12  # "waitTillComplete":Z
    :cond_88
    and-int/lit16 v0, v4, -0x801

    .line 1180
    .end local v4  # "installFlags":I
    .local v0, "installFlags":I
    or-int/lit16 v0, v0, 0x4000

    .line 1181
    move v4, v0

    goto :goto_9d

    .line 1175
    .end local v0  # "installFlags":I
    .restart local v4  # "installFlags":I
    :cond_8e
    or-int/lit16 v0, v4, 0x800

    .line 1176
    .end local v4  # "installFlags":I
    .restart local v0  # "installFlags":I
    and-int/lit16 v0, v0, -0x4001

    .line 1177
    move v4, v0

    goto :goto_9d

    .line 1171
    .end local v0  # "installFlags":I
    .restart local v4  # "installFlags":I
    :cond_94
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1172
    .end local v3  # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 1190
    .end local v0  # "userId":I
    .restart local v3  # "userId":I
    :goto_9d
    goto/16 :goto_d

    .line 1194
    :cond_9f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1195
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_ab

    .line 1196
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    return v15

    .line 1200
    :cond_ab
    const/16 v16, 0x0

    .line 1202
    .local v16, "installReason":I
    if-eqz v12, :cond_104

    .line 1203
    :try_start_af
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1204
    .local v0, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    .line 1205
    .local v5, "installer":Landroid/content/pm/IPackageInstaller;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installing package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    nop

    .line 1207
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_dc} :catch_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_af .. :try_end_dc} :catch_101

    const/16 v17, 0x0

    .line 1206
    move-object v6, v11

    move v7, v4

    move/from16 v8, v16

    move v10, v3

    move-object/from16 v18, v11

    .end local v11  # "packageName":Ljava/lang/String;
    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v11, v17

    :try_start_e7
    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 1208
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v6

    .line 1209
    .local v6, "result":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.STATUS"

    invoke-virtual {v6, v7, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1211
    .local v7, "status":I
    const-string v8, "Received intent for package install"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_f9} :catch_fd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e7 .. :try_end_f9} :catch_fd

    .line 1212
    if-nez v7, :cond_fc

    move v15, v14

    :cond_fc
    return v15

    .line 1222
    .end local v0  # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v5  # "installer":Landroid/content/pm/IPackageInstaller;
    .end local v6  # "result":Landroid/content/Intent;
    .end local v7  # "status":I
    :catch_fd
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_156

    .end local v18  # "packageName":Ljava/lang/String;
    .restart local v11  # "packageName":Ljava/lang/String;
    :catch_101
    move-exception v0

    move-object v7, v11

    .end local v11  # "packageName":Ljava/lang/String;
    .restart local v18  # "packageName":Ljava/lang/String;
    goto :goto_156

    .line 1215
    .end local v18  # "packageName":Ljava/lang/String;
    .restart local v11  # "packageName":Ljava/lang/String;
    :cond_104
    move-object/from16 v18, v11

    .end local v11  # "packageName":Ljava/lang/String;
    .restart local v18  # "packageName":Ljava/lang/String;
    :try_start_106
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v10, 0x0

    move-object/from16 v6, v18

    move v7, v3

    move v8, v4

    move/from16 v9, v16

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_113} :catch_153
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_113} :catch_153

    .line 1217
    .local v0, "res":I
    const/4 v5, -0x3

    const-string v6, "Package "

    if-eq v0, v5, :cond_135

    .line 1220
    :try_start_118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_120} :catch_153
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_118 .. :try_end_120} :catch_153

    move-object/from16 v7, v18

    .end local v18  # "packageName":Ljava/lang/String;
    .local v7, "packageName":Ljava/lang/String;
    :try_start_122
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " installed for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    return v14

    .line 1218
    .end local v7  # "packageName":Ljava/lang/String;
    .restart local v18  # "packageName":Ljava/lang/String;
    :cond_135
    move-object/from16 v7, v18

    .end local v18  # "packageName":Ljava/lang/String;
    .restart local v7  # "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v3  # "userId":I
    .end local v4  # "installFlags":I
    .end local v7  # "packageName":Ljava/lang/String;
    .end local v12  # "waitTillComplete":Z
    .end local v13  # "opt":Ljava/lang/String;
    .end local v16  # "installReason":I
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v5
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_151} :catch_151
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_122 .. :try_end_151} :catch_151

    .line 1222
    .end local v0  # "res":I
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    .restart local v3  # "userId":I
    .restart local v4  # "installFlags":I
    .restart local v7  # "packageName":Ljava/lang/String;
    .restart local v12  # "waitTillComplete":Z
    .restart local v13  # "opt":Ljava/lang/String;
    .restart local v16  # "installReason":I
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_151
    move-exception v0

    goto :goto_156

    .end local v7  # "packageName":Ljava/lang/String;
    .restart local v18  # "packageName":Ljava/lang/String;
    :catch_153
    move-exception v0

    move-object/from16 v7, v18

    .line 1223
    .end local v18  # "packageName":Ljava/lang/String;
    .local v0, "e":Landroid/util/AndroidException;
    .restart local v7  # "packageName":Ljava/lang/String;
    :goto_156
    invoke-virtual {v0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    return v15

    :sswitch_data_15e
    .sparse-switch
        -0x38b573bf -> :sswitch_55
        0x3eb0e7fd -> :sswitch_4b
        0x4f74582f -> :sswitch_41
        0x4f7b216b -> :sswitch_37
        0x4f7bc715 -> :sswitch_2d
        0x59147c93 -> :sswitch_23
    .end sparse-switch
.end method

.method private runInstallRemove()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1152
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1154
    .local v1, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "splitName":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 1156
    const-string v4, "Error: split name not specified"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    return v3

    .line 1159
    :cond_19
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v3

    return v3
.end method

.method private runInstallWrite()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    const-wide/16 v0, -0x1

    .line 1118
    .local v0, "sizeBytes":J
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .local v9, "opt":Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 1119
    const-string v2, "-S"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 1122
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1126
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1127
    .local v10, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1128
    .local v11, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 1129
    .local v12, "path":Ljava/lang/String;
    const/4 v8, 0x1

    move-object v2, p0

    move v3, v10

    move-object v4, v12

    move-wide v5, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2

    return v2
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
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 521
    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    return v2

    .line 524
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_d4

    :cond_19
    goto :goto_71

    :sswitch_1a
    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x6

    goto :goto_72

    :sswitch_25
    const-string/jumbo v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    goto :goto_72

    :sswitch_30
    const-string/jumbo v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x4

    goto :goto_72

    :sswitch_3b
    const-string/jumbo v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_72

    :sswitch_46
    const-string/jumbo v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x7

    goto :goto_72

    :sswitch_51
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_72

    :sswitch_5b
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    goto :goto_72

    :sswitch_66
    const-string/jumbo v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x5

    goto :goto_72

    :goto_71
    move v3, v2

    :goto_72
    packed-switch v3, :pswitch_data_f6

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    return v2

    .line 539
    :pswitch_8f  #0x7
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 540
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string/jumbo v2, "list"

    filled-new-array {v2}, [Ljava/lang/String;

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
    :pswitch_b5  #0x6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    .line 535
    :pswitch_ba  #0x5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    .line 533
    :pswitch_bf  #0x3, 0x4
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    .line 530
    :pswitch_c4  #0x2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    .line 528
    :pswitch_c9  #0x1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    .line 526
    :pswitch_ce  #0x0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x3b73d86e -> :sswitch_66
        -0x301acbba -> :sswitch_5b
        -0x11531bc3 -> :sswitch_51
        0x6a68e08 -> :sswitch_46
        0x20752f6e -> :sswitch_3b
        0x2cc154ed -> :sswitch_30
        0x3071b299 -> :sswitch_25
        0x4392f484 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_ce  #00000000
        :pswitch_c9  #00000001
        :pswitch_c4  #00000002
        :pswitch_bf  #00000003
        :pswitch_bf  #00000004
        :pswitch_ba  #00000005
        :pswitch_b5  #00000006
        :pswitch_8f  #00000007
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
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
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
    .local v3, "count":I
    :goto_1f
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_20
    if-ge v4, v3, :cond_66

    .line 564
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 565
    .local v5, "fi":Landroid/content/pm/FeatureInfo;
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
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

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

    iget v7, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 575
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 574
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    .end local v5  # "fi":Landroid/content/pm/FeatureInfo;
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 578
    .end local v4  # "p":I
    :cond_66
    return v2
.end method

.method private runListInstrumentation()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 583
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 584
    .local v1, "showSourceDir":Z
    const/4 v2, 0x0

    .line 588
    .local v2, "targetPackage":Ljava/lang/String;
    :goto_6
    const/4 v3, -0x1

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_47

    .line 589
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0x5d9

    if-eq v4, v7, :cond_18

    :cond_17
    goto :goto_22

    :cond_18
    const-string v4, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v6

    goto :goto_23

    :goto_22
    move v4, v3

    :goto_23
    if-eqz v4, :cond_44

    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_2f

    .line 595
    move-object v2, v5

    goto :goto_46

    .line 597
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_43} :catch_a0

    .line 598
    return v3

    .line 591
    :cond_44
    const/4 v1, 0x1

    .line 592
    nop

    .line 600
    :goto_46
    goto :goto_6

    .line 606
    .end local v5  # "opt":Ljava/lang/String;
    :cond_47
    nop

    .line 608
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 609
    invoke-interface {v3, v2, v6}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 612
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 618
    if-eqz v3, :cond_61

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_62

    :cond_61
    move v4, v6

    .line 619
    .local v4, "count":I
    :goto_62
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_63
    if-ge v5, v4, :cond_9f

    .line 620
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstrumentationInfo;

    .line 621
    .local v7, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string/jumbo v8, "instrumentation:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    if-eqz v1, :cond_7d

    .line 623
    iget-object v8, v7, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    :cond_7d
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const-string v9, " (target="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    .end local v7  # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8  # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 632
    .end local v5  # "p":I
    :cond_9f
    return v6

    .line 603
    .end local v3  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v4  # "count":I
    :catch_a0
    move-exception v4

    .line 604
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return v3
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
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "rawList":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_1b

    .line 640
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 644
    .end local v3  # "i":I
    :cond_1b
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 653
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 654
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_28
    if-ge v4, v3, :cond_3c

    .line 655
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 656
    .local v5, "lib":Ljava/lang/String;
    const-string/jumbo v6, "library:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    .end local v5  # "lib":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 659
    .end local v4  # "p":I
    :cond_3c
    const/4 v4, 0x0

    return v4
.end method

.method private runListPackages(Z)I
    .registers 29
    .param p1, "showSourceDir"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 664
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 665
    .local v0, "getFlags":I
    const/4 v3, 0x0

    .local v3, "listDisabled":Z
    const/4 v4, 0x0

    .line 666
    .local v4, "listEnabled":Z
    const/4 v5, 0x0

    .local v5, "listSystem":Z
    const/4 v6, 0x0

    .line 667
    .local v6, "listThirdParty":Z
    const/4 v7, 0x0

    .line 668
    .local v7, "listInstaller":Z
    const/4 v8, 0x0

    .line 669
    .local v8, "showUid":Z
    const/4 v9, 0x0

    .line 670
    .local v9, "showVersionCode":Z
    const/4 v10, 0x0

    .line 671
    .local v10, "listApexOnly":Z
    const/4 v11, -0x1

    .line 672
    .local v11, "uid":I
    const/4 v12, 0x0

    move v13, v6

    move v14, v7

    move v6, v4

    move v7, v5

    move/from16 v4, p1

    move v5, v3

    move v3, v0

    .line 675
    .end local v0  # "getFlags":I
    .end local p1  # "showSourceDir":Z
    .local v3, "getFlags":I
    .local v4, "showSourceDir":Z
    .local v5, "listDisabled":Z
    .local v6, "listEnabled":Z
    .local v7, "listSystem":Z
    .local v12, "userId":I
    .local v13, "listThirdParty":Z
    .local v14, "listInstaller":Z
    :goto_19
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1d} :catch_27b

    move-object/from16 p1, v0

    .local p1, "opt":Ljava/lang/String;
    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_16c

    .line 676
    :try_start_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_29} :catch_15f

    sparse-switch v0, :sswitch_data_2a0

    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .local v15, "opt":Ljava/lang/String;
    goto/16 :goto_f2

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_30
    :try_start_30
    const-string v0, "--apex-only"

    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0xb

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_3e
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "--user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0xc

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_4c
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "--uid"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0xd

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_5a
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-u"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0x8

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_68
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-s"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x6

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_75
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-l"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x5

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_82
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-i"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x4

    goto/16 :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_8f
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-f"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x3

    goto :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_9b
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-e"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    move/from16 v0, v17

    goto :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_a8
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-d"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    move/from16 v0, v16

    goto :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_b5
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-a"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x2

    goto :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_c1
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-U"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x7

    goto :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_cd
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "-3"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0x9

    goto :goto_f3

    .end local v15  # "opt":Ljava/lang/String;
    .restart local p1  # "opt":Ljava/lang/String;
    :sswitch_da
    move-object/from16 v15, p1

    .end local p1  # "opt":Ljava/lang/String;
    .restart local v15  # "opt":Ljava/lang/String;
    const-string v0, "--show-versioncode"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_e2} :catch_e7

    if-eqz v0, :cond_f2

    const/16 v0, 0xa

    goto :goto_f3

    .line 727
    .end local v15  # "opt":Ljava/lang/String;
    :catch_e7
    move-exception v0

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v19, v12

    goto/16 :goto_286

    .line 676
    .restart local v15  # "opt":Ljava/lang/String;
    :cond_f2
    :goto_f2
    const/4 v0, -0x1

    :goto_f3
    packed-switch v0, :pswitch_data_2da

    .line 723
    :try_start_f6
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_f8
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_f8} :catch_15f

    goto :goto_13c

    .line 719
    :pswitch_f9  #0xd
    const/4 v8, 0x1

    .line 720
    :try_start_fa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 721
    .end local v11  # "uid":I
    .local v0, "uid":I
    move v11, v0

    goto :goto_13a

    .line 716
    .end local v0  # "uid":I
    .restart local v11  # "uid":I
    :pswitch_104  #0xc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0
    :try_end_10c
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_10c} :catch_e7

    .line 717
    .end local v12  # "userId":I
    .local v0, "userId":I
    move v12, v0

    goto :goto_13a

    .line 712
    .end local v0  # "userId":I
    .restart local v12  # "userId":I
    :pswitch_10e  #0xb
    const/high16 v0, 0x40000000  # 2.0f

    or-int/2addr v0, v3

    .line 713
    .end local v3  # "getFlags":I
    .local v0, "getFlags":I
    const/4 v3, 0x1

    .line 714
    .end local v10  # "listApexOnly":Z
    .local v3, "listApexOnly":Z
    move v10, v3

    move v3, v0

    goto :goto_13a

    .line 709
    .end local v0  # "getFlags":I
    .local v3, "getFlags":I
    .restart local v10  # "listApexOnly":Z
    :pswitch_115  #0xa
    const/4 v0, 0x1

    .line 710
    .end local v9  # "showVersionCode":Z
    .local v0, "showVersionCode":Z
    move v9, v0

    goto :goto_13a

    .line 706
    .end local v0  # "showVersionCode":Z
    .restart local v9  # "showVersionCode":Z
    :pswitch_118  #0x9
    const/4 v0, 0x1

    .line 707
    .end local v13  # "listThirdParty":Z
    .local v0, "listThirdParty":Z
    move v13, v0

    goto :goto_13a

    .line 703
    .end local v0  # "listThirdParty":Z
    .restart local v13  # "listThirdParty":Z
    :pswitch_11b  #0x8
    or-int/lit16 v0, v3, 0x2000

    .line 704
    .end local v3  # "getFlags":I
    .local v0, "getFlags":I
    move v3, v0

    goto :goto_13a

    .line 700
    .end local v0  # "getFlags":I
    .restart local v3  # "getFlags":I
    :pswitch_11f  #0x7
    const/4 v0, 0x1

    .line 701
    .end local v8  # "showUid":Z
    .local v0, "showUid":Z
    move v8, v0

    goto :goto_13a

    .line 697
    .end local v0  # "showUid":Z
    .restart local v8  # "showUid":Z
    :pswitch_122  #0x6
    const/4 v0, 0x1

    .line 698
    .end local v7  # "listSystem":Z
    .local v0, "listSystem":Z
    move v7, v0

    goto :goto_13a

    .line 695
    .end local v0  # "listSystem":Z
    .restart local v7  # "listSystem":Z
    :pswitch_125  #0x5
    goto :goto_13a

    .line 691
    :pswitch_126  #0x4
    const/4 v0, 0x1

    .line 692
    .end local v14  # "listInstaller":Z
    .local v0, "listInstaller":Z
    move v14, v0

    goto :goto_13a

    .line 688
    .end local v0  # "listInstaller":Z
    .restart local v14  # "listInstaller":Z
    :pswitch_129  #0x3
    const/4 v0, 0x1

    .line 689
    .end local v4  # "showSourceDir":Z
    .local v0, "showSourceDir":Z
    move v4, v0

    goto :goto_13a

    .line 684
    .end local v0  # "showSourceDir":Z
    .restart local v4  # "showSourceDir":Z
    :pswitch_12c  #0x2
    const v0, 0x402000

    or-int/2addr v0, v3

    .line 685
    .end local v3  # "getFlags":I
    .local v0, "getFlags":I
    const/high16 v3, 0x20000000

    or-int/2addr v0, v3

    .line 686
    move v3, v0

    goto :goto_13a

    .line 681
    .end local v0  # "getFlags":I
    .restart local v3  # "getFlags":I
    :pswitch_135  #0x1
    const/4 v0, 0x1

    .line 682
    .end local v6  # "listEnabled":Z
    .local v0, "listEnabled":Z
    move v6, v0

    goto :goto_13a

    .line 678
    .end local v0  # "listEnabled":Z
    .restart local v6  # "listEnabled":Z
    :pswitch_138  #0x0
    const/4 v0, 0x1

    .line 679
    .end local v5  # "listDisabled":Z
    .local v0, "listDisabled":Z
    move v5, v0

    .line 724
    .end local v0  # "listDisabled":Z
    .restart local v5  # "listDisabled":Z
    :goto_13a
    goto/16 :goto_19

    .line 723
    :goto_13c
    :try_start_13c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13f
    .catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_13f} :catch_15f

    move/from16 p1, v8

    .end local v8  # "showUid":Z
    .local p1, "showUid":Z
    :try_start_141
    const-string v8, "Error: Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/RuntimeException; {:try_start_141 .. :try_end_150} :catch_152

    .line 724
    const/4 v8, -0x1

    return v8

    .line 727
    .end local v15  # "opt":Ljava/lang/String;
    :catch_152
    move-exception v0

    move/from16 v8, p1

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v19, v12

    goto/16 :goto_286

    .end local p1  # "showUid":Z
    .restart local v8  # "showUid":Z
    :catch_15f
    move-exception v0

    move/from16 p1, v8

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v19, v12

    .end local v8  # "showUid":Z
    .restart local p1  # "showUid":Z
    goto/16 :goto_286

    .line 675
    .restart local v8  # "showUid":Z
    .local p1, "opt":Ljava/lang/String;
    :cond_16c
    move-object/from16 v15, p1

    move/from16 p1, v8

    .line 730
    .end local v8  # "showUid":Z
    .local p1, "showUid":Z
    nop

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "filter":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 736
    invoke-interface {v8, v3, v12}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .line 737
    .local v8, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 739
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v18, v3

    .end local v3  # "getFlags":I
    .local v18, "getFlags":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    .line 740
    .local v3, "count":I
    const/16 v19, 0x0

    move-object/from16 v20, v8

    move/from16 v8, v19

    .local v8, "p":I
    .local v20, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :goto_18b
    if-ge v8, v3, :cond_27a

    .line 741
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v3

    .end local v3  # "count":I
    .local v21, "count":I
    move-object/from16 v3, v19

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 742
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1ad

    move/from16 v19, v12

    .end local v12  # "userId":I
    .local v19, "userId":I
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1af

    .line 743
    move-object/from16 v23, v0

    move/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v22, v15

    goto/16 :goto_26a

    .line 742
    .end local v19  # "userId":I
    .restart local v12  # "userId":I
    :cond_1ad
    move/from16 v19, v12

    .line 745
    .end local v12  # "userId":I
    .restart local v19  # "userId":I
    :cond_1af
    iget-boolean v12, v3, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 746
    .local v12, "isApex":Z
    move-object/from16 v22, v15

    const/4 v15, -0x1

    .end local v15  # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v22, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eq v11, v15, :cond_1c6

    if-nez v12, :cond_1c6

    iget-object v15, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v15, v11, :cond_1c6

    .line 747
    move-object/from16 v23, v0

    move/from16 v26, v4

    move/from16 v25, v5

    goto/16 :goto_26a

    .line 750
    :cond_1c6
    if-nez v12, :cond_1d3

    iget-object v15, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_1d3

    move/from16 v15, v17

    goto :goto_1d5

    :cond_1d3
    move/from16 v15, v16

    .line 752
    .local v15, "isSystem":Z
    :goto_1d5
    if-nez v12, :cond_1e2

    move-object/from16 v23, v0

    .end local v0  # "filter":Ljava/lang/String;
    .local v23, "filter":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1e4

    move/from16 v0, v17

    goto :goto_1e6

    .end local v23  # "filter":Ljava/lang/String;
    .restart local v0  # "filter":Ljava/lang/String;
    :cond_1e2
    move-object/from16 v23, v0

    .end local v0  # "filter":Ljava/lang/String;
    .restart local v23  # "filter":Ljava/lang/String;
    :cond_1e4
    move/from16 v0, v16

    .line 753
    .local v0, "isEnabled":Z
    :goto_1e6
    if-eqz v5, :cond_1f1

    if-nez v0, :cond_1eb

    goto :goto_1f1

    :cond_1eb
    move/from16 v26, v4

    move/from16 v25, v5

    goto/16 :goto_26a

    :cond_1f1
    :goto_1f1
    if-eqz v6, :cond_1f5

    if-eqz v0, :cond_1eb

    :cond_1f5
    if-eqz v7, :cond_1f9

    if-eqz v15, :cond_1eb

    :cond_1f9
    if-eqz v13, :cond_1fd

    if-nez v15, :cond_1eb

    :cond_1fd
    if-eqz v10, :cond_201

    if-eqz v12, :cond_1eb

    .line 758
    :cond_201
    move/from16 v24, v0

    .end local v0  # "isEnabled":Z
    .local v24, "isEnabled":Z
    const-string/jumbo v0, "package:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    if-eqz v4, :cond_219

    if-nez v12, :cond_219

    .line 760
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    :cond_219
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    if-eqz v9, :cond_241

    .line 765
    const-string v0, " versionCode:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_235

    .line 767
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v26, v4

    move/from16 v25, v5

    .end local v4  # "showSourceDir":Z
    .end local v5  # "listDisabled":Z
    .local v25, "listDisabled":Z
    .local v26, "showSourceDir":Z
    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_245

    .line 769
    .end local v25  # "listDisabled":Z
    .end local v26  # "showSourceDir":Z
    .restart local v4  # "showSourceDir":Z
    .restart local v5  # "listDisabled":Z
    :cond_235
    move/from16 v26, v4

    move/from16 v25, v5

    .end local v4  # "showSourceDir":Z
    .end local v5  # "listDisabled":Z
    .restart local v25  # "listDisabled":Z
    .restart local v26  # "showSourceDir":Z
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_245

    .line 764
    .end local v25  # "listDisabled":Z
    .end local v26  # "showSourceDir":Z
    .restart local v4  # "showSourceDir":Z
    .restart local v5  # "listDisabled":Z
    :cond_241
    move/from16 v26, v4

    move/from16 v25, v5

    .line 772
    .end local v4  # "showSourceDir":Z
    .end local v5  # "listDisabled":Z
    .restart local v25  # "listDisabled":Z
    .restart local v26  # "showSourceDir":Z
    :goto_245
    if-eqz v14, :cond_257

    .line 773
    const-string v0, "  installer="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    :cond_257
    if-eqz p1, :cond_267

    if-nez v12, :cond_267

    .line 777
    const-string v0, " uid:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 780
    :cond_267
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 740
    .end local v3  # "info":Landroid/content/pm/PackageInfo;
    .end local v12  # "isApex":Z
    .end local v15  # "isSystem":Z
    .end local v24  # "isEnabled":Z
    :goto_26a
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v19

    move/from16 v3, v21

    move-object/from16 v15, v22

    move-object/from16 v0, v23

    move/from16 v5, v25

    move/from16 v4, v26

    goto/16 :goto_18b

    .line 783
    .end local v8  # "p":I
    .end local v19  # "userId":I
    .end local v21  # "count":I
    .end local v22  # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v23  # "filter":Ljava/lang/String;
    .end local v25  # "listDisabled":Z
    .end local v26  # "showSourceDir":Z
    .local v0, "filter":Ljava/lang/String;
    .local v3, "count":I
    .restart local v4  # "showSourceDir":Z
    .restart local v5  # "listDisabled":Z
    .local v12, "userId":I
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_27a
    return v16

    .line 727
    .end local v0  # "filter":Ljava/lang/String;
    .end local v15  # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v18  # "getFlags":I
    .end local v20  # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .end local p1  # "showUid":Z
    .local v3, "getFlags":I
    .local v8, "showUid":Z
    :catch_27b
    move-exception v0

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 p1, v8

    move/from16 v19, v12

    .line 728
    .end local v3  # "getFlags":I
    .end local v4  # "showSourceDir":Z
    .end local v5  # "listDisabled":Z
    .end local v12  # "userId":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v18  # "getFlags":I
    .restart local v19  # "userId":I
    .restart local v25  # "listDisabled":Z
    .restart local v26  # "showSourceDir":Z
    :goto_286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    const/4 v3, -0x1

    return v3

    :sswitch_data_2a0
    .sparse-switch
        -0x1d6f426b -> :sswitch_da
        0x5a6 -> :sswitch_cd
        0x5c8 -> :sswitch_c1
        0x5d4 -> :sswitch_b5
        0x5d7 -> :sswitch_a8
        0x5d8 -> :sswitch_9b
        0x5d9 -> :sswitch_8f
        0x5dc -> :sswitch_82
        0x5df -> :sswitch_75
        0x5e6 -> :sswitch_68
        0x5e8 -> :sswitch_5a
        0x2905ab0 -> :sswitch_4c
        0x4f7b216b -> :sswitch_3e
        0x6bd72bd7 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x0
        :pswitch_138  #00000000
        :pswitch_135  #00000001
        :pswitch_12c  #00000002
        :pswitch_129  #00000003
        :pswitch_126  #00000004
        :pswitch_125  #00000005
        :pswitch_122  #00000006
        :pswitch_11f  #00000007
        :pswitch_11b  #00000008
        :pswitch_118  #00000009
        :pswitch_115  #0000000a
        :pswitch_10e  #0000000b
        :pswitch_104  #0000000c
        :pswitch_f9  #0000000d
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
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 790
    .local v1, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 791
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_14
    if-ge v4, v3, :cond_2a

    .line 792
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 793
    .local v5, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    iget-object v6, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    .end local v5  # "pgi":Landroid/content/pm/PermissionGroupInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 796
    .end local v4  # "p":I
    :cond_2a
    return v2
.end method

.method private runListPermissions()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 801
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 802
    .local v1, "labels":Z
    const/4 v2, 0x0

    .line 803
    .local v2, "groups":Z
    const/4 v3, 0x0

    .line 804
    .local v3, "userOnly":Z
    const/4 v4, 0x0

    .line 805
    .local v4, "summary":Z
    const/4 v5, 0x0

    .line 807
    .local v5, "dangerousOnly":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v6, :cond_8d

    .line 808
    const/4 v6, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v7, v8, :cond_57

    const/16 v8, 0x5e6

    if-eq v7, v8, :cond_4d

    const/16 v8, 0x5e8

    if-eq v7, v8, :cond_43

    const/16 v8, 0x5d9

    if-eq v7, v8, :cond_39

    const/16 v8, 0x5da

    if-eq v7, v8, :cond_2f

    :cond_2e
    goto :goto_60

    :cond_2f
    const-string v7, "-g"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v6, v11

    goto :goto_60

    :cond_39
    const-string v7, "-f"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v6, v12

    goto :goto_60

    :cond_43
    const-string v7, "-u"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v6, v9

    goto :goto_60

    :cond_4d
    const-string v7, "-s"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v6, v10

    goto :goto_60

    :cond_57
    const-string v7, "-d"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v6, v14

    :goto_60
    if-eqz v6, :cond_89

    if-eq v6, v12, :cond_87

    if-eq v6, v11, :cond_85

    if-eq v6, v10, :cond_81

    if-eq v6, v9, :cond_7f

    .line 827
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    return v12

    .line 824
    :cond_7f
    const/4 v3, 0x1

    .line 825
    goto :goto_8b

    .line 819
    :cond_81
    const/4 v2, 0x1

    .line 820
    const/4 v1, 0x1

    .line 821
    const/4 v4, 0x1

    .line 822
    goto :goto_8b

    .line 816
    :cond_85
    const/4 v2, 0x1

    .line 817
    goto :goto_8b

    .line 813
    :cond_87
    const/4 v1, 0x1

    .line 814
    goto :goto_8b

    .line 810
    :cond_89
    const/4 v5, 0x1

    .line 811
    nop

    .line 828
    :goto_8b
    goto/16 :goto_9

    .line 832
    :cond_8d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 833
    .local v15, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_bb

    .line 834
    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 835
    invoke-interface {v6, v14}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 836
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 837
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a6
    if-ge v8, v7, :cond_b6

    .line 838
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v8, v8, 0x1

    goto :goto_a6

    .line 840
    .end local v8  # "i":I
    :cond_b6
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v6  # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v7  # "count":I
    goto :goto_c4

    .line 842
    :cond_bb
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 843
    .local v6, "grp":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v6  # "grp":Ljava/lang/String;
    :goto_c4
    const-string v11, ""

    if-eqz v5, :cond_f8

    .line 847
    const-string v6, "Dangerous Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    move-object v14, v11

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 852
    if-eqz v3, :cond_124

    .line 853
    const-string v6, "Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_124

    .line 859
    :cond_f8
    move-object v14, v11

    if-eqz v3, :cond_10f

    .line 860
    const-string v6, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_124

    .line 866
    :cond_10f
    const-string v6, "All Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    const/16 v11, -0x2710

    const/16 v12, 0x2710

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 871
    :cond_124
    :goto_124
    const/4 v6, 0x0

    return v6
.end method

.method private runPath()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 506
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 509
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 511
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    const/4 v3, 0x1

    return v3

    .line 514
    :cond_28
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method private runQueryIntentActivities()I
    .registers 12

    .line 956
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_94

    .line 959
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 961
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 962
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 963
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 964
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    if-eqz v1, :cond_84

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_25

    goto :goto_84

    .line 967
    :cond_25
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v4, :cond_63

    .line 968
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " activities found:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 970
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    .local v4, "i":I
    :goto_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_62

    .line 971
    const-string v5, "  Activity #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    const-string v7, "    "

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 970
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 974
    .end local v4  # "i":I
    .end local v6  # "pr":Landroid/util/PrintWriterPrinter;
    :cond_62
    goto :goto_89

    .line 975
    :cond_63
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 976
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    move v10, v4

    .local v10, "i":I
    :goto_6a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_89

    .line 977
    const-string v6, ""

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 976
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 965
    .end local v5  # "pr":Landroid/util/PrintWriterPrinter;
    .end local v10  # "i":I
    :cond_84
    :goto_84
    const-string v4, "No activities found"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8b

    .line 983
    .end local v1  # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2  # "pw":Ljava/io/PrintWriter;
    :cond_89
    :goto_89
    nop

    .line 984
    return v3

    .line 981
    :catch_8b
    move-exception v1

    .line 982
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 957
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_94
    move-exception v0

    .line 958
    .local v0, "e":Ljava/net/URISyntaxException;
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
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_94

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1029
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1030
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1031
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1032
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    if-eqz v1, :cond_84

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_25

    goto :goto_84

    .line 1035
    :cond_25
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v4, :cond_63

    .line 1036
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " receivers found:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1038
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    .local v4, "i":I
    :goto_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_62

    .line 1039
    const-string v5, "  Receiver #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    const-string v7, "    "

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1038
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1042
    .end local v4  # "i":I
    .end local v6  # "pr":Landroid/util/PrintWriterPrinter;
    :cond_62
    goto :goto_89

    .line 1043
    :cond_63
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1044
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    move v10, v4

    .local v10, "i":I
    :goto_6a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_89

    .line 1045
    const-string v6, ""

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1044
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 1033
    .end local v5  # "pr":Landroid/util/PrintWriterPrinter;
    .end local v10  # "i":I
    :cond_84
    :goto_84
    const-string v4, "No receivers found"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8b

    .line 1051
    .end local v1  # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2  # "pw":Ljava/io/PrintWriter;
    :cond_89
    :goto_89
    nop

    .line 1052
    return v3

    .line 1049
    :catch_8b
    move-exception v1

    .line 1050
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1025
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_94
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/net/URISyntaxException;
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
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_94

    .line 993
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 995
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 996
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 997
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 998
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    if-eqz v1, :cond_84

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_25

    goto :goto_84

    .line 1001
    :cond_25
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v4, :cond_63

    .line 1002
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " services found:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1004
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    .local v4, "i":I
    :goto_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_62

    .line 1005
    const-string v5, "  Service #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    const-string v7, "    "

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1004
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1008
    .end local v4  # "i":I
    .end local v6  # "pr":Landroid/util/PrintWriterPrinter;
    :cond_62
    goto :goto_89

    .line 1009
    :cond_63
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1010
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    move v10, v4

    .local v10, "i":I
    :goto_6a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_89

    .line 1011
    const-string v6, ""

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1010
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 999
    .end local v5  # "pr":Landroid/util/PrintWriterPrinter;
    .end local v10  # "i":I
    :cond_84
    :goto_84
    const-string v4, "No services found"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8b

    .line 1017
    .end local v1  # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2  # "pw":Ljava/io/PrintWriter;
    :cond_89
    :goto_89
    nop

    .line 1018
    return v3

    .line 1015
    :catch_8b
    move-exception v1

    .line 1016
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 991
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_94
    move-exception v0

    .line 992
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "splitName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1721
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 1722
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1723
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1724
    nop

    .line 1725
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1726
    .local v2, "sessionId":I
    const/4 v3, 0x1

    .line 1728
    .local v3, "abandonSession":Z
    const/4 v4, 0x0

    :try_start_1a
    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v5
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_48

    const/4 v6, 0x1

    if-eqz v5, :cond_2a

    .line 1730
    nop

    .line 1740
    if-eqz v3, :cond_29

    .line 1742
    :try_start_24
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 1744
    goto :goto_29

    .line 1743
    :catch_28
    move-exception v4

    .line 1730
    :cond_29
    :goto_29
    return v6

    .line 1732
    :cond_2a
    :try_start_2a
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v5
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_48

    if-eqz v5, :cond_39

    .line 1734
    nop

    .line 1740
    if-eqz v3, :cond_38

    .line 1742
    :try_start_33
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 1744
    goto :goto_38

    .line 1743
    :catch_37
    move-exception v4

    .line 1734
    :cond_38
    :goto_38
    return v6

    .line 1736
    :cond_39
    const/4 v3, 0x0

    .line 1737
    :try_start_3a
    const-string v5, "Success"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    .line 1738
    nop

    .line 1740
    if-eqz v3, :cond_47

    .line 1742
    :try_start_42
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 1744
    goto :goto_47

    .line 1743
    :catch_46
    move-exception v5

    .line 1738
    :cond_47
    :goto_47
    return v4

    .line 1740
    :catchall_48
    move-exception v5

    if-eqz v3, :cond_50

    .line 1742
    :try_start_4b
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 1744
    goto :goto_50

    .line 1743
    :catch_4f
    move-exception v4

    .line 1744
    :cond_50
    :goto_50
    throw v5
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
    .registers 10

    .line 933
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_3c

    .line 936
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 938
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 940
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move-object v8, v2

    .line 941
    .local v8, "pw":Ljava/io/PrintWriter;
    if-nez v1, :cond_20

    .line 942
    const-string v2, "No activity found"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 944
    :cond_20
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v8}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 945
    .local v3, "pr":Landroid/util/PrintWriterPrinter;
    const-string v4, ""

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v2, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_30} :catch_33

    .line 949
    .end local v1  # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3  # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8  # "pw":Ljava/io/PrintWriter;
    :goto_30
    nop

    .line 950
    const/4 v1, 0x0

    return v1

    .line 947
    :catch_33
    move-exception v1

    .line 948
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 934
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_3c
    move-exception v0

    .line 935
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRollbackApp()I
    .registers 12

    .line 408
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 410
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 412
    const-string v3, "Error: package name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return v2

    .line 416
    :cond_11
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 418
    .local v3, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :try_start_17
    const-string/jumbo v4, "rollback"

    .line 419
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 418
    invoke-static {v4}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v4

    .line 421
    .local v4, "rm":Landroid/content/rollback/IRollbackManager;
    const/4 v5, 0x0

    .line 422
    .local v5, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-interface {v4}, Landroid/content/rollback/IRollbackManager;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/RollbackInfo;

    .line 423
    .local v7, "r":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    .line 424
    .local v9, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 425
    move-object v5, v7

    .line 426
    goto :goto_5c

    .line 428
    .end local v9  # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_5b
    goto :goto_43

    .line 429
    .end local v7  # "r":Landroid/content/rollback/RollbackInfo;
    :cond_5c
    :goto_5c
    goto :goto_2f

    .line 431
    :cond_5d
    if-nez v5, :cond_74

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available rollbacks for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    return v2

    .line 436
    :cond_74
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    .line 437
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    const-string v8, "com.android.shell"

    .line 438
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    .line 436
    invoke-interface {v4, v6, v7, v8, v9}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_85} :catch_86

    .line 441
    .end local v4  # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v5  # "rollback":Landroid/content/rollback/RollbackInfo;
    goto :goto_87

    .line 439
    :catch_86
    move-exception v4

    .line 443
    :goto_87
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 444
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.rollback.extra.STATUS"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 446
    .local v5, "status":I
    if-nez v5, :cond_9a

    .line 447
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const/4 v2, 0x0

    return v2

    .line 450
    :cond_9a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v7, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 450
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    return v2
.end method

.method private runSetAppLink()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    const/4 v0, 0x0

    .line 2091
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_33

    .line 2092
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2093
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2095
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    return v3

    .line 2101
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2102
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_43

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    return v3

    .line 2108
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2109
    .local v4, "modeString":Ljava/lang/String;
    if-nez v4, :cond_53

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no app link state specified."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    const/4 v11, 0x0

    sparse-switch v7, :sswitch_data_136

    :cond_63
    goto :goto_97

    :sswitch_64
    const-string v7, "always-ask"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    move v6, v9

    goto :goto_97

    :sswitch_6e
    const-string/jumbo v7, "never"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    move v6, v8

    goto :goto_97

    :sswitch_79
    const-string v7, "ask"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    move v6, v10

    goto :goto_97

    :sswitch_83
    const-string/jumbo v7, "undefined"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    move v6, v11

    goto :goto_97

    :sswitch_8e
    const-string v7, "always"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    move v6, v3

    :goto_97
    if-eqz v6, :cond_c7

    if-eq v6, v3, :cond_c5

    if-eq v6, v10, :cond_c3

    if-eq v6, v9, :cond_c1

    if-eq v6, v8, :cond_bf

    .line 2137
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown app link state \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    return v3

    .line 2133
    :cond_bf
    const/4 v5, 0x3

    .line 2134
    .local v5, "newMode":I
    goto :goto_c9

    .line 2129
    .end local v5  # "newMode":I
    :cond_c1
    const/4 v5, 0x4

    .line 2130
    .restart local v5  # "newMode":I
    goto :goto_c9

    .line 2125
    .end local v5  # "newMode":I
    :cond_c3
    const/4 v5, 0x1

    .line 2126
    .restart local v5  # "newMode":I
    goto :goto_c9

    .line 2121
    .end local v5  # "newMode":I
    :cond_c5
    const/4 v5, 0x2

    .line 2122
    .restart local v5  # "newMode":I
    goto :goto_c9

    .line 2117
    .end local v5  # "newMode":I
    :cond_c7
    const/4 v5, 0x0

    .line 2118
    .restart local v5  # "newMode":I
    nop

    .line 2141
    :goto_c9
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v11, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2142
    .local v6, "info":Landroid/content/pm/PackageInfo;
    const-string v7, "Error: package "

    if-nez v6, :cond_ef

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    return v3

    .line 2147
    :cond_ef
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_113

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not handle web links."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    return v3

    .line 2152
    :cond_113
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1, v5, v0}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_134

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: unable to update app link status for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    return v3

    .line 2157
    :cond_134
    return v11

    nop

    :sswitch_data_136
    .sparse-switch
        -0x54506df1 -> :sswitch_8e
        -0x3de09eb0 -> :sswitch_83
        0x17a79 -> :sswitch_79
        0x63dca8c -> :sswitch_6e
        0x467fe1bb -> :sswitch_64
    .end sparse-switch
.end method

.method private runSetEnabledSetting(I)I
    .registers 14
    .param p1, "state"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    const/4 v0, 0x0

    .line 1814
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1819
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 1820
    .local v8, "pkg":Ljava/lang/String;
    if-nez v8, :cond_28

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no package or component specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    const/4 v2, 0x1

    return v2

    .line 1824
    :cond_28
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 1825
    .local v9, "cn":Landroid/content/ComponentName;
    const-string v10, " new state: "

    const/4 v11, 0x0

    if-nez v9, :cond_79

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

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1830
    invoke-interface {v4, v8, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    .line 1829
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1828
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    return v11

    .line 1833
    :cond_79
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v9, p1, v11, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1836
    invoke-interface {v4, v9, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 1835
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1834
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    return v11
.end method

.method private runSetHarmfulAppWarning()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2620
    const/4 v0, -0x2

    .line 2623
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2624
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2625
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2627
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    const/4 v1, -0x1

    return v1

    .line 2632
    :cond_33
    const/4 v1, 0x0

    const-string/jumbo v3, "runSetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2634
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2635
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2637
    .local v4, "warning":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v4, v0}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2639
    return v1
.end method

.method private runSetHiddenSetting(Z)I
    .registers 8
    .param p1, "state"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1842
    const/4 v0, 0x0

    .line 1843
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1844
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1848
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    const/4 v3, 0x1

    return v3

    .line 1853
    :cond_28
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " new hidden state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1855
    invoke-interface {v5, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1854
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    const/4 v3, 0x0

    return v3
.end method

.method private runSetHomeActivity()I
    .registers 15

    .line 2507
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2508
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2510
    .local v1, "userId":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v8, "opt":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_43

    .line 2511
    const/4 v2, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x4f7b216b

    if-eq v3, v4, :cond_19

    :cond_18
    goto :goto_22

    :cond_19
    const-string v3, "--user"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v2, v9

    :goto_22
    if-eqz v2, :cond_39

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2517
    return v10

    .line 2513
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 2514
    nop

    .line 2517
    goto :goto_5

    .line 2522
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 2523
    .local v11, "component":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_52

    .line 2525
    move-object v2, v11

    move-object v12, v2

    .local v2, "pkgName":Ljava/lang/String;
    goto :goto_63

    .line 2528
    .end local v2  # "pkgName":Ljava/lang/String;
    :cond_52
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2529
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_5e

    .line 2530
    const-string v3, "Error: invalid component name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    return v10

    .line 2533
    :cond_5e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 2537
    .end local v2  # "componentName":Landroid/content/ComponentName;
    .local v12, "pkgName":Ljava/lang/String;
    :goto_63
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v13, v2

    .line 2538
    .local v13, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;

    invoke-direct {v2, v13}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v7, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 2540
    .local v7, "callback":Landroid/os/RemoteCallback;
    :try_start_73
    const-string/jumbo v2, "role"

    .line 2541
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2540
    invoke-static {v2}, Landroid/app/role/IRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleManager;

    move-result-object v2

    .line 2542
    .local v2, "roleManager":Landroid/app/role/IRoleManager;
    const-string v3, "android.app.role.HOME"

    const/4 v5, 0x0

    move-object v4, v12

    move v6, v1

    invoke-interface/range {v2 .. v7}, Landroid/app/role/IRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 2544
    invoke-virtual {v13}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2545
    .local v3, "success":Z
    if-eqz v3, :cond_98

    .line 2546
    const-string v4, "Success"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    return v9

    .line 2549
    :cond_98
    const-string v4, "Error: Failed to set default home."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_9d} :catch_9e

    .line 2550
    return v10

    .line 2552
    .end local v2  # "roleManager":Landroid/app/role/IRoleManager;
    .end local v3  # "success":Z
    :catch_9e
    move-exception v2

    .line 2553
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    return v10
.end method

.method private runSetInstallLocation()I
    .registers 6
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
    .local v1, "arg":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: no install location specified."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    return v2

    .line 1237
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_2a

    .line 1241
    .local v3, "loc":I
    nop

    .line 1242
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    return v2

    .line 1246
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 1238
    .end local v3  # "loc":I
    :catch_2a
    move-exception v3

    .line 1239
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    return v2
.end method

.method private runSetInstaller()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2559
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2560
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2562
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1d

    if-nez v1, :cond_d

    goto :goto_1d

    .line 2567
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    const/4 v2, 0x0

    return v2

    .line 2563
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Must provide both target and installer package names"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    const/4 v2, 0x1

    return v2
.end method

.method private runSetPermissionEnforced()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, "permission":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no permission specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    return v1

    .line 1973
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1974
    .local v2, "enforcedRaw":Ljava/lang/String;
    if-nez v2, :cond_21

    .line 1975
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enforcement specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    return v1

    .line 1978
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1979
    const/4 v1, 0x0

    return v1
.end method

.method private runSnapshotProfile()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1526
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1527
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1529
    .local v10, "isBootImage":Z
    const/4 v0, 0x0

    .line 1531
    .local v0, "codePath":Ljava/lang/String;
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .local v11, "opt":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v3, :cond_53

    .line 1532
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x28d32d9b

    if-eq v3, v4, :cond_24

    :cond_23
    goto :goto_2d

    :cond_24
    const-string v3, "--code-path"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2e

    :goto_2d
    move v12, v13

    :goto_2e
    if-eqz v12, :cond_45

    .line 1541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1542
    return v13

    .line 1534
    :cond_45
    if-eqz v10, :cond_4d

    .line 1535
    const-string v3, "--code-path cannot be used for the boot image."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1536
    return v13

    .line 1538
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1539
    nop

    .line 1542
    goto :goto_11

    .line 1547
    :cond_53
    const/4 v3, 0x0

    .line 1548
    .local v3, "baseCodePath":Ljava/lang/String;
    if-nez v10, :cond_82

    .line 1549
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v9, v12, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1551
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_73

    .line 1552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1553
    return v13

    .line 1555
    :cond_73
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 1556
    if-nez v0, :cond_7f

    .line 1557
    move-object v0, v3

    move-object v14, v0

    move-object v15, v3

    goto :goto_84

    .line 1556
    :cond_7f
    move-object v14, v0

    move-object v15, v3

    goto :goto_84

    .line 1548
    .end local v4  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_82
    move-object v14, v0

    move-object v15, v3

    .line 1562
    .end local v0  # "codePath":Ljava/lang/String;
    .end local v3  # "baseCodePath":Ljava/lang/String;
    .local v14, "codePath":Ljava/lang/String;
    .local v15, "baseCodePath":Ljava/lang/String;
    :goto_84
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1564
    .local v7, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-nez v3, :cond_94

    .line 1565
    const-string/jumbo v3, "root"

    goto :goto_96

    :cond_94
    const-string v3, "com.android.shell"

    :goto_96
    move-object v8, v3

    .line 1566
    .local v8, "callingPackage":Ljava/lang/String;
    if-eqz v10, :cond_9b

    .line 1567
    const/4 v3, 0x1

    goto :goto_9c

    :cond_9b
    move v3, v12

    :goto_9c
    move v6, v3

    .line 1568
    .local v6, "profileType":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    invoke-interface {v3, v6, v8}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 1569
    const-string v0, "Error: Runtime profiling is not enabled"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    return v13

    .line 1572
    :cond_af
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    move v4, v6

    move-object v5, v9

    move/from16 v16, v6

    .end local v6  # "profileType":I
    .local v16, "profileType":I
    move-object v6, v14

    move-object/from16 v17, v8

    .end local v8  # "callingPackage":Ljava/lang/String;
    .local v17, "callingPackage":Ljava/lang/String;
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v3

    if-nez v3, :cond_cf

    .line 1575
    const-string v0, "Error: callback not called"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$200(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    .line 1580
    :cond_cf
    :try_start_cf
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d8} :catch_13e
    .catch Landroid/system/ErrnoException; {:try_start_cf .. :try_end_d8} :catch_13e

    .line 1581
    .local v3, "inStream":Ljava/io/InputStream;
    if-nez v10, :cond_fc

    :try_start_da
    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e1

    goto :goto_fc

    .line 1582
    :cond_e1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_fe

    :cond_fc
    :goto_fc
    const-string v4, ""

    .line 1583
    .local v4, "outputFileSuffix":Ljava/lang/String;
    :goto_fe
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/profman/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".prof"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1585
    .local v5, "outputProfilePath":Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_da .. :try_end_11c} :catchall_135

    .line 1586
    .local v6, "outStream":Ljava/io/OutputStream;
    :try_start_11c
    invoke-static {v3, v6}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_12c

    .line 1587
    :try_start_11f
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1589
    .end local v6  # "outStream":Ljava/io/OutputStream;
    const/16 v6, 0x1a4

    invoke-static {v5, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_127
    .catchall {:try_start_11f .. :try_end_127} :catchall_135

    .line 1590
    .end local v4  # "outputFileSuffix":Ljava/lang/String;
    .end local v5  # "outputProfilePath":Ljava/lang/String;
    :try_start_127
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_13e
    .catch Landroid/system/ErrnoException; {:try_start_127 .. :try_end_12a} :catch_13e

    .line 1594
    .end local v3  # "inStream":Ljava/io/InputStream;
    nop

    .line 1595
    return v12

    .line 1585
    .restart local v3  # "inStream":Ljava/io/InputStream;
    .restart local v4  # "outputFileSuffix":Ljava/lang/String;
    .restart local v5  # "outputProfilePath":Ljava/lang/String;
    .restart local v6  # "outStream":Ljava/io/OutputStream;
    :catchall_12c
    move-exception v0

    move-object v8, v0

    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v3  # "inStream":Ljava/io/InputStream;
    .end local v4  # "outputFileSuffix":Ljava/lang/String;
    .end local v5  # "outputProfilePath":Ljava/lang/String;
    .end local v6  # "outStream":Ljava/io/OutputStream;
    .end local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v10  # "isBootImage":Z
    .end local v11  # "opt":Ljava/lang/String;
    .end local v14  # "codePath":Ljava/lang/String;
    .end local v15  # "baseCodePath":Ljava/lang/String;
    .end local v16  # "profileType":I
    .end local v17  # "callingPackage":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :try_start_12e
    throw v8
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12f

    .line 1587
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    .restart local v3  # "inStream":Ljava/io/InputStream;
    .restart local v4  # "outputFileSuffix":Ljava/lang/String;
    .restart local v5  # "outputProfilePath":Ljava/lang/String;
    .restart local v6  # "outStream":Ljava/io/OutputStream;
    .restart local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9  # "packageName":Ljava/lang/String;
    .restart local v10  # "isBootImage":Z
    .restart local v11  # "opt":Ljava/lang/String;
    .restart local v14  # "codePath":Ljava/lang/String;
    .restart local v15  # "baseCodePath":Ljava/lang/String;
    .restart local v16  # "profileType":I
    .restart local v17  # "callingPackage":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_12f
    move-exception v0

    move-object v12, v0

    :try_start_131
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v3  # "inStream":Ljava/io/InputStream;
    .end local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v10  # "isBootImage":Z
    .end local v11  # "opt":Ljava/lang/String;
    .end local v14  # "codePath":Ljava/lang/String;
    .end local v15  # "baseCodePath":Ljava/lang/String;
    .end local v16  # "profileType":I
    .end local v17  # "callingPackage":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v12
    :try_end_135
    .catchall {:try_start_131 .. :try_end_135} :catchall_135

    .line 1580
    .end local v4  # "outputFileSuffix":Ljava/lang/String;
    .end local v5  # "outputProfilePath":Ljava/lang/String;
    .end local v6  # "outStream":Ljava/io/OutputStream;
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    .restart local v3  # "inStream":Ljava/io/InputStream;
    .restart local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9  # "packageName":Ljava/lang/String;
    .restart local v10  # "isBootImage":Z
    .restart local v11  # "opt":Ljava/lang/String;
    .restart local v14  # "codePath":Ljava/lang/String;
    .restart local v15  # "baseCodePath":Ljava/lang/String;
    .restart local v16  # "profileType":I
    .restart local v17  # "callingPackage":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_135
    move-exception v0

    move-object v4, v0

    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v3  # "inStream":Ljava/io/InputStream;
    .end local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v10  # "isBootImage":Z
    .end local v11  # "opt":Ljava/lang/String;
    .end local v14  # "codePath":Ljava/lang/String;
    .end local v15  # "baseCodePath":Ljava/lang/String;
    .end local v16  # "profileType":I
    .end local v17  # "callingPackage":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :try_start_137
    throw v4
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_138

    .line 1590
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    .restart local v3  # "inStream":Ljava/io/InputStream;
    .restart local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9  # "packageName":Ljava/lang/String;
    .restart local v10  # "isBootImage":Z
    .restart local v11  # "opt":Ljava/lang/String;
    .restart local v14  # "codePath":Ljava/lang/String;
    .restart local v15  # "baseCodePath":Ljava/lang/String;
    .restart local v16  # "profileType":I
    .restart local v17  # "callingPackage":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_138
    move-exception v0

    move-object v5, v0

    :try_start_13a
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v10  # "isBootImage":Z
    .end local v11  # "opt":Ljava/lang/String;
    .end local v14  # "codePath":Ljava/lang/String;
    .end local v15  # "baseCodePath":Ljava/lang/String;
    .end local v16  # "profileType":I
    .end local v17  # "callingPackage":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v5
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13e} :catch_13e
    .catch Landroid/system/ErrnoException; {:try_start_13a .. :try_end_13e} :catch_13e

    .end local v3  # "inStream":Ljava/io/InputStream;
    .restart local v2  # "pw":Ljava/io/PrintWriter;
    .restart local v7  # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9  # "packageName":Ljava/lang/String;
    .restart local v10  # "isBootImage":Z
    .restart local v11  # "opt":Ljava/lang/String;
    .restart local v14  # "codePath":Ljava/lang/String;
    .restart local v15  # "baseCodePath":Ljava/lang/String;
    .restart local v16  # "profileType":I
    .restart local v17  # "callingPackage":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_13e
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when reading the profile fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1593
    return v13
.end method

.method private runSuspend(Z)I
    .registers 19
    .param p1, "suspendedState"  # Z

    .line 1860
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1861
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1862
    .local v0, "userId":I
    const/4 v3, 0x0

    .line 1863
    .local v3, "dialogMessage":Ljava/lang/String;
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 1864
    .local v7, "appExtras":Landroid/os/PersistableBundle;
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    move v12, v0

    .line 1866
    .end local v0  # "userId":I
    .local v8, "launcherExtras":Landroid/os/PersistableBundle;
    .local v12, "userId":I
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_e3

    .line 1867
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    sparse-switch v4, :sswitch_data_154

    :cond_25
    goto :goto_75

    :sswitch_26
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_76

    :sswitch_2f
    const-string v4, "--les"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v14, 0x6

    goto :goto_76

    :sswitch_39
    const-string v4, "--lel"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v14, 0x5

    goto :goto_76

    :sswitch_43
    const-string v4, "--led"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v14, 0x7

    goto :goto_76

    :sswitch_4d
    const-string v4, "--aes"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v14, 0x3

    goto :goto_76

    :sswitch_57
    const-string v4, "--ael"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v14, 0x2

    goto :goto_76

    :sswitch_61
    const-string v4, "--aed"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v14, v5

    goto :goto_76

    :sswitch_6b
    const-string v4, "--dialogMessage"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v14, v15

    goto :goto_76

    :goto_75
    move v14, v0

    :goto_76
    packed-switch v14, :pswitch_data_176

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    return v15

    .line 1880
    :pswitch_8e  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1881
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1882
    .local v4, "val":Ljava/lang/String;
    if-nez p1, :cond_99

    .line 1883
    goto :goto_e1

    .line 1886
    :cond_99
    const-string v6, "--a"

    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a3

    move-object v6, v7

    goto :goto_a4

    :cond_a3
    move-object v6, v8

    .line 1887
    .local v6, "bundleToInsert":Landroid/os/PersistableBundle;
    :goto_a4
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x64

    if-eq v5, v9, :cond_c5

    const/16 v9, 0x6c

    if-eq v5, v9, :cond_b9

    const/16 v9, 0x73

    if-eq v5, v9, :cond_b5

    goto :goto_d1

    .line 1895
    :cond_b5
    invoke-virtual {v6, v0, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 1889
    :cond_b9
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 1890
    goto :goto_d1

    .line 1892
    :cond_c5
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 1893
    nop

    .line 1898
    :goto_d1
    goto :goto_e1

    .line 1872
    .end local v0  # "key":Ljava/lang/String;
    .end local v4  # "val":Ljava/lang/String;
    .end local v6  # "bundleToInsert":Landroid/os/PersistableBundle;
    :pswitch_d2  #0x1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1873
    .end local v3  # "dialogMessage":Ljava/lang/String;
    .local v0, "dialogMessage":Ljava/lang/String;
    move-object v3, v0

    goto :goto_e1

    .line 1869
    .end local v0  # "dialogMessage":Ljava/lang/String;
    .restart local v3  # "dialogMessage":Ljava/lang/String;
    :pswitch_d8  #0x0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1870
    .end local v12  # "userId":I
    .local v0, "userId":I
    move v12, v0

    .line 1901
    .end local v0  # "userId":I
    .restart local v12  # "userId":I
    :goto_e1
    goto/16 :goto_13

    .line 1905
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1906
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_ef

    .line 1907
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    return v15

    .line 1911
    :cond_ef
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_f9

    const-string/jumbo v0, "root"

    goto :goto_fb

    :cond_f9
    const-string v0, "com.android.shell"

    :goto_fb
    move-object v10, v0

    .line 1914
    .local v10, "callingPackage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 1915
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1916
    invoke-virtual {v0, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    .line 1917
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    move-object/from16 v16, v0

    .local v0, "info":Landroid/content/pm/SuspendDialogInfo;
    goto :goto_115

    .line 1919
    .end local v0  # "info":Landroid/content/pm/SuspendDialogInfo;
    :cond_112
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 1922
    .local v16, "info":Landroid/content/pm/SuspendDialogInfo;
    :goto_115
    :try_start_115
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v5, v15, [Ljava/lang/String;

    aput-object v11, v5, v14
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_115 .. :try_end_11b} :catch_149
    .catch Ljava/lang/IllegalArgumentException; {:try_start_115 .. :try_end_11b} :catch_149

    move/from16 v6, p1

    move-object/from16 v9, v16

    move-object v15, v11

    .end local v11  # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    move v11, v12

    :try_start_121
    invoke-interface/range {v4 .. v11}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new suspended state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1925
    invoke-interface {v4, v15, v12}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1924
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_146} :catch_147
    .catch Ljava/lang/IllegalArgumentException; {:try_start_121 .. :try_end_146} :catch_147

    .line 1926
    return v14

    .line 1927
    :catch_147
    move-exception v0

    goto :goto_14b

    .end local v15  # "packageName":Ljava/lang/String;
    .restart local v11  # "packageName":Ljava/lang/String;
    :catch_149
    move-exception v0

    move-object v15, v11

    .line 1928
    .end local v11  # "packageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15  # "packageName":Ljava/lang/String;
    :goto_14b
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    const/4 v4, 0x1

    return v4

    :sswitch_data_154
    .sparse-switch
        -0x25a4801 -> :sswitch_6b
        0x2900f20 -> :sswitch_61
        0x2900f28 -> :sswitch_57
        0x2900f2f -> :sswitch_4d
        0x290386b -> :sswitch_43
        0x2903873 -> :sswitch_39
        0x290387a -> :sswitch_2f
        0x4f7b216b -> :sswitch_26
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_d8  #00000000
        :pswitch_d2  #00000001
        :pswitch_8e  #00000002
        :pswitch_8e  #00000003
        :pswitch_8e  #00000004
        :pswitch_8e  #00000005
        :pswitch_8e  #00000006
        :pswitch_8e  #00000007
    .end packed-switch
.end method

.method private runTrimCaches()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2200
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2201
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no size specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    return v1

    .line 2205
    :cond_11
    const-wide/16 v2, 0x1

    .line 2206
    .local v2, "multiplier":J
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2207
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2208
    .local v5, "c":C
    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2a

    const/16 v6, 0x39

    if-le v5, v6, :cond_27

    goto :goto_2a

    :cond_27
    move-wide v8, v2

    move-object v2, v0

    goto :goto_70

    .line 2209
    :cond_2a
    :goto_2a
    const/16 v6, 0x4b

    if-eq v5, v6, :cond_66

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_33

    goto :goto_66

    .line 2211
    :cond_33
    const/16 v6, 0x4d

    if-eq v5, v6, :cond_62

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_3c

    goto :goto_62

    .line 2213
    :cond_3c
    const/16 v6, 0x47

    if-eq v5, v6, :cond_5e

    const/16 v6, 0x67

    if-ne v5, v6, :cond_45

    goto :goto_5e

    .line 2216
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid suffix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    return v1

    .line 2214
    :cond_5e
    :goto_5e
    const-wide/32 v2, 0x40000000

    goto :goto_68

    .line 2212
    :cond_62
    :goto_62
    const-wide/32 v2, 0x100000

    goto :goto_68

    .line 2210
    :cond_66
    :goto_66
    const-wide/16 v2, 0x400

    .line 2219
    :goto_68
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-wide v8, v2

    move-object v2, v0

    .line 2223
    .end local v0  # "size":Ljava/lang/String;
    .local v2, "size":Ljava/lang/String;
    .local v8, "multiplier":J
    :goto_70
    :try_start_70
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_74} :catch_aa

    mul-long v16, v0, v8

    .line 2227
    .local v16, "sizeVal":J
    nop

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 2230
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_88

    .line 2229
    :cond_87
    move-object v3, v0

    .line 2232
    .end local v0  # "volumeUuid":Ljava/lang/String;
    .local v3, "volumeUuid":Ljava/lang/String;
    :goto_88
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    move-object v6, v0

    .line 2233
    .local v6, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    move-object/from16 v1, p0

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v14, 0x2

    move-object v11, v3

    move-wide/from16 v12, v16

    move-object v15, v6

    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2235
    monitor-enter v6

    .line 2236
    :goto_9b
    :try_start_9b
    iget-boolean v0, v6, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_a7

    if-nez v0, :cond_a5

    .line 2238
    :try_start_9f
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_a2} :catch_a3
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a7

    .line 2240
    :goto_a2
    goto :goto_9b

    .line 2239
    :catch_a3
    move-exception v0

    goto :goto_a2

    .line 2242
    :cond_a5
    :try_start_a5
    monitor-exit v6

    .line 2243
    return v7

    .line 2242
    :catchall_a7
    move-exception v0

    monitor-exit v6
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_a7

    throw v0

    .line 2224
    .end local v3  # "volumeUuid":Ljava/lang/String;
    .end local v6  # "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    .end local v16  # "sizeVal":J
    :catch_aa
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2225
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: expected number at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    return v1
.end method

.method private runUninstall()I
    .registers 27
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
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1641
    .local v2, "flags":I
    const/4 v3, -0x1

    .line 1642
    .local v3, "userId":I
    const-wide/16 v4, -0x1

    move-wide v10, v4

    .line 1645
    .local v10, "versionCode":J
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .local v12, "opt":Ljava/lang/String;
    const/4 v5, -0x1

    const/4 v14, 0x1

    if-eqz v4, :cond_77

    .line 1646
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v6, 0x5de

    const/4 v7, 0x2

    if-eq v4, v6, :cond_3c

    const v6, 0x4f7b216b

    if-eq v4, v6, :cond_32

    const v6, 0x704d4945

    if-eq v4, v6, :cond_28

    :cond_27
    goto :goto_45

    :cond_28
    const-string v4, "--versionCode"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move v5, v7

    goto :goto_45

    :cond_32
    const-string v4, "--user"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move v5, v14

    goto :goto_45

    :cond_3c
    const-string v4, "-k"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v5, 0x0

    :goto_45
    if-eqz v5, :cond_73

    if-eq v5, v14, :cond_6a

    if-eq v5, v7, :cond_60

    .line 1657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    return v14

    .line 1654
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1655
    .end local v10  # "versionCode":J
    .local v4, "versionCode":J
    move-wide v10, v4

    goto :goto_76

    .line 1651
    .end local v4  # "versionCode":J
    .restart local v10  # "versionCode":J
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 1652
    goto :goto_76

    .line 1648
    :cond_73
    or-int/lit8 v2, v2, 0x1

    .line 1649
    nop

    .line 1658
    :goto_76
    goto :goto_b

    .line 1662
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v15

    .line 1663
    .local v15, "packageName":Ljava/lang/String;
    if-nez v15, :cond_83

    .line 1664
    const-string v4, "Error: package name not specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    return v14

    .line 1669
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1670
    .local v9, "splitName":Ljava/lang/String;
    if-eqz v9, :cond_8e

    .line 1671
    invoke-direct {v0, v15, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 1674
    :cond_8e
    const-string/jumbo v4, "runUninstall"

    invoke-direct {v0, v3, v14, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v3

    .line 1675
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object/from16 v16, v4

    .line 1676
    .local v16, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 1678
    .local v8, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v8, v15}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "]"

    if-eqz v4, :cond_c1

    .line 1679
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v17

    move-object v4, v8

    move-object v5, v15

    move-object v13, v6

    move-wide v6, v10

    move-object/from16 v18, v8

    .end local v8  # "internal":Landroid/content/pm/PackageManagerInternal;
    .local v18, "internal":Landroid/content/pm/PackageManagerInternal;
    move v8, v3

    move-object/from16 v19, v9

    .end local v9  # "splitName":Ljava/lang/String;
    .local v19, "splitName":Ljava/lang/String;
    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;)V

    goto :goto_116

    .line 1681
    .end local v18  # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v19  # "splitName":Ljava/lang/String;
    .restart local v8  # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v9  # "splitName":Ljava/lang/String;
    :cond_c1
    move-object v13, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .end local v8  # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v9  # "splitName":Ljava/lang/String;
    .restart local v18  # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v19  # "splitName":Ljava/lang/String;
    if-ne v3, v5, :cond_cc

    .line 1682
    const/4 v3, 0x0

    .line 1683
    or-int/lit8 v2, v2, 0x2

    goto :goto_fc

    .line 1685
    :cond_cc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0x4000000

    invoke-interface {v4, v15, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1687
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_ee

    .line 1688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure [not installed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    return v14

    .line 1691
    :cond_ee
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_f7

    move v5, v14

    goto :goto_f8

    :cond_f7
    const/4 v5, 0x0

    .line 1696
    .local v5, "isSystem":Z
    :goto_f8
    if-eqz v5, :cond_fc

    .line 1697
    or-int/lit8 v2, v2, 0x4

    .line 1701
    .end local v4  # "info":Landroid/content/pm/PackageInfo;
    .end local v5  # "isSystem":Z
    :cond_fc
    :goto_fc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v20

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, v15, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v22, 0x0

    .line 1703
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v24

    .line 1701
    move-object/from16 v21, v4

    move/from16 v23, v2

    move/from16 v25, v3

    invoke-interface/range {v20 .. v25}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 1706
    :goto_116
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 1707
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    invoke-virtual {v4, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1709
    .local v5, "status":I
    if-nez v5, :cond_129

    .line 1710
    const-string v6, "Success"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    const/4 v6, 0x0

    return v6

    .line 1713
    :cond_129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1713
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    return v14
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
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1496
    const/4 v1, 0x0

    return v1
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V
    .registers 16
    .param p1, "params"  # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .param p2, "inPath"  # Ljava/lang/String;

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
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_7e

    .line 464
    :try_start_1d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v6

    .line 465
    .local v6, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
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
    .local v2, "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 468
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 467
    invoke-static {v2, v4, v5}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_44
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1d .. :try_end_44} :catch_4c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_44} :catch_4c
    .catchall {:try_start_1d .. :try_end_44} :catchall_4a

    .line 475
    .end local v2  # "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v6  # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :try_start_44
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 477
    goto :goto_ab

    .line 476
    :catch_48
    move-exception v0

    .line 478
    goto :goto_ab

    .line 474
    :catchall_4a
    move-exception v0

    goto :goto_78

    .line 469
    :catch_4c
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1  # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .end local p1  # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .end local p2  # "inPath":Ljava/lang/String;
    throw v3
    :try_end_78
    .catchall {:try_start_4d .. :try_end_78} :catchall_4a

    .line 475
    .end local v2  # "e":Ljava/lang/Exception;
    .restart local v1  # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .restart local p1  # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .restart local p2  # "inPath":Ljava/lang/String;
    :goto_78
    :try_start_78
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 477
    goto :goto_7d

    .line 476
    :catch_7c
    move-exception v2

    .line 477
    :goto_7d
    throw v0

    .line 460
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    .end local v1  # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_ab
    :goto_ab
    return-void
.end method

.method private translateUserId(IZLjava/lang/String;)I
    .registers 11
    .param p1, "userId"  # I
    .param p2, "allowAll"  # Z
    .param p3, "logContext"  # Ljava/lang/String;

    .line 2687
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

    move-result v0

    return v0
.end method

.method private uninstallSystemUpdates()I
    .registers 18

    .line 367
    move-object/from16 v1, p0

    const-string v2, "]"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 368
    .local v3, "pw":Ljava/io/PrintWriter;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v0

    .line 370
    .local v4, "failedUninstalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v6, 0x100000

    .line 371
    invoke-interface {v0, v6, v5}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 373
    .local v0, "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v7

    .line 374
    .local v7, "installer":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 375
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_25
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v14, 0x1

    if-eqz v8, :cond_81

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    move-object v15, v8

    .line 376
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-eqz v8, :cond_80

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uninstalling updates to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v8, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object/from16 v16, v8

    .line 379
    .local v16, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    new-instance v8, Landroid/content/pm/VersionedPackage;

    iget-object v9, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v15, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v8, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 381
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    const/4 v12, 0x0

    .line 379
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 383
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v8

    .line 384
    .local v8, "result":Landroid/content/Intent;
    const-string v9, "android.content.pm.extra.STATUS"

    invoke-virtual {v8, v9, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 386
    .local v9, "status":I
    if-eqz v9, :cond_80

    .line 387
    iget-object v10, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_80} :catch_ac

    .line 390
    .end local v8  # "result":Landroid/content/Intent;
    .end local v9  # "status":I
    .end local v15  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v16  # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :cond_80
    goto :goto_25

    .line 396
    .end local v0  # "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7  # "installer":Landroid/content/pm/IPackageInstaller;
    :cond_81
    nop

    .line 397
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure [Couldn\'t uninstall packages: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v6, ", "

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    return v5

    .line 403
    :cond_a6
    const-string v0, "Success"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    return v14

    .line 391
    :catch_ac
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    return v5
.end method


# virtual methods
.method public synthetic lambda$runGetOemPermissions$0$PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "granted"  # Ljava/lang/Boolean;

    .line 2069
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " granted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"  # Ljava/lang/String;

    .line 147
    if-nez p1, :cond_7

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 151
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 153
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_49a

    :cond_18
    goto/16 :goto_315

    :sswitch_1a
    const-string/jumbo v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x7

    goto/16 :goto_316

    :sswitch_26
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3d

    goto/16 :goto_316

    :sswitch_32
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x15

    goto/16 :goto_316

    :sswitch_3f
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xf

    goto/16 :goto_316

    :sswitch_4c
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1f

    goto/16 :goto_316

    :sswitch_58
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1d

    goto/16 :goto_316

    :sswitch_64
    const-string/jumbo v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xd

    goto/16 :goto_316

    :sswitch_71
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x34

    goto/16 :goto_316

    :sswitch_7e
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2e

    goto/16 :goto_316

    :sswitch_8b
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x16

    goto/16 :goto_316

    :sswitch_97
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v3

    goto/16 :goto_316

    :sswitch_a3
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x14

    goto/16 :goto_316

    :sswitch_af
    const-string/jumbo v2, "set-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2c

    goto/16 :goto_316

    :sswitch_bc
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x31

    goto/16 :goto_316

    :sswitch_c9
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3b

    goto/16 :goto_316

    :sswitch_d6
    const-string/jumbo v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x9

    goto/16 :goto_316

    :sswitch_e3
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x19

    goto/16 :goto_316

    :sswitch_f0
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3c

    goto/16 :goto_316

    :sswitch_fd
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x27

    goto/16 :goto_316

    :sswitch_10a
    const-string/jumbo v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xc

    goto/16 :goto_316

    :sswitch_117
    const-string/jumbo v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x11

    goto/16 :goto_316

    :sswitch_124
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x39

    goto/16 :goto_316

    :sswitch_130
    const-string/jumbo v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xe

    goto/16 :goto_316

    :sswitch_13d
    const-string v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x25

    goto/16 :goto_316

    :sswitch_149
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1b

    goto/16 :goto_316

    :sswitch_155
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x32

    goto/16 :goto_316

    :sswitch_161
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x12

    goto/16 :goto_316

    :sswitch_16e
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v7

    goto/16 :goto_316

    :sswitch_17a
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v5

    goto/16 :goto_316

    :sswitch_186
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x21

    goto/16 :goto_316

    :sswitch_192
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v6

    goto/16 :goto_316

    :sswitch_19d
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x13

    goto/16 :goto_316

    :sswitch_1aa
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x20

    goto/16 :goto_316

    :sswitch_1b6
    const-string/jumbo v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xb

    goto/16 :goto_316

    :sswitch_1c3
    const-string/jumbo v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xa

    goto/16 :goto_316

    :sswitch_1d0
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x24

    goto/16 :goto_316

    :sswitch_1dd
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x28

    goto/16 :goto_316

    :sswitch_1ea
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x30

    goto/16 :goto_316

    :sswitch_1f7
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3a

    goto/16 :goto_316

    :sswitch_203
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x6

    goto/16 :goto_316

    :sswitch_20f
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x17

    goto/16 :goto_316

    :sswitch_21b
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x5

    goto/16 :goto_316

    :sswitch_227
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2f

    goto/16 :goto_316

    :sswitch_233
    const-string v2, "get-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2d

    goto/16 :goto_316

    :sswitch_23f
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1a

    goto/16 :goto_316

    :sswitch_24c
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x22

    goto/16 :goto_316

    :sswitch_259
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x18

    goto/16 :goto_316

    :sswitch_265
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x26

    goto/16 :goto_316

    :sswitch_272
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1e

    goto/16 :goto_316

    :sswitch_27e
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x29

    goto/16 :goto_316

    :sswitch_28a
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2b

    goto/16 :goto_316

    :sswitch_296
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2a

    goto/16 :goto_316

    :sswitch_2a2
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v4

    goto/16 :goto_316

    :sswitch_2ae
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x36

    goto :goto_316

    :sswitch_2b9
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1c

    goto :goto_316

    :sswitch_2c4
    const-string v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x37

    goto :goto_316

    :sswitch_2cf
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x35

    goto :goto_316

    :sswitch_2db
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x33

    goto :goto_316

    :sswitch_2e6
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x23

    goto :goto_316

    :sswitch_2f2
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x10

    goto :goto_316

    :sswitch_2fd
    const-string/jumbo v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x8

    goto :goto_316

    :sswitch_309
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x38

    goto :goto_316

    :goto_315
    move v2, v1

    :goto_316
    packed-switch v2, :pswitch_data_594

    .line 280
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_450

    .line 278
    :pswitch_31f  #0x3d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result v1

    return v1

    .line 276
    :pswitch_324  #0x3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result v1

    return v1

    .line 274
    :pswitch_329  #0x3b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates()I

    move-result v1

    return v1

    .line 272
    :pswitch_32e  #0x3a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getStagedSessions()I

    move-result v1

    return v1

    .line 270
    :pswitch_333  #0x39
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 268
    :pswitch_338  #0x38
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 266
    :pswitch_33d  #0x37
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result v1

    return v1

    .line 264
    :pswitch_342  #0x36
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result v1

    return v1

    .line 262
    :pswitch_347  #0x35
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result v1

    return v1

    .line 260
    :pswitch_34c  #0x34
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v1

    return v1

    .line 258
    :pswitch_351  #0x33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result v1

    return v1

    .line 256
    :pswitch_356  #0x32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result v1

    return v1

    .line 254
    :pswitch_35b  #0x31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result v1

    return v1

    .line 252
    :pswitch_360  #0x30
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result v1

    return v1

    .line 250
    :pswitch_365  #0x2f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result v1

    return v1

    .line 248
    :pswitch_36a  #0x2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result v1

    return v1

    .line 246
    :pswitch_36f  #0x2d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppLink()I

    move-result v1

    return v1

    .line 244
    :pswitch_374  #0x2c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetAppLink()I

    move-result v1

    return v1

    .line 242
    :pswitch_379  #0x2b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result v1

    return v1

    .line 240
    :pswitch_37e  #0x2a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result v1

    return v1

    .line 238
    :pswitch_383  #0x29
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result v1

    return v1

    .line 236
    :pswitch_388  #0x28
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result v1

    return v1

    .line 234
    :pswitch_38d  #0x27
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result v1

    return v1

    .line 232
    :pswitch_392  #0x26
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 230
    :pswitch_397  #0x25
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 228
    :pswitch_39c  #0x24
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 226
    :pswitch_3a1  #0x23
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 224
    :pswitch_3a6  #0x22
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 222
    :pswitch_3ab  #0x21
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 220
    :pswitch_3b0  #0x20
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 217
    :pswitch_3b5  #0x1f
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 214
    :pswitch_3ba  #0x1e
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 212
    :pswitch_3bf  #0x1d
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 210
    :pswitch_3c4  #0x1c
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 208
    :pswitch_3c9  #0x1b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result v1

    return v1

    .line 206
    :pswitch_3ce  #0x1a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v1

    return v1

    .line 204
    :pswitch_3d3  #0x19
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result v1

    return v1

    .line 202
    :pswitch_3d8  #0x18
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v1

    return v1

    .line 200
    :pswitch_3dd  #0x17
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result v1

    return v1

    .line 198
    :pswitch_3e2  #0x16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result v1

    return v1

    .line 196
    :pswitch_3e7  #0x15
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result v1

    return v1

    .line 194
    :pswitch_3ec  #0x14
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v1

    return v1

    .line 192
    :pswitch_3f1  #0x13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result v1

    return v1

    .line 190
    :pswitch_3f6  #0x12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result v1

    return v1

    .line 188
    :pswitch_3fb  #0x11
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result v1

    return v1

    .line 186
    :pswitch_400  #0x10
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result v1

    return v1

    .line 184
    :pswitch_405  #0xf
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result v1

    return v1

    .line 182
    :pswitch_40a  #0xe
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result v1

    return v1

    .line 180
    :pswitch_40f  #0xd
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v1

    return v1

    .line 178
    :pswitch_414  #0xc
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v1

    return v1

    .line 176
    :pswitch_419  #0xb
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v1

    return v1

    .line 174
    :pswitch_41e  #0xa
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v1

    return v1

    .line 172
    :pswitch_423  #0x8, 0x9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v1

    return v1

    .line 169
    :pswitch_428  #0x7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v1

    return v1

    .line 167
    :pswitch_42d  #0x6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v1

    return v1

    .line 165
    :pswitch_432  #0x5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v1

    return v1

    .line 163
    :pswitch_437  #0x4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v1

    return v1

    .line 161
    :pswitch_43c  #0x3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v1

    return v1

    .line 159
    :pswitch_441  #0x2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v1

    return v1

    .line 157
    :pswitch_446  #0x1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result v1

    return v1

    .line 155
    :pswitch_44b  #0x0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result v1

    return v1

    .line 281
    .local v2, "nextArg":Ljava/lang/String;
    :goto_450
    if-nez v2, :cond_46c

    .line 282
    const-string v3, "-l"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45f

    .line 283
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 284
    :cond_45f
    const-string v3, "-lf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47f

    .line 285
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 287
    :cond_46c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_47f

    .line 288
    const-string v3, "-p"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47f

    .line 289
    invoke-direct {p0, v2, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 292
    :cond_47f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_483
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_483} :catch_484

    return v1

    .line 295
    .end local v2  # "nextArg":Ljava/lang/String;
    :catch_484
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .end local v2  # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_49a
    .sparse-switch
        -0x7d5639bf -> :sswitch_309
        -0x7540f3bd -> :sswitch_2fd
        -0x737996c2 -> :sswitch_2f2
        -0x6e635fc4 -> :sswitch_2e6
        -0x6e1196e6 -> :sswitch_2db
        -0x67c8bc23 -> :sswitch_2cf
        -0x504e493d -> :sswitch_2c4
        -0x4d6ada7d -> :sswitch_2b9
        -0x4b90d264 -> :sswitch_2ae
        -0x495fa230 -> :sswitch_2a2
        -0x41b47fcb -> :sswitch_296
        -0x410d7369 -> :sswitch_28a
        -0x3fd1a8ae -> :sswitch_27e
        -0x3d838470 -> :sswitch_272
        -0x37b0f17a -> :sswitch_265
        -0x36d5185d -> :sswitch_259
        -0x321a08a5 -> :sswitch_24c
        -0x2549d71e -> :sswitch_23f
        -0x2525a743 -> :sswitch_233
        -0x202b5604 -> :sswitch_227
        -0x1b57243d -> :sswitch_21b
        -0x1a825bcc -> :sswitch_20f
        -0x1a490a61 -> :sswitch_203
        -0x18d650e6 -> :sswitch_1f7
        -0x143f388c -> :sswitch_1ea
        -0xd1dc6eb -> :sswitch_1dd
        -0x85b5c7d -> :sswitch_1d0
        -0x7e40657 -> :sswitch_1c3
        -0x7bd8e92 -> :sswitch_1b6
        -0x6dac5fb -> :sswitch_1aa
        -0x533744c -> :sswitch_19d
        0x2f39f4 -> :sswitch_192
        0x30dd42 -> :sswitch_186
        0x32b09e -> :sswitch_17a
        0x346425 -> :sswitch_16e
        0x120f24a -> :sswitch_161
        0x5296aa8 -> :sswitch_155
        0x5a5b64d -> :sswitch_149
        0x5e0c11c -> :sswitch_13d
        0x664b17d -> :sswitch_130
        0x8569735 -> :sswitch_124
        0xe265438 -> :sswitch_117
        0x1127c8f6 -> :sswitch_10a
        0x156ea506 -> :sswitch_fd
        0x1678dbb8 -> :sswitch_f0
        0x1bde3ea0 -> :sswitch_e3
        0x2f90ddc8 -> :sswitch_d6
        0x3142fb77 -> :sswitch_c9
        0x372512d5 -> :sswitch_bc
        0x372e1931 -> :sswitch_af
        0x38a75a33 -> :sswitch_a3
        0x3ec9c212 -> :sswitch_97
        0x4308171b -> :sswitch_8b
        0x4634ad3c -> :sswitch_7e
        0x55326612 -> :sswitch_71
        0x5bb0b12d -> :sswitch_64
        0x639e22e8 -> :sswitch_58
        0x653560d1 -> :sswitch_4c
        0x681c75b2 -> :sswitch_3f
        0x6a555f29 -> :sswitch_32
        0x6ecbfff1 -> :sswitch_26
        0x74ae259b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_594
    .packed-switch 0x0
        :pswitch_44b  #00000000
        :pswitch_446  #00000001
        :pswitch_441  #00000002
        :pswitch_43c  #00000003
        :pswitch_437  #00000004
        :pswitch_432  #00000005
        :pswitch_42d  #00000006
        :pswitch_428  #00000007
        :pswitch_423  #00000008
        :pswitch_423  #00000009
        :pswitch_41e  #0000000a
        :pswitch_419  #0000000b
        :pswitch_414  #0000000c
        :pswitch_40f  #0000000d
        :pswitch_40a  #0000000e
        :pswitch_405  #0000000f
        :pswitch_400  #00000010
        :pswitch_3fb  #00000011
        :pswitch_3f6  #00000012
        :pswitch_3f1  #00000013
        :pswitch_3ec  #00000014
        :pswitch_3e7  #00000015
        :pswitch_3e2  #00000016
        :pswitch_3dd  #00000017
        :pswitch_3d8  #00000018
        :pswitch_3d3  #00000019
        :pswitch_3ce  #0000001a
        :pswitch_3c9  #0000001b
        :pswitch_3c4  #0000001c
        :pswitch_3bf  #0000001d
        :pswitch_3ba  #0000001e
        :pswitch_3b5  #0000001f
        :pswitch_3b0  #00000020
        :pswitch_3ab  #00000021
        :pswitch_3a6  #00000022
        :pswitch_3a1  #00000023
        :pswitch_39c  #00000024
        :pswitch_397  #00000025
        :pswitch_392  #00000026
        :pswitch_38d  #00000027
        :pswitch_388  #00000028
        :pswitch_383  #00000029
        :pswitch_37e  #0000002a
        :pswitch_379  #0000002b
        :pswitch_374  #0000002c
        :pswitch_36f  #0000002d
        :pswitch_36a  #0000002e
        :pswitch_365  #0000002f
        :pswitch_360  #00000030
        :pswitch_35b  #00000031
        :pswitch_356  #00000032
        :pswitch_351  #00000033
        :pswitch_34c  #00000034
        :pswitch_347  #00000035
        :pswitch_342  #00000036
        :pswitch_33d  #00000037
        :pswitch_338  #00000038
        :pswitch_333  #00000039
        :pswitch_32e  #0000003a
        :pswitch_329  #0000003b
        :pswitch_324  #0000003c
        :pswitch_31f  #0000003d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 9

    .line 2970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2971
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2975
    const-string v2, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    const-string v2, "  dump PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    const-string v2, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    const-string v2, "  list features"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    const-string v2, "    Prints all features of the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    const-string v2, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    const-string v2, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    const-string v2, "    Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    const-string v2, "  list libraries"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const-string v2, "    Prints all system libraries."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    const-string v2, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v2, "      -f: see their associated file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v2, "      -a: all known packages (but excluding APEXes)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const-string v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v2, "      -s: filter to only show system packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v2, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    const-string v2, "      -i: see the installer for the packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    const-string v2, "      -U: also show the package UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string v2, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string v2, "      --show-versioncode: also show the version code"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v2, "      --apex-only: only show APEX packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    const-string v2, "  list permission-groups"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    const-string v2, "    Prints all known permission groups."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    const-string v2, "      -g: organize by group"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    const-string v2, "      -f: print all information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    const-string v2, "      -s: short summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    const-string v2, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    const-string v2, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string v2, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    const-string v2, "       [--user USER_ID] INTENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string v3, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    const-string v3, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    const-string v3, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string v3, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    const-string v3, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    const-string v3, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    const-string v2, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string v2, "  install [-lrtsfdgw] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string v2, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string v3, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string v4, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string v5, "       [--preload] [--instantapp] [--full] [--dont-kill]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string v6, "       [--enable-rollback]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string v6, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES] [--apex]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v6, "       [PATH|-]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string v6, "    Install an application.  Must provide the apk data to install, either as a"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string v6, "    file path or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string v6, "      -l: forward lock application"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string v6, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v6, "      -t: allow test packages"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string v6, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string v6, "      -s: install application on sdcard"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string v6, "      -f: install application on internal flash"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string v6, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string v6, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string v6, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string v6, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v7, "      --user: install under the given user."

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v7, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v7, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-string v7, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v7, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string v7, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v7, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v7, "      --instantapp: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v7, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v7, "      --install-location: force the install location:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v7, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v7, "      --install-reason: indicates why the app is being installed:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v7, "          0=unknown, 1=admin policy, 2=device restore,"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v7, "          3=device setup, 4=user request"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v7, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v7, "      --apex: install an .apex file, not an .apk"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v7, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v2, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v2, "       [--multi-package] [--staged]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v2, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    const-string v2, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    const-string v2, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    const-string v2, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const-string v2, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const-string v2, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    const-string v2, "    Add one or more session IDs to a multi-package session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const-string v2, "  install-commit SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string v2, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    const-string v2, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    const-string v2, "    Delete the given active install session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    const-string v2, "  set-install-location LOCATION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    const-string v2, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    const-string v2, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    const-string v2, "    LOCATION is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    const-string v2, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string v2, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    const-string v2, "    2 [external]: Install on external media"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    const-string v2, "  get-install-location"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    const-string v2, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string v2, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string v2, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string v2, "  pm uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE] PACKAGE [SPLIT]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string v2, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string v2, "    if no SPLIT name is specified, otherwise will remove only the split of the"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string v2, "    given app.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string v2, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string v2, "      --user: remove the app from the given user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string v2, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v2, "  clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3127
    const-string v2, "    Deletes all data associated with a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    const-string v2, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string v2, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const-string v2, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    const-string v2, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    const-string v2, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    const-string v2, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    const-string v2, "    component (written as \"package/class\")."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    const-string v2, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3138
    const-string v2, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    const-string v2, "  suspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    const-string v2, "    Suspends the specified package (as user)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    const-string v2, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string v2, "    Unsuspends the specified package (as user)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    const-string v2, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    const-string v2, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string v2, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    const-string v2, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    const-string v2, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    const-string v2, "  reset-permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    const-string v2, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string v2, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    const-string v2, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    const-string v2, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string v2, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    const-string v2, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    const-string v2, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string v2, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string v2, "  set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    const-string v2, "  get-app-link [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    const-string v2, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const-string v2, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    const-string v2, "      [--guest] USER_NAME"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    const-string v2, "    of the user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    const-string v2, "  remove-user USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    const-string v2, "    associated with that user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    const-string v2, "  get-max-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    const-string v2, "  get-max-running-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3190
    const-string v2, "      -a: compile all packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    const-string v2, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    const-string v2, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    const-string v2, "      -m: select compilation mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    const-string v2, "            assume-verified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    const-string v2, "            extract"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    const-string v2, "            verify"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    const-string v2, "            quicken"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    const-string v2, "            space-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    const-string v2, "            space"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3201
    const-string v2, "            speed-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    const-string v2, "            speed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    const-string v2, "            everything"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    const-string v2, "      -r: select compilation reason"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    const-string v2, "          REASON is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_438
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_458

    .line 3207
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

    .line 3206
    add-int/lit8 v2, v2, 0x1

    goto :goto_438

    .line 3209
    .end local v2  # "i":I
    :cond_458
    const-string v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    const-string v2, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3212
    const-string v2, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    const-string v2, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3218
    const-string v2, "  bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    const-string v2, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    const-string v2, "    maintenance mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    const-string v2, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    const-string v2, "    Dumps method/class profile files to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    const-string v2, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    const-string v2, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    const-string v2, "    matters: the actual component used will be determined automatically from"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    const-string v2, "    the package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    const-string v2, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3246
    const-string v2, "    Set installer package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    const-string v2, "  get-instantapp-resolver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    const-string v2, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    const-string v2, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3257
    const-string v2, "  uninstall-system-updates"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    const-string v2, "    Remove updates to all system applications and fall back to their /system version."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3261
    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    const-string v2, "    By default, without any argument only installed modules are shown."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const-string v2, "      --all: show all module info"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    const-string v2, "      --installed: show only installed modules"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3267
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3268
    return-void
.end method

.method public runCreateUser()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2257
    const/4 v0, -0x1

    .line 2258
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 2260
    .local v1, "flags":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_6b

    .line 2261
    const-string v2, "--profileOf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2262
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 2263
    :cond_1b
    const-string v2, "--managed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2264
    or-int/lit8 v1, v1, 0x20

    goto :goto_2

    .line 2265
    :cond_26
    const-string v2, "--restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2266
    or-int/lit8 v1, v1, 0x8

    goto :goto_2

    .line 2267
    :cond_31
    const-string v2, "--ephemeral"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2268
    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    .line 2269
    :cond_3c
    const-string v2, "--guest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2270
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 2271
    :cond_47
    const-string v2, "--demo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2272
    or-int/lit16 v1, v1, 0x200

    goto :goto_2

    .line 2274
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    return v4

    .line 2278
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2279
    .local v2, "arg":Ljava/lang/String;
    if-nez v2, :cond_7b

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no user name specified."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    return v4

    .line 2283
    :cond_7b
    move-object v5, v2

    .line 2285
    .local v5, "name":Ljava/lang/String;
    nop

    .line 2286
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2285
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    .line 2287
    .local v6, "um":Landroid/os/IUserManager;
    nop

    .line 2288
    const-string v7, "account"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 2287
    invoke-static {v7}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v7

    .line 2289
    .local v7, "accm":Landroid/accounts/IAccountManager;
    and-int/lit8 v8, v1, 0x8

    const/4 v9, 0x0

    if-eqz v8, :cond_b2

    .line 2291
    if-ltz v0, :cond_9c

    move v8, v0

    goto :goto_9d

    :cond_9c
    move v8, v9

    .line 2292
    .local v8, "parentUserId":I
    :goto_9d
    invoke-interface {v6, v5, v8}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2293
    .local v10, "info":Landroid/content/pm/UserInfo;
    nop

    .line 2294
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    if-nez v11, :cond_ac

    const-string/jumbo v11, "root"

    goto :goto_ae

    :cond_ac
    const-string v11, "com.android.shell"

    .line 2293
    :goto_ae
    invoke-interface {v7, v8, v0, v11}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 2295
    .end local v8  # "parentUserId":I
    goto :goto_be

    .end local v10  # "info":Landroid/content/pm/UserInfo;
    :cond_b2
    if-gez v0, :cond_b9

    .line 2296
    invoke-interface {v6, v5, v1}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .restart local v10  # "info":Landroid/content/pm/UserInfo;
    goto :goto_be

    .line 2298
    .end local v10  # "info":Landroid/content/pm/UserInfo;
    :cond_b9
    const/4 v8, 0x0

    invoke-interface {v6, v5, v1, v0, v8}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2301
    .restart local v10  # "info":Landroid/content/pm/UserInfo;
    :goto_be
    if-eqz v10, :cond_db

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Success: created user id "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    return v9

    .line 2305
    :cond_db
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, "Error: couldn\'t create User."

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    return v4
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

    .line 2360
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2361
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2362
    .local v0, "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2362
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    const/4 v1, 0x0

    return v1
.end method

.method public runGetMaxUsers()I
    .registers 4

    .line 2354
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2354
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    const/4 v0, 0x0

    return v0
.end method

.method public runMovePackage()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: package name not specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    return v1

    .line 1269
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1270
    .local v2, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1271
    const/4 v2, 0x0

    .line 1274
    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1276
    .local v3, "moveId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    .line 1277
    .local v4, "status":I
    :goto_2b
    invoke-static {v4}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1278
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1279
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    goto :goto_2b

    .line 1282
    :cond_3d
    const/16 v5, -0x64

    if-ne v4, v5, :cond_4c

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    const/4 v1, 0x0

    return v1

    .line 1286
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    return v1
.end method

.method public runMovePrimaryStorage()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1294
    const/4 v0, 0x0

    .line 1297
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    .line 1299
    .local v1, "moveId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1300
    .local v2, "status":I
    :goto_1a
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1301
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1302
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_1a

    .line 1305
    :cond_2c
    const/16 v3, -0x64

    if-ne v2, v3, :cond_3b

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    const/4 v3, 0x0

    return v3

    .line 1309
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    const/4 v3, 0x1

    return v3
.end method

.method public runRemoveUser()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2313
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2314
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no user id specified."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2315
    return v1

    .line 2317
    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 2318
    .local v2, "userId":I
    nop

    .line 2319
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2318
    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 2320
    .local v3, "um":Landroid/os/IUserManager;
    invoke-interface {v3, v2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Success: removed user"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    const/4 v1, 0x0

    return v1

    .line 2324
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: couldn\'t remove user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    return v1
.end method

.method public runSetUserRestriction()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2330
    const/4 v0, 0x0

    .line 2331
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2332
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2336
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2337
    .local v2, "restriction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2339
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2340
    const/4 v4, 0x1

    .local v4, "value":Z
    goto :goto_32

    .line 2341
    .end local v4  # "value":Z
    :cond_29
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2342
    const/4 v4, 0x0

    .line 2347
    .restart local v4  # "value":Z
    :goto_32
    nop

    .line 2348
    const-string/jumbo v5, "user"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2347
    invoke-static {v5}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 2349
    .local v5, "um":Landroid/os/IUserManager;
    invoke-interface {v5, v2, v4, v0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2350
    const/4 v6, 0x0

    return v6

    .line 2344
    .end local v4  # "value":Z
    .end local v5  # "um":Landroid/os/IUserManager;
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: valid value not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    const/4 v4, 0x1

    return v4
.end method
