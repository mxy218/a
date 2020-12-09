.class public Lcom/android/server/adb/AdbDebuggingManager;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    }
.end annotation


# static fields
.field private static final ADBD_SOCKET:Ljava/lang/String; = "adbd"

.field private static final ADB_DIRECTORY:Ljava/lang/String; = "misc/adb"

.field private static final ADB_KEYS_FILE:Ljava/lang/String; = "adb_keys"

.field private static final ADB_TEMP_KEYS_FILE:Ljava/lang/String; = "adb_temp_keys.xml"

.field private static final BUFFER_SIZE:I = 0x10000

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AdbDebuggingManager"


# instance fields
.field private mAdbEnabled:Z

.field private mConfirmComponent:Ljava/lang/String;

.field private final mConnectedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mTestUserKeyFile:Ljava/io/File;

.field private mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbEnabled:Z

    .line 109
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 111
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/List;

    .line 113
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbEnabled:Z

    .line 121
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/List;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->deleteKeyFile()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->sendPersistKeyStoreMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method private createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 640
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string p1, "key"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string p1, "fingerprints"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    return-object v0
.end method

.method private deleteKeyFile()V
    .registers 2

    .line 718
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_9

    .line 720
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 722
    :cond_9
    return-void
.end method

.method private getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 650
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 651
    new-instance v1, Ljava/io/File;

    const-string v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 654
    const-string p1, "AdbDebuggingManager"

    const-string v0, "ADB data directory does not exist"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 p1, 0x0

    return-object p1

    .line 658
    :cond_1a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 545
    const-string v0, "AdbDebuggingManager"

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    const-string v2, ""

    if-nez p1, :cond_c

    .line 550
    return-object v2

    .line 554
    :cond_c
    :try_start_c
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_60

    .line 558
    nop

    .line 560
    const-string v4, "\\s+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 563
    :try_start_20
    invoke-static {p1, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_28} :catch_59

    .line 567
    nop

    .line 568
    nop

    :goto_2a
    array-length v0, p1

    if-ge v4, v0, :cond_54

    .line 569
    aget-byte v0, p1, v4

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_51

    .line 572
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 575
    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 564
    :catch_59
    move-exception p1

    .line 565
    const-string v1, "error doing base64 decoding"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    return-object v2

    .line 555
    :catch_60
    move-exception p1

    .line 556
    const-string v1, "Error getting digester"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    return-object v2
.end method

.method private sendPersistKeyStoreMessage()V
    .registers 3

    .line 764
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method

.method private startConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 579
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 580
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 583
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 584
    goto :goto_30

    :cond_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 589
    :cond_25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    :goto_30
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 593
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 594
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_66

    .line 598
    :cond_49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as an Activity or a Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdbDebuggingManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void

    .line 596
    :cond_66
    :goto_66
    return-void
.end method

.method private startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 607
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 608
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 609
    const/high16 p4, 0x10000000

    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    const/high16 p4, 0x10000

    invoke-virtual {v0, p3, p4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p4

    if-eqz p4, :cond_36

    .line 612
    :try_start_17
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1e

    .line 613
    const/4 p1, 0x1

    return p1

    .line 614
    :catch_1e
    move-exception p2

    .line 615
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to start adb whitelist activity: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AdbDebuggingManager"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method private startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 626
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 628
    :try_start_4
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_f

    if-eqz p1, :cond_e

    .line 629
    const/4 p1, 0x1

    return p1

    .line 633
    :cond_e
    goto :goto_27

    .line 631
    :catch_f
    move-exception p2

    .line 632
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to start adb whitelist service: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AdbDebuggingManager"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :goto_27
    const/4 p1, 0x0

    return p1
.end method

.method private writeKey(Ljava/lang/String;)V
    .registers 5

    .line 671
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 673
    if-nez v0, :cond_7

    .line 674
    return-void

    .line 677
    :cond_7
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 678
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 679
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 680
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1a0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    .line 686
    goto :goto_3e

    .line 684
    :catch_27
    move-exception p1

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdbDebuggingManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_3e
    return-void
.end method

.method private writeKeys(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 690
    nop

    .line 691
    nop

    .line 693
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v1

    .line 695
    if-nez v1, :cond_a

    .line 696
    return-void

    .line 699
    :cond_a
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_40

    .line 700
    :try_start_f
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 701
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 702
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 703
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 704
    goto :goto_17

    .line 705
    :cond_30
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 707
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1a0

    const/4 v3, -0x1

    invoke-static {p1, v1, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3d} :catch_3e

    .line 714
    goto :goto_5d

    .line 709
    :catch_3e
    move-exception p1

    goto :goto_42

    :catch_40
    move-exception p1

    move-object v2, v0

    .line 710
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing keys: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdbDebuggingManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-eqz v2, :cond_5d

    .line 712
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 715
    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 5

    .line 739
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 740
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 741
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 742
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    return-void
.end method

.method public denyDebugging()V
    .registers 3

    .line 749
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 12

    .line 772
    const-string v0, "AdbDebuggingManager"

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 774
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const/4 v1, 0x0

    if-eqz p4, :cond_d

    const/4 p4, 0x1

    goto :goto_e

    :cond_d
    move p4, v1

    :goto_e
    const-string v2, "connected_to_adb"

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v2, v3, v4, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 775
    const-wide v2, 0x10900000002L

    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    const-string v4, "last_key_received"

    invoke-static {p1, v4, v2, v3, p4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 779
    const/4 p4, 0x0

    :try_start_25
    const-string/jumbo v2, "user_keys"

    const-wide v3, 0x10900000003L

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/misc/adb/adb_keys"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-static {v5, v1, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 779
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3b} :catch_3c

    .line 783
    goto :goto_42

    .line 781
    :catch_3c
    move-exception v2

    .line 782
    const-string v3, "Cannot read user keys"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    :goto_42
    :try_start_42
    const-string/jumbo v2, "system_keys"

    const-wide v3, 0x10900000004L

    new-instance v5, Ljava/io/File;

    const-string v6, "/adb_keys"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-static {v5, v1, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 786
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_58} :catch_59

    .line 790
    goto :goto_5f

    .line 788
    :catch_59
    move-exception v2

    .line 789
    const-string v3, "Cannot read system keys"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    :goto_5f
    :try_start_5f
    const-string v2, "keystore"

    const-wide v3, 0x10900000005L

    .line 794
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 793
    invoke-virtual {p1, v2, v3, v4, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_71} :catch_72

    .line 797
    goto :goto_78

    .line 795
    :catch_72
    move-exception p4

    .line 796
    const-string v1, "Cannot read keystore: "

    invoke-static {v0, v1, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    :goto_78
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 800
    return-void
.end method

.method getAdbTempKeysFile()Ljava/io/File;
    .registers 2

    .line 662
    const-string v0, "adb_temp_keys.xml"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getUserKeyFile()Ljava/io/File;
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    if-nez v0, :cond_a

    const-string v0, "adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public setAdbEnabled(Z)V
    .registers 3

    .line 730
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    .line 731
    :cond_6
    const/4 p1, 0x2

    .line 730
    :goto_7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    return-void
.end method
