.class public final Lcom/android/server/accounts/AccountManagerBackupHelper;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    }
.end annotation


# static fields
.field private static final ATTR_ACCOUNT_SHA_256:Ljava/lang/String; = "account-sha-256"

.field private static final ATTR_DIGEST:Ljava/lang/String; = "digest"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final PENDING_RESTORE_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AccountManagerBackupHelper"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

.field private final mLock:Ljava/lang/Object;

.field private mRestoreCancelCommand:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRestorePendingAppPermissions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object p1
.end method


# virtual methods
.method public backupAccountAccessPermissions(I)[B
    .registers 18

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 156
    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 157
    iget-object v3, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_d
    iget-object v4, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_e4

    .line 159
    :try_start_10
    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 160
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllAccountGrants()Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    .line 162
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_e1

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_e4

    return-object v6

    .line 165
    :cond_20
    :try_start_20
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 167
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 168
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    const-string/jumbo v8, "permissions"

    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 174
    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 175
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 178
    if-nez v10, :cond_6c

    .line 179
    goto :goto_4d

    .line 182
    :cond_6c
    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_6f
    if-ge v12, v11, :cond_c2

    aget-object v13, v10, v12
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_73} :catch_d6
    .catchall {:try_start_20 .. :try_end_73} :catchall_e1

    .line 185
    const/16 v0, 0x40

    :try_start_75
    invoke-virtual {v8, v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_79} :catch_a7
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_79} :catch_d6
    .catchall {:try_start_75 .. :try_end_79} :catchall_e1

    .line 191
    nop

    .line 192
    :try_start_7a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_bf

    .line 195
    const-string/jumbo v14, "permission"

    invoke-interface {v7, v6, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string v14, "account-sha-256"

    .line 197
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v15}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v15

    .line 196
    invoke-interface {v7, v6, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v14, "package"

    invoke-interface {v7, v6, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string v13, "digest"

    invoke-interface {v7, v6, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    const-string/jumbo v0, "permission"

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bf

    .line 187
    :catch_a7
    move-exception v0

    .line 188
    const-string v0, "AccountManagerBackupHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping backup of account access grant for non-existing package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    nop

    .line 182
    :cond_bf
    :goto_bf
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f

    .line 203
    :cond_c2
    goto :goto_4d

    .line 204
    :cond_c3
    const-string/jumbo v0, "permissions"

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 206
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 207
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_d3} :catch_d6
    .catchall {:try_start_7a .. :try_end_d3} :catchall_e1

    :try_start_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_e1

    :try_start_d4
    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_e4

    return-object v0

    .line 208
    :catch_d6
    move-exception v0

    .line 209
    :try_start_d7
    const-string v1, "AccountManagerBackupHelper"

    const-string v2, "Error backing up account access grants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    monitor-exit v4
    :try_end_df
    .catchall {:try_start_d7 .. :try_end_df} :catchall_e1

    :try_start_df
    monitor-exit v3
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e4

    return-object v6

    .line 212
    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v0

    .line 213
    :catchall_e4
    move-exception v0

    monitor-exit v3
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e4

    throw v0
.end method

.method public restoreAccountAccessPermissions([BI)V
    .registers 14

    .line 218
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 220
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 223
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 224
    :goto_1e
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c0

    .line 225
    const-string/jumbo v2, "permissions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 226
    goto :goto_1e

    .line 228
    :cond_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 229
    :goto_37
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 230
    const-string/jumbo v4, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 231
    goto :goto_37

    .line 233
    :cond_4b
    const-string v4, "account-sha-256"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 235
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 237
    :cond_5a
    const-string/jumbo v4, "package"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 238
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 239
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 241
    :cond_6a
    const-string v4, "digest"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 243
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    :cond_79
    new-instance v4, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    move-object v5, v4

    move-object v6, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    invoke-virtual {v4, v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 250
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_8a} :catch_d4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8a} :catch_d4

    .line 252
    :try_start_8a
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    if-nez v6, :cond_a7

    .line 253
    new-instance v6, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    invoke-direct {v6, p0, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 254
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v7, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v8, v8, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 255
    invoke-virtual {v8}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x1

    .line 254
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 257
    :cond_a7
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    if-nez v6, :cond_b2

    .line 258
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    .line 260
    :cond_b2
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    monitor-exit v5

    goto :goto_bc

    :catchall_b9
    move-exception p1

    monitor-exit v5
    :try_end_bb
    .catchall {:try_start_8a .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw p1

    .line 263
    :cond_bc
    :goto_bc
    goto/16 :goto_37

    .line 264
    :cond_be
    goto/16 :goto_1e

    .line 267
    :cond_c0
    new-instance p1, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;

    invoke-direct {p1, p0, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    .line 268
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_d3} :catch_d4
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_d3} :catch_d4

    .line 272
    goto :goto_dc

    .line 270
    :catch_d4
    move-exception p1

    .line 271
    const-string p2, "AccountManagerBackupHelper"

    const-string v0, "Error restoring app permissions"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :goto_dc
    return-void
.end method
