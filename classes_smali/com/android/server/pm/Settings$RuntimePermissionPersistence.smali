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
    .param p2, "persistenceLock"  # Ljava/lang/Object;

    .line 5246
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5223
    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5227
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5230
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5234
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5238
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5242
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5247
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5248
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"  # I

    .line 5216
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"  # I

    .line 5216
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method private onUserRemovedLPw(I)V
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5409
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5411
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

    .line 5412
    .local v1, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5413
    .end local v1  # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_11

    .line 5415
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

    .line 5416
    .restart local v1  # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5417
    .end local v1  # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_2d

    .line 5419
    :cond_3d
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5420
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5421
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5422
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V
    .registers 13
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"  # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5522
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5524
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_97

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5525
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_97

    .line 5526
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5527
    goto :goto_4

    .line 5530
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x317b13

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2b

    :cond_2a
    goto :goto_35

    :cond_2b
    const-string/jumbo v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v4, v7

    :goto_35
    if-eqz v4, :cond_38

    goto :goto_95

    .line 5532
    :cond_38
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5533
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 5534
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_64

    .line 5535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5536
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5537
    goto :goto_4

    .line 5540
    :cond_64
    const-string v6, "granted"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5541
    .local v6, "grantedStr":Ljava/lang/String;
    if-eqz v6, :cond_75

    .line 5542
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    goto :goto_75

    :cond_73
    move v3, v7

    goto :goto_76

    :cond_75
    :goto_75
    nop

    .line 5544
    .local v3, "granted":Z
    :goto_76
    const-string v8, "flags"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5545
    .local v1, "flagsStr":Ljava/lang/String;
    if-eqz v1, :cond_85

    .line 5546
    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_86

    :cond_85
    nop

    .line 5548
    .local v7, "flags":I
    :goto_86
    const v8, 0xfbff

    if-eqz v3, :cond_92

    .line 5549
    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5550
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_95

    .line 5553
    :cond_92
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5557
    .end local v1  # "flagsStr":Ljava/lang/String;
    .end local v3  # "granted":Z
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "grantedStr":Ljava/lang/String;
    .end local v7  # "flags":I
    :goto_95
    goto/16 :goto_4

    .line 5560
    :cond_97
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
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

    .line 5474
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5476
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_ec

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5477
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_ec

    .line 5478
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5479
    goto :goto_4

    .line 5482
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1b1cc

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v4, v5, :cond_4b

    const v5, 0x98dd20f

    if-eq v4, v5, :cond_40

    const v5, 0x1cf15833

    if-eq v4, v5, :cond_35

    :cond_34
    goto :goto_56

    :cond_35
    const-string/jumbo v4, "shared-user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v6

    goto :goto_57

    :cond_40
    const-string/jumbo v4, "runtime-permissions"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    goto :goto_57

    :cond_4b
    const-string/jumbo v4, "pkg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v3

    goto :goto_57

    :goto_56
    move v1, v7

    :goto_57
    const/4 v4, 0x0

    if-eqz v1, :cond_c7

    const-string v5, "PackageManager"

    const-string/jumbo v7, "name"

    if-eq v1, v3, :cond_96

    if-eq v1, v6, :cond_65

    goto/16 :goto_ea

    .line 5507
    :cond_65
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5508
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 5509
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_8e

    .line 5510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shared user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5512
    goto/16 :goto_4

    .line 5514
    :cond_8e
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_ea

    .line 5496
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_96
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5497
    .restart local v1  # "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5498
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_bf

    .line 5499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5500
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5501
    goto/16 :goto_4

    .line 5503
    :cond_bf
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5504
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_ea

    .line 5486
    :cond_c7
    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 5488
    .local v1, "version":I
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5489
    const-string v3, "fingerprint"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5490
    .local v3, "fingerprint":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5491
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 5492
    .local v4, "defaultsGranted":Z
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5493
    .end local v1  # "version":I
    .end local v3  # "fingerprint":Ljava/lang/String;
    .end local v4  # "defaultsGranted":Z
    nop

    .line 5515
    :goto_ea
    goto/16 :goto_4

    .line 5518
    :cond_ec
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .registers 9
    .param p1, "sb"  # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"  # I

    .line 5425
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 5427
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5428
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 5429
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_30

    .line 5430
    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5431
    const v4, 0xfbff

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5434
    .end local v2  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_30
    goto :goto_c

    .line 5435
    :cond_31
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
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

    .line 5564
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5565
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5566
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5567
    nop

    .line 5568
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 5567
    const-string v5, "granted"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5569
    nop

    .line 5570
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5569
    const-string v5, "flags"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5571
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5572
    .end local v1  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_4

    .line 5573
    :cond_41
    return-void
.end method

.method private writePermissionsSync(I)V
    .registers 18
    .param p1, "userId"  # I

    .line 5312
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v3, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package-perms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 5315
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 5316
    .local v4, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 5318
    .local v5, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    iget-object v6, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5319
    :try_start_31
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5321
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5322
    .local v0, "packageCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3f
    if-ge v7, v0, :cond_6e

    .line 5323
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5324
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 5325
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v10, :cond_6b

    .line 5326
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    .line 5327
    .local v10, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5328
    invoke-virtual {v10, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v11

    .line 5329
    .local v11, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6b

    .line 5330
    invoke-virtual {v4, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5322
    .end local v8  # "packageName":Ljava/lang/String;
    .end local v9  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11  # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 5335
    .end local v7  # "i":I
    :cond_6e
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 5336
    .local v7, "sharedUserCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_77
    if-ge v8, v7, :cond_a2

    .line 5337
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5338
    .local v9, "sharedUserName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5339
    .local v10, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v11

    .line 5340
    .local v11, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5341
    invoke-virtual {v11, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v12

    .line 5342
    .local v12, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9f

    .line 5343
    invoke-virtual {v5, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5336
    .end local v9  # "sharedUserName":Ljava/lang/String;
    .end local v10  # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v11  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12  # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_9f
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 5346
    .end local v0  # "packageCount":I
    .end local v7  # "sharedUserCount":I
    .end local v8  # "i":I
    :cond_a2
    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_31 .. :try_end_a3} :catchall_173

    .line 5348
    const/4 v6, 0x0

    .line 5350
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_a4
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v6, v0

    .line 5352
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 5353
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5354
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5356
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5358
    const-string/jumbo v7, "runtime-permissions"

    invoke-interface {v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5360
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 5361
    .local v7, "version":I
    const-string/jumbo v10, "version"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5363
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5364
    .local v10, "fingerprint":Ljava/lang/String;
    if-eqz v10, :cond_ea

    .line 5365
    const-string v11, "fingerprint"

    invoke-interface {v0, v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5368
    :cond_ea
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 5369
    .local v11, "packageCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_ef
    if-ge v12, v11, :cond_116

    .line 5370
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5371
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 5372
    .local v14, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v15, "pkg"

    invoke-interface {v0, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5373
    const-string/jumbo v15, "name"

    invoke-interface {v0, v9, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5374
    invoke-direct {v1, v0, v14}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5375
    const-string/jumbo v15, "pkg"

    invoke-interface {v0, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5369
    nop

    .end local v13  # "packageName":Ljava/lang/String;
    .end local v14  # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_ef

    .line 5378
    .end local v12  # "i":I
    :cond_116
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 5379
    .local v12, "sharedUserCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_11b
    if-ge v13, v12, :cond_143

    .line 5380
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5381
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 5382
    .local v15, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v8, "shared-user"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5383
    const-string/jumbo v8, "name"

    invoke-interface {v0, v9, v8, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5384
    invoke-direct {v1, v0, v15}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5385
    const-string/jumbo v8, "shared-user"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5379
    nop

    .end local v14  # "packageName":Ljava/lang/String;
    .end local v15  # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_11b

    .line 5388
    .end local v13  # "i":I
    :cond_143
    const-string/jumbo v8, "runtime-permissions"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5390
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5391
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5393
    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_169

    .line 5394
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_15d
    .catchall {:try_start_a4 .. :try_end_15d} :catchall_15e

    goto :goto_169

    .line 5397
    .end local v0  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7  # "version":I
    .end local v10  # "fingerprint":Ljava/lang/String;
    .end local v11  # "packageCount":I
    .end local v12  # "sharedUserCount":I
    :catchall_15e
    move-exception v0

    .line 5398
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_15f
    const-string v7, "PackageManager"

    const-string v8, "Failed to write settings, restoring backup"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5400
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_169
    .catchall {:try_start_15f .. :try_end_169} :catchall_16e

    .line 5402
    .end local v0  # "t":Ljava/lang/Throwable;
    :cond_169
    :goto_169
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5403
    nop

    .line 5404
    return-void

    .line 5402
    :catchall_16e
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 5346
    .end local v6  # "out":Ljava/io/FileOutputStream;
    :catchall_173
    move-exception v0

    :try_start_174
    monitor-exit v6
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    throw v0
.end method


# virtual methods
.method public areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5263
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 5438
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5439
    return-void
.end method

.method getVersionLPr(I)I
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5252
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public readStateForUserSyncLPr(I)V
    .registers 8
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5443
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    .line 5444
    .local v0, "permissionsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 5445
    return-void

    .line 5450
    :cond_d
    :try_start_d
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_45

    .line 5454
    .local v1, "in":Ljava/io/FileInputStream;
    nop

    .line 5457
    :try_start_17
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 5458
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5459
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_22} :catch_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_29
    .catchall {:try_start_17 .. :try_end_22} :catchall_27

    .line 5465
    .end local v2  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5466
    nop

    .line 5467
    return-void

    .line 5465
    :catchall_27
    move-exception v2

    goto :goto_41

    .line 5461
    :catch_29
    move-exception v2

    .line 5462
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing permissions file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "permissionsFile":Ljava/io/File;
    .end local v1  # "in":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .end local p1  # "userId":I
    throw v3
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_27

    .line 5465
    .end local v2  # "e":Ljava/lang/Exception;
    .restart local v0  # "permissionsFile":Ljava/io/File;
    .restart local v1  # "in":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1  # "userId":I
    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 5451
    .end local v1  # "in":Ljava/io/FileInputStream;
    :catch_45
    move-exception v1

    .line 5452
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "PackageManager"

    const-string v3, "No permissions state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    return-void
.end method

.method public setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V
    .registers 4
    .param p1, "fingerPrint"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5269
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5270
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5271
    return-void
.end method

.method setVersionLPr(II)V
    .registers 4
    .param p1, "version"  # I
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5257
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5258
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5259
    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .registers 15
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5282
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_43

    .line 5283
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5286
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5287
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 5288
    .local v5, "lastNotWrittenMutationTimeMillis":J
    sub-long v7, v0, v5

    .line 5290
    .local v7, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2b

    .line 5291
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5292
    return-void

    .line 5296
    :cond_2b
    add-long/2addr v9, v5

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 5298
    .local v9, "maxDelayMillis":J
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5301
    .local v2, "writeDelayMillis":J
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5302
    .local v4, "message":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5303
    .end local v2  # "writeDelayMillis":J
    .end local v4  # "message":Landroid/os/Message;
    .end local v5  # "lastNotWrittenMutationTimeMillis":J
    .end local v7  # "timeSinceLastNotWrittenMutationMillis":J
    .end local v9  # "maxDelayMillis":J
    goto :goto_59

    .line 5304
    :cond_43
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5305
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5306
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5307
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5309
    .end local v2  # "message":Landroid/os/Message;
    :goto_59
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 5274
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5275
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5276
    return-void
.end method
