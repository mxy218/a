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

    .line 5250
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5227
    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5231
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5234
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5238
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5242
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5246
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5251
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5252
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"  # I

    .line 5220
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"  # I

    .line 5220
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

    .line 5413
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5415
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

    .line 5416
    .local v1, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5417
    .end local v1  # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_11

    .line 5419
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

    .line 5420
    .restart local v1  # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5421
    .end local v1  # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_2d

    .line 5423
    :cond_3d
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5424
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5425
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5426
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

    .line 5526
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5528
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

    .line 5529
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_97

    .line 5530
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5531
    goto :goto_4

    .line 5534
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

    .line 5536
    :cond_38
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5537
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 5538
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_64

    .line 5539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5541
    goto :goto_4

    .line 5544
    :cond_64
    const-string v6, "granted"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5545
    .local v6, "grantedStr":Ljava/lang/String;
    if-eqz v6, :cond_75

    .line 5546
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

    .line 5548
    .local v3, "granted":Z
    :goto_76
    const-string v8, "flags"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5549
    .local v1, "flagsStr":Ljava/lang/String;
    if-eqz v1, :cond_85

    .line 5550
    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_86

    :cond_85
    nop

    .line 5552
    .local v7, "flags":I
    :goto_86
    const v8, 0xfbff

    if-eqz v3, :cond_92

    .line 5553
    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5554
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_95

    .line 5557
    :cond_92
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5561
    .end local v1  # "flagsStr":Ljava/lang/String;
    .end local v3  # "granted":Z
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "grantedStr":Ljava/lang/String;
    .end local v7  # "flags":I
    :goto_95
    goto/16 :goto_4

    .line 5564
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

    .line 5478
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5480
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

    .line 5481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_ec

    .line 5482
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5483
    goto :goto_4

    .line 5486
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

    .line 5511
    :cond_65
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5512
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 5513
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_8e

    .line 5514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shared user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5515
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5516
    goto/16 :goto_4

    .line 5518
    :cond_8e
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_ea

    .line 5500
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_96
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5501
    .restart local v1  # "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5502
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_bf

    .line 5503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5504
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5505
    goto/16 :goto_4

    .line 5507
    :cond_bf
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5508
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_ea

    .line 5490
    :cond_c7
    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 5492
    .local v1, "version":I
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5493
    const-string v3, "fingerprint"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5494
    .local v3, "fingerprint":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5495
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 5496
    .local v4, "defaultsGranted":Z
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5497
    .end local v1  # "version":I
    .end local v3  # "fingerprint":Ljava/lang/String;
    .end local v4  # "defaultsGranted":Z
    nop

    .line 5519
    :goto_ea
    goto/16 :goto_4

    .line 5522
    :cond_ec
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .registers 9
    .param p1, "sb"  # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"  # I

    .line 5429
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 5431
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

    .line 5432
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 5433
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_30

    .line 5434
    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5435
    const v4, 0xfbff

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5438
    .end local v2  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_30
    goto :goto_c

    .line 5439
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

    .line 5568
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

    .line 5569
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5570
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5571
    nop

    .line 5572
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 5571
    const-string v5, "granted"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5573
    nop

    .line 5574
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5573
    const-string v5, "flags"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5575
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5576
    .end local v1  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_4

    .line 5577
    :cond_41
    return-void
.end method

.method private writePermissionsSync(I)V
    .registers 18
    .param p1, "userId"  # I

    .line 5316
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

    .line 5319
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 5320
    .local v4, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 5322
    .local v5, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    iget-object v6, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5323
    :try_start_31
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5325
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5326
    .local v0, "packageCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3f
    if-ge v7, v0, :cond_6e

    .line 5327
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5328
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 5329
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v10, :cond_6b

    .line 5330
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    .line 5331
    .local v10, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5332
    invoke-virtual {v10, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v11

    .line 5333
    .local v11, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6b

    .line 5334
    invoke-virtual {v4, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5326
    .end local v8  # "packageName":Ljava/lang/String;
    .end local v9  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11  # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 5339
    .end local v7  # "i":I
    :cond_6e
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 5340
    .local v7, "sharedUserCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_77
    if-ge v8, v7, :cond_a2

    .line 5341
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5342
    .local v9, "sharedUserName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5343
    .local v10, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v11

    .line 5344
    .local v11, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5345
    invoke-virtual {v11, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v12

    .line 5346
    .local v12, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9f

    .line 5347
    invoke-virtual {v5, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5340
    .end local v9  # "sharedUserName":Ljava/lang/String;
    .end local v10  # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v11  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12  # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_9f
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 5350
    .end local v0  # "packageCount":I
    .end local v7  # "sharedUserCount":I
    .end local v8  # "i":I
    :cond_a2
    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_31 .. :try_end_a3} :catchall_173

    .line 5352
    const/4 v6, 0x0

    .line 5354
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_a4
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v6, v0

    .line 5356
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 5357
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5358
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5360
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5362
    const-string/jumbo v7, "runtime-permissions"

    invoke-interface {v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5364
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 5365
    .local v7, "version":I
    const-string/jumbo v10, "version"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5367
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5368
    .local v10, "fingerprint":Ljava/lang/String;
    if-eqz v10, :cond_ea

    .line 5369
    const-string v11, "fingerprint"

    invoke-interface {v0, v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5372
    :cond_ea
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 5373
    .local v11, "packageCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_ef
    if-ge v12, v11, :cond_116

    .line 5374
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5375
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 5376
    .local v14, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v15, "pkg"

    invoke-interface {v0, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5377
    const-string/jumbo v15, "name"

    invoke-interface {v0, v9, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5378
    invoke-direct {v1, v0, v14}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5379
    const-string/jumbo v15, "pkg"

    invoke-interface {v0, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5373
    nop

    .end local v13  # "packageName":Ljava/lang/String;
    .end local v14  # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_ef

    .line 5382
    .end local v12  # "i":I
    :cond_116
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 5383
    .local v12, "sharedUserCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_11b
    if-ge v13, v12, :cond_143

    .line 5384
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5385
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 5386
    .local v15, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v8, "shared-user"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5387
    const-string/jumbo v8, "name"

    invoke-interface {v0, v9, v8, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5388
    invoke-direct {v1, v0, v15}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5389
    const-string/jumbo v8, "shared-user"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5383
    nop

    .end local v14  # "packageName":Ljava/lang/String;
    .end local v15  # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_11b

    .line 5392
    .end local v13  # "i":I
    :cond_143
    const-string/jumbo v8, "runtime-permissions"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5394
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5395
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5397
    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_169

    .line 5398
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_15d
    .catchall {:try_start_a4 .. :try_end_15d} :catchall_15e

    goto :goto_169

    .line 5401
    .end local v0  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7  # "version":I
    .end local v10  # "fingerprint":Ljava/lang/String;
    .end local v11  # "packageCount":I
    .end local v12  # "sharedUserCount":I
    :catchall_15e
    move-exception v0

    .line 5402
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_15f
    const-string v7, "PackageManager"

    const-string v8, "Failed to write settings, restoring backup"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5404
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_169
    .catchall {:try_start_15f .. :try_end_169} :catchall_16e

    .line 5406
    .end local v0  # "t":Ljava/lang/Throwable;
    :cond_169
    :goto_169
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5407
    nop

    .line 5408
    return-void

    .line 5406
    :catchall_16e
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 5350
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

    .line 5267
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 5442
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5443
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

    .line 5256
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

    .line 5447
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    .line 5448
    .local v0, "permissionsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 5449
    return-void

    .line 5454
    :cond_d
    :try_start_d
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_45

    .line 5458
    .local v1, "in":Ljava/io/FileInputStream;
    nop

    .line 5461
    :try_start_17
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 5462
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5463
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_22} :catch_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_29
    .catchall {:try_start_17 .. :try_end_22} :catchall_27

    .line 5469
    .end local v2  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5470
    nop

    .line 5471
    return-void

    .line 5469
    :catchall_27
    move-exception v2

    goto :goto_41

    .line 5465
    :catch_29
    move-exception v2

    .line 5466
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

    .line 5469
    .end local v2  # "e":Ljava/lang/Exception;
    .restart local v0  # "permissionsFile":Ljava/io/File;
    .restart local v1  # "in":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1  # "userId":I
    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 5455
    .end local v1  # "in":Ljava/io/FileInputStream;
    :catch_45
    move-exception v1

    .line 5456
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "PackageManager"

    const-string v3, "No permissions state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
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

    .line 5273
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5274
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5275
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

    .line 5261
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5262
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5263
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

    .line 5284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5286
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_43

    .line 5287
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5290
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5291
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 5292
    .local v5, "lastNotWrittenMutationTimeMillis":J
    sub-long v7, v0, v5

    .line 5294
    .local v7, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2b

    .line 5295
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5296
    return-void

    .line 5300
    :cond_2b
    add-long/2addr v9, v5

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 5302
    .local v9, "maxDelayMillis":J
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5305
    .local v2, "writeDelayMillis":J
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5306
    .local v4, "message":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5307
    .end local v2  # "writeDelayMillis":J
    .end local v4  # "message":Landroid/os/Message;
    .end local v5  # "lastNotWrittenMutationTimeMillis":J
    .end local v7  # "timeSinceLastNotWrittenMutationMillis":J
    .end local v9  # "maxDelayMillis":J
    goto :goto_59

    .line 5308
    :cond_43
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5309
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5310
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5311
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5313
    .end local v2  # "message":Landroid/os/Message;
    :goto_59
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 5278
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5279
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5280
    return-void
.end method
