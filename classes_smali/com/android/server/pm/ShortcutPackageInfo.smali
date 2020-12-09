.class Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field private static final ATTR_BACKUP_ALLOWED:Ljava/lang/String; = "allow-backup"

.field private static final ATTR_BACKUP_ALLOWED_INITIALIZED:Ljava/lang/String; = "allow-backup-initialized"

.field private static final ATTR_BACKUP_SOURCE_BACKUP_ALLOWED:Ljava/lang/String; = "bk_src_backup-allowed"

.field private static final ATTR_BACKUP_SOURCE_VERSION:Ljava/lang/String; = "bk_src_version"

.field private static final ATTR_LAST_UPDATE_TIME:Ljava/lang/String; = "last_udpate_time"

.field private static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field private static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field private mBackupAllowed:Z

.field private mBackupAllowedInitialized:Z

.field private mBackupSourceBackupAllowed:Z

.field private mBackupSourceVersionCode:J

.field private mIsShadow:Z

.field private mLastUpdateTime:J

.field private mSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mVersionCode:J


# direct methods
.method private constructor <init>(JJLjava/util/ArrayList;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "[B>;Z)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 68
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 83
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 84
    iput-wide p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 85
    iput-boolean p6, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 86
    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 87
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 88
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 89
    return-void
.end method

.method public static generateForInstalledPackageForTest(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 168
    iget-object p2, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 169
    if-nez p2, :cond_20

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t get signatures: package="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_20
    invoke-virtual {p2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 175
    new-instance p2, Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 176
    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;Z)V

    .line 178
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 179
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 180
    return-object p2
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 8

    .line 92
    new-instance v7, Lcom/android/server/pm/ShortcutPackageInfo;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;Z)V

    return-object v7
.end method


# virtual methods
.method public canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I
    .registers 9

    .line 144
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 145
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-static {v0, p2, p1}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result p1

    const-string v0, "ShortcutService"

    if-nez p1, :cond_1a

    .line 146
    const-string p1, "Can\'t restore: Package signature mismatch"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 p1, 0x66

    return p1

    .line 149
    :cond_1a
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    if-nez p1, :cond_25

    goto :goto_55

    .line 154
    :cond_25
    const/4 p1, 0x0

    if-nez p3, :cond_54

    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    cmp-long p3, v1, v3

    if-gez p3, :cond_54

    .line 155
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p3, p1

    const/4 p1, 0x1

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p3, p1

    .line 155
    const-string p1, "Can\'t restore: package current version %d < backed up version %d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 p1, 0x64

    return p1

    .line 160
    :cond_54
    return p1

    .line 151
    :cond_55
    :goto_55
    const-string p1, "Can\'t restore: package didn\'t or doesn\'t allow backup"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/16 p1, 0x65

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    const-string v0, "PackageInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string v0, "  IsShadow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 326
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v0, :cond_1f

    const-string v0, " (not installed)"

    goto :goto_21

    :cond_1f
    const-string v0, " (installed)"

    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    const-string v0, "  Version: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 332
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 334
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    if-eqz v0, :cond_4b

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    const-string v0, "  Backup Allowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 338
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 341
    :cond_4b
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_73

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v0, "  Backup source version: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 345
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    const-string v0, "  Backup source backup allowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 350
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 353
    :cond_73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string v0, "  Last package update time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 356
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 358
    const/4 v0, 0x0

    :goto_84
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const-string v1, "SigHash: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println([C)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 364
    :cond_ab
    return-void
.end method

.method public getBackupSourceVersionCode()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getVersionCode()J
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    return-wide v0
.end method

.method public hasSignatures()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isBackupAllowed()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    return v0
.end method

.method public isBackupSourceBackupAllowed()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    return v0
.end method

.method public isShadow()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    const-string/jumbo v4, "version"

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 245
    const-string v6, "last_udpate_time"

    invoke-static {v1, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    .line 249
    const/4 v9, 0x1

    if-nez p2, :cond_22

    .line 250
    const-string/jumbo v10, "shadow"

    invoke-static {v1, v10}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_22

    :cond_20
    const/4 v10, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    move v10, v9

    .line 254
    :goto_23
    const-string v11, "bk_src_version"

    invoke-static {v1, v11, v2, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 261
    const-string v13, "allow-backup"

    invoke-static {v1, v13, v9}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 263
    const-string v14, "bk_src_backup-allowed"

    invoke-static {v1, v14, v9}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 266
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 270
    :goto_3e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v9, :cond_9e

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 271
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v8, :cond_9e

    .line 272
    :cond_4d
    const/4 v3, 0x2

    if-eq v2, v3, :cond_53

    .line 273
    const-wide/16 v2, -0x1

    goto :goto_3e

    .line 275
    :cond_53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 276
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 278
    add-int/lit8 v9, v8, 0x1

    if-ne v2, v9, :cond_93

    .line 279
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    move/from16 v17, v8

    const v8, 0x3ffd98b8

    if-eq v9, v8, :cond_6b

    :cond_6a
    goto :goto_77

    :cond_6b
    const-string/jumbo v8, "signature"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    const/16 v16, 0x0

    goto :goto_79

    :goto_77
    const/16 v16, -0x1

    :goto_79
    if-eqz v16, :cond_7c

    goto :goto_95

    .line 281
    :cond_7c
    const-string v2, "hash"

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 285
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    move/from16 v8, v17

    const-wide/16 v2, -0x1

    const/4 v9, 0x1

    goto :goto_3e

    .line 278
    :cond_93
    move/from16 v17, v8

    .line 290
    :goto_95
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 291
    move/from16 v8, v17

    const-wide/16 v2, -0x1

    const/4 v9, 0x1

    goto :goto_3e

    .line 294
    :cond_9e
    if-eqz p2, :cond_a9

    .line 295
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 296
    iput-wide v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 297
    iput-boolean v13, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    goto :goto_af

    .line 299
    :cond_a9
    iput-wide v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 300
    iput-wide v11, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 301
    iput-boolean v14, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 303
    :goto_af
    iput-wide v6, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 304
    iput-boolean v10, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 305
    iput-object v15, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 314
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 315
    return-void
.end method

.method public refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    .line 184
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v0, :cond_29

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to refresh package info for shadow package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_29
    nop

    .line 191
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    .line 190
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 192
    const-string v0, "ShortcutService"

    if-nez p1, :cond_53

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_53
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 198
    if-nez p1, :cond_75

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not refreshing signature for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " since it appears to have no signing info."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 204
    :cond_75
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 206
    return-void
.end method

.method public saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    if-nez p3, :cond_b

    .line 211
    const-string p3, "Backup happened before mBackupAllowed is initialized."

    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 214
    :cond_b
    const-string/jumbo p1, "package-info"

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    const-string/jumbo v2, "version"

    invoke-static {p2, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 217
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    const-string v2, "last_udpate_time"

    invoke-static {p2, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 218
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    const-string/jumbo v1, "shadow"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 219
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    const-string v1, "allow-backup"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 223
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    const-string v1, "allow-backup-initialized"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 225
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    const-string v2, "bk_src_version"

    invoke-static {p2, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 226
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    const-string v1, "bk_src_backup-allowed"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 230
    const/4 v0, 0x0

    :goto_46
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 231
    const-string/jumbo v1, "signature"

    invoke-interface {p2, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v3, "hash"

    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 234
    invoke-interface {p2, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 236
    :cond_6f
    invoke-interface {p2, p3, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    return-void
.end method

.method public setShadow(Z)V
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 102
    return-void
.end method

.method public updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V
    .registers 4

    .line 130
    if-eqz p1, :cond_15

    .line 131
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 132
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 133
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 134
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 136
    :cond_15
    return-void
.end method
