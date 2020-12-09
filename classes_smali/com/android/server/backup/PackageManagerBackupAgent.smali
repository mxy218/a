.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"

.field private static final UNDEFINED_ANCESTRAL_RECORD_VERSION:I = -0x1


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;I)V
    .registers 4

    .line 137
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 135
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/backup/PackageManagerBackupAgent;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/backup/PackageManagerBackupAgent;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/backup/PackageManagerBackupAgent;J)J
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 1

    .line 63
    invoke-static {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    nop

    .line 440
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 441
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 446
    const-string v2, "@ancestral_record@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 448
    new-array v0, v1, [B

    .line 449
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 450
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 451
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 453
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    goto :goto_2d

    .line 456
    :cond_2c
    const/4 p1, -0x1

    :goto_2d
    return p1
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    .registers 5

    .line 460
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PMBA"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v1

    .line 464
    :cond_1e
    new-instance p1, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V

    return-object p1

    .line 462
    :cond_24
    new-instance p1, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V

    return-object p1
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 162
    nop

    .line 163
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_23

    .line 166
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 167
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 168
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 171
    :cond_23
    return-object p0
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 146
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 147
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 149
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 150
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    .line 152
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 10

    .line 532
    const-string v0, "@meta@"

    const-string v1, "PMBA"

    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 533
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 534
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 535
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 536
    iput-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 537
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 538
    iput-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 544
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 545
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 549
    nop

    .line 550
    :try_start_30
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string v5, "=state="

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 554
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 555
    const/4 v5, 0x2

    if-le p1, v5, :cond_5d

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state file version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", redoing from start"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void

    .line 560
    :cond_5d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 561
    goto :goto_68

    .line 567
    :cond_62
    const-string v2, "Older version of saved state - rewriting"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v2, 0x1

    .line 572
    :goto_68
    const-string v5, "@home@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 574
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 575
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 576
    invoke-static {v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 578
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 584
    :cond_8a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 585
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 586
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 587
    if-nez v2, :cond_a3

    .line 588
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_a3
    :goto_a3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 600
    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_b4

    .line 601
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    goto :goto_b5

    .line 603
    :cond_b4
    int-to-long v5, v0

    .line 606
    :goto_b5
    if-nez v2, :cond_bc

    .line 607
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_bc
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    invoke-direct {v7, p0, v5, v6, v3}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    goto :goto_a3

    .line 591
    :cond_c7
    const-string p1, "No global metadata in state file!"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/io/EOFException; {:try_start_30 .. :try_end_cc} :catch_e3
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_cc} :catch_cd

    .line 592
    return-void

    .line 613
    :catch_cd
    move-exception p1

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read Package Manager state file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 611
    :catch_e3
    move-exception p1

    .line 616
    nop

    .line 617
    :goto_e5
    return-void
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 487
    const-string v0, "PMBA"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_7} :catch_40
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_3e

    .line 492
    nop

    .line 497
    const/16 v3, 0x14

    if-gt v2, v3, :cond_31

    .line 506
    nop

    .line 507
    :try_start_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v4, v2, :cond_2a

    .line 509
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 510
    new-array v7, v6, [B

    .line 511
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 512
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    const/16 v7, 0x20

    if-eq v6, v7, :cond_27

    .line 514
    const/4 v5, 0x1

    .line 508
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 518
    :cond_2a
    if-eqz v5, :cond_30

    .line 520
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 523
    :cond_30
    return-object v3

    .line 498
    :cond_31
    const-string p0, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Bad restore state"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 524
    :catch_3e
    move-exception p0

    goto :goto_47

    .line 488
    :catch_40
    move-exception p0

    .line 490
    const-string p0, "Read empty signature block"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_46} :catch_3e

    .line 491
    return-object v1

    .line 525
    :goto_47
    const-string p0, "Unable to read signatures"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-object v1
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 410
    array-length p1, p2

    invoke-virtual {p0, p2, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 411
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 477
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 478
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 479
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 480
    goto :goto_b

    .line 481
    :cond_1f
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p6

    invoke-direct {v0, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 627
    new-instance p6, Ljava/io/BufferedOutputStream;

    invoke-direct {p6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 628
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 633
    :try_start_13
    const-string p6, "=state="

    invoke-virtual {v0, p6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 634
    const/4 p6, 0x2

    invoke-virtual {v0, p6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 637
    if-eqz p2, :cond_30

    .line 638
    const-string p6, "@home@"

    invoke-virtual {v0, p6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 641
    invoke-static {v0, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 645
    :cond_30
    const-string p2, "@meta@"

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 646
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 647
    sget-object p2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 650
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 651
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 652
    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz p3, :cond_65

    .line 653
    const/high16 p3, -0x80000000

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 654
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_6a

    .line 656
    :cond_65
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 658
    :goto_6a
    goto :goto_43

    .line 660
    :cond_6b
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6e} :catch_6f

    .line 663
    goto :goto_77

    .line 661
    :catch_6f
    move-exception p1

    .line 662
    const-string p1, "PMBA"

    const-string p2, "Unable to write package manager state file!"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_77
    return-void
.end method


# virtual methods
.method public evaluateStorablePackages()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 158
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 180
    const-string p1, "PMBA"

    const-string v0, "getRestoredMetadata() before metadata read!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 p1, 0x0

    return-object p1

    .line 184
    :cond_d
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object p1
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 189
    const-string v0, "PMBA"

    const-string v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_d
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasMetadata()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 22

    .line 206
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Unable to write package backup data file!"

    const-string v4, "@meta@"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 208
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 213
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    const-string v7, "PMBA"

    if-eqz v0, :cond_23

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 215
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Previous metadata "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mismatch vs "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - rewriting"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 228
    :cond_4d
    const/4 v8, 0x1

    :try_start_4e
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 229
    const-string v0, "@ancestral_record@"

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v2, v0, v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_1df

    .line 234
    nop

    .line 236
    const-wide/16 v9, 0x0

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 241
    const/high16 v11, 0x8000000

    const/4 v12, 0x0

    if-eqz v0, :cond_a7

    .line 243
    :try_start_69
    iget-object v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget v15, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-virtual {v13, v14, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_75} :catch_9d

    .line 245
    :try_start_75
    iget-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_7f} :catch_9a

    .line 246
    :try_start_7f
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    .line 247
    iget-object v15, v13, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 248
    if-nez v15, :cond_8d

    .line 249
    const-string v15, "Home app has no signing information"

    invoke-static {v7, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 253
    :cond_8d
    invoke-virtual {v15}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v15

    .line 254
    invoke-static {v15}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v12
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_95} :catch_98

    .line 260
    :goto_95
    move-object v15, v12

    move-object v12, v0

    goto :goto_ab

    .line 256
    :catch_98
    move-exception v0

    goto :goto_a0

    :catch_9a
    move-exception v0

    move-object v14, v12

    goto :goto_a0

    :catch_9d
    move-exception v0

    move-object v13, v12

    move-object v14, v13

    .line 257
    :goto_a0
    const-string v0, "Can\'t access preferred home info"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object v15, v12

    goto :goto_ab

    .line 241
    :cond_a7
    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object v12, v0

    .line 269
    :goto_ab
    :try_start_ab
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 270
    move-object/from16 v16, v12

    iget-wide v11, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    cmp-long v11, v9, v11

    if-nez v11, :cond_d2

    iget-object v11, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 271
    move-object/from16 v12, v16

    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d4

    if-eqz v12, :cond_d0

    iget-object v11, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 273
    invoke-static {v11, v13, v0}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v0
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_cd} :catch_1da

    if-nez v0, :cond_d0

    goto :goto_d4

    :cond_d0
    const/4 v8, 0x0

    goto :goto_d5

    .line 270
    :cond_d2
    move-object/from16 v12, v16

    .line 273
    :cond_d4
    :goto_d4
    nop

    .line 274
    :goto_d5
    if-eqz v8, :cond_ff

    .line 278
    const-string v0, "@home@"

    if-eqz v12, :cond_fb

    .line 279
    :try_start_db
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 280
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v6, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 282
    if-eqz v14, :cond_eb

    goto :goto_ed

    :cond_eb
    const-string v14, ""

    :goto_ed
    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    invoke-static {v6, v15}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 284
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v2, v0, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_ff

    .line 286
    :cond_fb
    const/4 v8, -0x1

    invoke-virtual {v2, v0, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 299
    :cond_ff
    :goto_ff
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 300
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_121

    .line 308
    :cond_11c
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 313
    :goto_121
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_127
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ca

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 314
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 315
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_139} :catch_1da

    if-eqz v0, :cond_13c

    .line 317
    goto :goto_127

    .line 319
    :cond_13c
    nop

    .line 321
    :try_start_13d
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    const/high16 v14, 0x8000000

    invoke-virtual {v0, v11, v14, v13}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_147
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13d .. :try_end_147} :catch_1be
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_147} :catch_1da

    .line 328
    nop

    .line 330
    :try_start_148
    iget-object v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16c

    .line 336
    iget-object v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    iget-object v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 p1, v15

    iget-wide v14, v13, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    cmp-long v13, v16, v14

    if-nez v13, :cond_16e

    .line 338
    move-object/from16 v15, p1

    goto :goto_127

    .line 330
    :cond_16c
    move-object/from16 p1, v15

    .line 342
    :cond_16e
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 343
    if-nez v13, :cond_18e

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not backing up package "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " since it appears to have no signatures."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v15, p1

    goto :goto_127

    .line 358
    :cond_18e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 359
    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v14, :cond_1a2

    .line 360
    const/high16 v14, -0x80000000

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1a7

    .line 363
    :cond_1a2
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 366
    :goto_1a7
    invoke-virtual {v13}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 367
    nop

    .line 368
    invoke-static {v0}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    invoke-static {v6, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 377
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v2, v11, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 379
    move-object/from16 v15, p1

    goto/16 :goto_127

    .line 323
    :catch_1be
    move-exception v0

    move-object/from16 p1, v15

    .line 326
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_1c6} :catch_1da

    .line 327
    move-object/from16 v15, p1

    goto/16 :goto_127

    .line 401
    :cond_1ca
    move-object/from16 p1, v15

    .line 404
    iget-object v2, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object/from16 v1, p0

    move-object v3, v12

    move-wide v4, v9

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    .line 405
    return-void

    .line 397
    :catch_1da
    move-exception v0

    .line 399
    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 230
    :catch_1df
    move-exception v0

    .line 232
    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I

    move-result p2

    .line 428
    invoke-direct {p0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;

    move-result-object p2

    .line 429
    if-nez p2, :cond_12

    .line 430
    const-string p1, "PMBA"

    const-string p2, "Ancestral restore set version is unknown to this Android version; not restoring"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 434
    :cond_12
    invoke-interface {p2, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;->consumeRestoreData(Landroid/app/backup/BackupDataInput;)V

    .line 436
    return-void
.end method
