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
    .param p1, "context"  # Landroid/content/Context;

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
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/List;

    .line 113
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "confirmComponent"  # Ljava/lang/String;
    .param p3, "testUserKeyFile"  # Ljava/io/File;

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/List;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->deleteKeyFile()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 86
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->sendPersistKeyStoreMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"  # Ljava/lang/Iterable;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method private createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "fingerprints"  # Ljava/lang/String;

    .line 640
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v1, "fingerprints"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    return-object v0
.end method

.method private deleteKeyFile()V
    .registers 2

    .line 719
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 720
    .local v0, "keyFile":Ljava/io/File;
    if-eqz v0, :cond_9

    .line 721
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 723
    :cond_9
    return-void
.end method

.method private getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "fileName"  # Ljava/lang/String;

    .line 651
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 652
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .local v1, "adbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 655
    const-string v2, "AdbDebuggingManager"

    const-string v3, "ADB data directory does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v2, 0x0

    return-object v2

    .line 659
    :cond_1b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "key"  # Ljava/lang/String;

    .line 546
    const-string v0, "AdbDebuggingManager"

    const-string v1, "0123456789ABCDEF"

    .line 547
    .local v1, "hex":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    if-nez p1, :cond_e

    .line 551
    return-object v3

    .line 555
    :cond_e
    :try_start_e
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_60

    .line 559
    .local v4, "digester":Ljava/security/MessageDigest;
    nop

    .line 561
    const-string v5, "\\s+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 564
    .local v5, "base64_data":[B
    :try_start_22
    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2a} :catch_59

    .line 568
    .local v0, "digest":[B
    nop

    .line 569
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    array-length v6, v0

    if-ge v3, v6, :cond_54

    .line 570
    aget-byte v6, v0, v3

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    aget-byte v6, v0, v3

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_51

    .line 573
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 576
    .end local v3  # "i":I
    :cond_54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 565
    .end local v0  # "digest":[B
    :catch_59
    move-exception v6

    .line 566
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "error doing base64 decoding"

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    return-object v3

    .line 556
    .end local v4  # "digester":Ljava/security/MessageDigest;
    .end local v5  # "base64_data":[B
    .end local v6  # "e":Ljava/lang/IllegalArgumentException;
    :catch_60
    move-exception v4

    .line 557
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "Error getting digester"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    return-object v3
.end method

.method private sendPersistKeyStoreMessage()V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 766
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 767
    return-void
.end method

.method private startConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "fingerprints"  # Ljava/lang/String;

    .line 580
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 581
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 583
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 584
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 585
    goto :goto_24

    :cond_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "componentString":Ljava/lang/String;
    :goto_24
    goto :goto_30

    .line 590
    .end local v2  # "componentString":Ljava/lang/String;
    :cond_25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 593
    .restart local v2  # "componentString":Ljava/lang/String;
    :goto_30
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 594
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 595
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_66

    .line 599
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as an Activity or a Service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdbDebuggingManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 597
    :cond_66
    :goto_66
    return-void
.end method

.method private startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userHandle"  # Landroid/os/UserHandle;
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "fingerprints"  # Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 609
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 610
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 613
    :try_start_17
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1e

    .line 614
    const/4 v2, 0x1

    return v2

    .line 615
    :catch_1e
    move-exception v2

    .line 616
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to start adb whitelist activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .end local v2  # "e":Landroid/content/ActivityNotFoundException;
    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method private startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userHandle"  # Landroid/os/UserHandle;
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "fingerprints"  # Ljava/lang/String;

    .line 627
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 629
    .local v0, "intent":Landroid/content/Intent;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_f

    if-eqz v1, :cond_e

    .line 630
    const/4 v1, 0x1

    return v1

    .line 634
    :cond_e
    goto :goto_27

    .line 632
    :catch_f
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to start adb whitelist service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdbDebuggingManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    .end local v1  # "e":Ljava/lang/SecurityException;
    :goto_27
    const/4 v1, 0x0

    return v1
.end method

.method private writeKey(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"  # Ljava/lang/String;

    .line 672
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 674
    .local v0, "keyFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 675
    return-void

    .line 678
    :cond_7
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 679
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 680
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 681
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 683
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_28

    .line 687
    nop

    .end local v0  # "keyFile":Ljava/io/File;
    .end local v1  # "fo":Ljava/io/FileOutputStream;
    goto :goto_3f

    .line 685
    :catch_28
    move-exception v0

    .line 686
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdbDebuggingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0  # "ex":Ljava/io/IOException;
    :goto_3f
    return-void
.end method

.method private writeKeys(Ljava/lang/Iterable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 691
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 692
    .local v0, "atomicKeyFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 694
    .local v1, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v2

    .line 696
    .local v2, "keyFile":Ljava/io/File;
    if-nez v2, :cond_9

    .line 697
    return-void

    .line 700
    :cond_9
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 701
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 702
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 703
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 704
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 705
    .end local v4  # "key":Ljava/lang/String;
    goto :goto_18

    .line 706
    :cond_31
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 708
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3e} :catch_40

    .line 715
    nop

    .end local v2  # "keyFile":Ljava/io/File;
    goto :goto_5c

    .line 710
    :catch_40
    move-exception v2

    .line 711
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing keys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz v0, :cond_5c

    .line 713
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 716
    .end local v2  # "ex":Ljava/io/IOException;
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 5
    .param p1, "alwaysAllow"  # Z
    .param p2, "publicKey"  # Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 741
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 742
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 744
    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 3

    .line 758
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 759
    return-void
.end method

.method public denyDebugging()V
    .registers 3

    .line 750
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 751
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 15
    .param p1, "dump"  # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"  # Ljava/lang/String;
    .param p3, "id"  # J

    .line 773
    const-string v0, "AdbDebuggingManager"

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 775
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    move v3, v4

    :goto_e
    const-string v5, "connected_to_adb"

    const-wide v6, 0x10800000001L

    invoke-virtual {p1, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 776
    const-wide v5, 0x10900000002L

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    const-string/jumbo v7, "last_key_received"

    invoke-static {p1, v7, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 780
    const/4 v3, 0x0

    :try_start_26
    const-string/jumbo v5, "user_keys"

    const-wide v6, 0x10900000003L

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/misc/adb/adb_keys"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-static {v8, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 780
    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3c} :catch_3d

    .line 784
    goto :goto_43

    .line 782
    :catch_3d
    move-exception v5

    .line 783
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Cannot read user keys"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v5  # "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string/jumbo v5, "system_keys"

    const-wide v6, 0x10900000004L

    new-instance v8, Ljava/io/File;

    const-string v9, "/adb_keys"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-static {v8, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 787
    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_59} :catch_5a

    .line 791
    goto :goto_60

    .line 789
    :catch_5a
    move-exception v5

    .line 790
    .restart local v5  # "e":Ljava/io/IOException;
    const-string v6, "Cannot read system keys"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    .end local v5  # "e":Ljava/io/IOException;
    :goto_60
    :try_start_60
    const-string/jumbo v5, "keystore"

    const-wide v6, 0x10900000005L

    .line 795
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-virtual {p1, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_73} :catch_74

    .line 798
    goto :goto_7a

    .line 796
    :catch_74
    move-exception v3

    .line 797
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Cannot read keystore: "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v3  # "e":Ljava/io/IOException;
    :goto_7a
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 801
    return-void
.end method

.method getAdbTempKeysFile()Ljava/io/File;
    .registers 2

    .line 663
    const-string v0, "adb_temp_keys.xml"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getUserKeyFile()Ljava/io/File;
    .registers 2

    .line 667
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    if-nez v0, :cond_a

    const-string v0, "adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public setAdbEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 731
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    .line 732
    :cond_6
    const/4 v1, 0x2

    .line 731
    :goto_7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 733
    return-void
.end method
