.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final INITIAL_VERSION:I = 0x0

.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final UPGRADE_VERSION:I = -0x1

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mPersistenceLock:Ljava/lang/Object;

.field private final mVersions:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .registers 3

    .line 5139
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5116
    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5120
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5123
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5127
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5131
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5135
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5140
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5141
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2

    .line 5109
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2

    .line 5109
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method private onUserRemovedLPw(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5302
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5304
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5305
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5306
    goto :goto_11

    .line 5308
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5309
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5310
    goto :goto_2d

    .line 5312
    :cond_3d
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5313
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5314
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5315
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5415
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5417
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_95

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 5418
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_95

    .line 5419
    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    .line 5420
    goto :goto_4

    .line 5423
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x317b13

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2a

    :cond_29
    goto :goto_33

    :cond_2a
    const-string v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v3, v6

    :goto_33
    if-eqz v3, :cond_36

    goto :goto_93

    .line 5425
    :cond_36
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5426
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 5427
    if-nez v4, :cond_62

    .line 5428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5430
    goto :goto_4

    .line 5433
    :cond_62
    const-string v3, "granted"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5434
    if-eqz v3, :cond_73

    .line 5435
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_73

    :cond_71
    move v2, v6

    goto :goto_74

    :cond_73
    :goto_73
    nop

    .line 5437
    :goto_74
    const-string v3, "flags"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5438
    if-eqz v1, :cond_83

    .line 5439
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_84

    :cond_83
    nop

    .line 5441
    :goto_84
    const v1, 0xfbff

    if-eqz v2, :cond_90

    .line 5442
    invoke-virtual {p2, v4, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5443
    invoke-virtual {p2, v4, p3, v1, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_93

    .line 5446
    :cond_90
    invoke-virtual {p2, v4, p3, v1, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5450
    :goto_93
    goto/16 :goto_4

    .line 5453
    :cond_95
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5367
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5369
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_eb

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 5370
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_eb

    .line 5371
    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    .line 5372
    goto :goto_4

    .line 5375
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1b1cc

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq v3, v4, :cond_4a

    const v4, 0x98dd20f

    if-eq v3, v4, :cond_3f

    const v4, 0x1cf15833

    if-eq v3, v4, :cond_34

    :cond_33
    goto :goto_55

    :cond_34
    const-string/jumbo v3, "shared-user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v5

    goto :goto_56

    :cond_3f
    const-string/jumbo v3, "runtime-permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    goto :goto_56

    :cond_4a
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_56

    :goto_55
    move v1, v6

    :goto_56
    const/4 v3, 0x0

    if-eqz v1, :cond_c6

    const-string v4, "PackageManager"

    const-string/jumbo v6, "name"

    if-eq v1, v2, :cond_95

    if-eq v1, v5, :cond_64

    goto/16 :goto_e9

    .line 5400
    :cond_64
    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5401
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5402
    if-nez v2, :cond_8d

    .line 5403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shared user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5404
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5405
    goto/16 :goto_4

    .line 5407
    :cond_8d
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_e9

    .line 5389
    :cond_95
    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5390
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5391
    if-nez v2, :cond_be

    .line 5392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5394
    goto/16 :goto_4

    .line 5396
    :cond_be
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5397
    goto :goto_e9

    .line 5379
    :cond_c6
    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 5381
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5382
    const-string v1, "fingerprint"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5383
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5384
    sget-object v2, Landroid/os/Build;->DATE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5385
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5386
    nop

    .line 5408
    :goto_e9
    goto/16 :goto_4

    .line 5411
    :cond_eb
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .registers 7

    .line 5318
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p1

    .line 5320
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5321
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 5322
    if-eqz v1, :cond_30

    .line 5323
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5324
    const v2, 0xfbff

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5327
    :cond_30
    goto :goto_c

    .line 5328
    :cond_31
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5457
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5458
    const-string v1, "item"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5459
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5460
    nop

    .line 5461
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 5460
    const-string v4, "granted"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5462
    nop

    .line 5463
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 5462
    const-string v3, "flags"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5464
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5465
    goto :goto_4

    .line 5466
    :cond_40
    return-void
.end method

.method private writePermissionsSync(I)V
    .registers 16

    .line 5205
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v1, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-perms-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5208
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 5209
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 5211
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5212
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5214
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5215
    const/4 v5, 0x0

    move v6, v5

    :goto_39
    if-ge v6, v4, :cond_68

    .line 5216
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5217
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 5218
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v9, :cond_65

    .line 5219
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    .line 5220
    nop

    .line 5221
    invoke-virtual {v8, p1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v8

    .line 5222
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_65

    .line 5223
    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5215
    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 5228
    :cond_68
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5229
    move v6, v5

    :goto_71
    if-ge v6, v4, :cond_9c

    .line 5230
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5231
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 5232
    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    .line 5233
    nop

    .line 5234
    invoke-virtual {v8, p1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v8

    .line 5235
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_99

    .line 5236
    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5229
    :cond_99
    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    .line 5239
    :cond_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_2a .. :try_end_9d} :catchall_16a

    .line 5241
    nop

    .line 5243
    const/4 v3, 0x0

    :try_start_9f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_154

    .line 5245
    :try_start_a3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 5246
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5247
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5249
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5251
    const-string/jumbo v7, "runtime-permissions"

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5253
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 5254
    const-string/jumbo v9, "version"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5256
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5257
    if-eqz v7, :cond_e2

    .line 5258
    const-string v9, "fingerprint"

    invoke-interface {v6, v3, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5261
    :cond_e2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 5262
    move v10, v5

    :goto_e7
    if-ge v10, v9, :cond_10d

    .line 5263
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5264
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 5265
    const-string/jumbo v13, "pkg"

    invoke-interface {v6, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5266
    const-string/jumbo v13, "name"

    invoke-interface {v6, v3, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5267
    invoke-direct {p0, v6, v12}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5268
    const-string/jumbo v11, "pkg"

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5262
    add-int/lit8 v10, v10, 0x1

    goto :goto_e7

    .line 5271
    :cond_10d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5272
    nop

    :goto_112
    if-ge v5, v1, :cond_138

    .line 5273
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5274
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 5275
    const-string/jumbo v11, "shared-user"

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5276
    const-string/jumbo v11, "name"

    invoke-interface {v6, v3, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5277
    invoke-direct {p0, v6, v10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5278
    const-string/jumbo v9, "shared-user"

    invoke-interface {v6, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5272
    add-int/lit8 v5, v5, 0x1

    goto :goto_112

    .line 5281
    :cond_138
    const-string/jumbo v1, "runtime-permissions"

    invoke-interface {v6, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5283
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5284
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5286
    sget-object v1, Landroid/os/Build;->DATE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 5287
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_151
    .catchall {:try_start_a3 .. :try_end_151} :catchall_152

    goto :goto_160

    .line 5290
    :catchall_152
    move-exception p1

    goto :goto_156

    :catchall_154
    move-exception p1

    move-object v4, v3

    .line 5291
    :goto_156
    :try_start_156
    const-string v1, "PackageManager"

    const-string v2, "Failed to write settings, restoring backup"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5293
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_160
    .catchall {:try_start_156 .. :try_end_160} :catchall_165

    .line 5295
    :cond_160
    :goto_160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5296
    nop

    .line 5297
    return-void

    .line 5295
    :catchall_165
    move-exception p1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 5239
    :catchall_16a
    move-exception p1

    :try_start_16b
    monitor-exit v3
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    throw p1
.end method


# virtual methods
.method public areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5156
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3

    .line 5331
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 5332
    return-void
.end method

.method getVersionLPr(I)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5145
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public readStateForUserSyncLPr(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5336
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    .line 5337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 5338
    return-void

    .line 5343
    :cond_d
    :try_start_d
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_45

    .line 5347
    nop

    .line 5350
    :try_start_17
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 5351
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5352
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_22} :catch_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_29
    .catchall {:try_start_17 .. :try_end_22} :catchall_27

    .line 5358
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5359
    nop

    .line 5360
    return-void

    .line 5358
    :catchall_27
    move-exception p1

    goto :goto_41

    .line 5354
    :catch_29
    move-exception p1

    .line 5355
    :try_start_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing permissions file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_27

    .line 5358
    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 5344
    :catch_45
    move-exception p1

    .line 5345
    const-string p1, "PackageManager"

    const-string v0, "No permissions state"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    return-void
.end method

.method public setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5162
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5163
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5164
    return-void
.end method

.method setVersionLPr(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5150
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5151
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5152
    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5175
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_43

    .line 5176
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5179
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5180
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 5181
    sub-long v7, v0, v5

    .line 5183
    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2b

    .line 5184
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5185
    return-void

    .line 5189
    :cond_2b
    add-long/2addr v5, v9

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5191
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 5194
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5195
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5196
    goto :goto_59

    .line 5197
    :cond_43
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5198
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5199
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5200
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5202
    :goto_59
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .registers 3

    .line 5167
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5168
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5169
    return-void
.end method
