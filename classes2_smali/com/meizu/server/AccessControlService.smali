.class public Lcom/meizu/server/AccessControlService;
.super Lmeizu/security/IAccessControlManager$Stub;
.source "AccessControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/AccessControlService$AppInfo;
    }
.end annotation


# static fields
.field private static final APP_LOCKER_CFG_PATH:Ljava/lang/String; = "/data/system/hips.applocker.cfg"

.field private static final APP_LOCKER_LST_PATH:Ljava/lang/String; = "/data/system/hips.applocker.lst"

.field private static final APP_LOCKER_MSG_APPLST_CHANGED:Ljava/lang/String; = "flyme.intent.action.APP_LOCKER_MSG_APPLST_CHANGED"

.field private static final APP_LOCKER_MSG_STATUS_CHANGED:Ljava/lang/String; = "flyme.intent.action.APP_LOCKER_MSG_STATUS_CHANGED"

.field private static final APP_LOCKER_MSG_SWITCH_CHANGED:Ljava/lang/String; = "flyme.intent.action.APP_LOCKER_MSG_SWITCH_CHANGED"

.field public static final EXTRA_ACCESS_CINTROL:Ljava/lang/String; = "access_control_"

.field private static final TAG:Ljava/lang/String; = "AppLocker"

.field public static final TYPE_ACCESS_GUARD:I = 0x2

.field public static final TYPE_ACCESS_NON:I = 0x0

.field public static final TYPE_ACCESS_OPEN:I = 0x3

.field public static final TYPE_ACCESS_PASSWORD:I = 0x1

.field private static mActList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/server/AccessControlService$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mClsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIOSync:Ljava/lang/Object;

.field private static mIgnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mbLock:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mIOSync:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/AccessControlService;->mbLock:Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mActList:Ljava/util/ArrayList;

    .line 142
    sget-object v0, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.connectivitysettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.av.ui.VideoInviteFull"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.av.ui.VideoInviteLock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.av.ui.AVActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.connectivitysettings.bluetooth.BluetoothPairingDialog"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.flyme.calculator.container.ContainerActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.networkmanager.TipActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.media.camera.SecureCameraActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.media.camera.WatchCaptureActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.media.music.feature.vice_music.ViceMusicActiviy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.android.dialer.sos.SosActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/meizu/server/AccessControlService;->mActList:Ljava/util/ArrayList;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lmeizu/security/IAccessControlManager$Stub;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "_if":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/AccessControlService$1;

    invoke-direct {v2, p0}, Lcom/meizu/server/AccessControlService$1;-><init>(Lcom/meizu/server/AccessControlService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method private SSlog(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"  # Ljava/lang/String;

    .line 172
    sget-boolean v0, Lcom/meizu/server/AccessControlService;->mbLock:Z

    if-eqz v0, :cond_9

    .line 173
    const-string v0, "AppLocker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_9
    return-void
.end method

.method public static getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .registers 9
    .param p0, "cr"  # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 651
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 653
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_7
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/meizu/server/AccessControlService;->getControlPackagesLock(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 654
    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_17

    goto :goto_47

    .line 657
    :cond_17
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 658
    .local v3, "nameIndex":I
    const-string v4, "value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 664
    .local v4, "valueIndex":I
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 665
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 667
    .local v6, "value":Ljava/lang/String;
    const-string v7, "access_control_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 668
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_40} :catch_50
    .catchall {:try_start_7 .. :try_end_40} :catchall_4e

    .line 670
    .end local v5  # "name":Ljava/lang/String;
    .end local v6  # "value":Ljava/lang/String;
    :cond_40
    goto :goto_23

    .line 672
    .end local v3  # "nameIndex":I
    .end local v4  # "valueIndex":I
    :cond_41
    nop

    .line 678
    nop

    .line 679
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 672
    return-object v0

    .line 655
    :cond_47
    :goto_47
    nop

    .line 678
    if-eqz v1, :cond_4d

    .line 679
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_4d
    return-object v2

    .line 678
    :catchall_4e
    move-exception v2

    goto :goto_75

    .line 673
    :catch_50
    move-exception v3

    .line 674
    .local v3, "e":Ljava/lang/Exception;
    :try_start_51
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    const-string v4, "AppLocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_4e

    .line 676
    nop

    .line 678
    if-eqz v1, :cond_74

    .line 679
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_74
    return-object v2

    .line 678
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_75
    if-eqz v1, :cond_7a

    .line 679
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v2
.end method

.method protected static getControlPackagesLock(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 10
    .param p0, "resolver"  # Landroid/content/ContentResolver;
    .param p1, "uri"  # Landroid/net/Uri;

    .line 698
    :try_start_0
    const-string v0, "name"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 703
    :catch_12
    move-exception v0

    .line 704
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 705
    const-string v1, "AppLocker"

    const-string v2, "Can\'t query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isGuestMode()Z
    .registers 2

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "ui":Landroid/content/pm/UserInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 167
    goto :goto_c

    .line 166
    :catch_b
    move-exception v1

    .line 168
    :goto_c
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private loadControlPackages()V
    .registers 11

    .line 608
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/server/AccessControlService;->getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 609
    .local v0, "pkg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_12

    .line 610
    const-string v1, "AccessControlService--loadControlPackages--null"

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 611
    return-void

    .line 613
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessControlService--loadControlPackages--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 615
    .local v1, "set":Ljava/util/Set;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 616
    .local v3, "it":Ljava/util/Iterator;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 618
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 619
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 620
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 621
    .local v7, "type":Ljava/lang/Integer;
    const-string v8, "access_control_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 622
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 621
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_83

    goto :goto_8e

    .line 628
    :cond_83
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8b

    goto :goto_8e

    .line 632
    :cond_8b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 637
    :goto_8e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .end local v5  # "entry":Ljava/util/Map$Entry;
    .end local v6  # "name":Ljava/lang/String;
    .end local v7  # "type":Ljava/lang/Integer;
    goto :goto_3b

    .line 640
    :cond_97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/data/system/hips.applocker.lst"

    invoke-direct {p0, v5, v2}, Lcom/meizu/server/AccessControlService;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadControlPackages: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private loadControlStatus()V
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 600
    const/4 v1, 0x0

    const-string v2, "mz_app_lock_control"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v1, v2

    :cond_11
    move v0, v1

    .line 603
    .local v0, "b":Z
    if-ne v0, v2, :cond_17

    const-string v1, "1"

    goto :goto_19

    :cond_17
    const-string v1, "0"

    :goto_19
    const-string v2, "/data/system/hips.applocker.cfg"

    invoke-direct {p0, v2, v1}, Lcom/meizu/server/AccessControlService;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadControlStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/meizu/server/AccessControlService;->mbLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "path"  # Ljava/lang/String;

    .line 178
    const-string v0, ""

    .line 180
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 182
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_77
    .catchall {:try_start_3 .. :try_end_c} :catchall_75

    if-nez v3, :cond_36

    .line 184
    nop

    .line 199
    if-eqz v1, :cond_34

    .line 200
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_34

    .line 202
    :catch_15
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadFile::Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppLocker"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 205
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_34
    :goto_34
    nop

    .line 184
    :goto_35
    return-object v0

    .line 186
    :cond_36
    const/4 v3, 0x0

    .line 187
    .local v3, "line":Ljava/lang/String;
    :try_start_37
    sget-object v4, Lcom/meizu/server/AccessControlService;->mIOSync:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_77
    .catchall {:try_start_37 .. :try_end_3a} :catchall_75

    .line 188
    :try_start_3a
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 189
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 190
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_72

    .line 191
    if-eqz v3, :cond_4e

    .line 192
    move-object v0, v3

    .line 199
    .end local v2  # "file":Ljava/io/File;
    .end local v3  # "line":Ljava/lang/String;
    :cond_4e
    nop

    .line 200
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    .line 205
    :cond_52
    :goto_52
    goto :goto_a5

    .line 202
    :catch_53
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5c
    const-string v4, "LoadFile::Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppLocker"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_a5

    .line 190
    .local v2, "file":Ljava/io/File;
    .restart local v3  # "line":Ljava/lang/String;
    :catchall_72
    move-exception v5

    :try_start_73
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v0  # "ret":Ljava/lang/String;
    .end local v1  # "reader":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/meizu/server/AccessControlService;
    .end local p1  # "path":Ljava/lang/String;
    :try_start_74
    throw v5
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_77
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 198
    .end local v2  # "file":Ljava/io/File;
    .end local v3  # "line":Ljava/lang/String;
    .restart local v0  # "ret":Ljava/lang/String;
    .restart local v1  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/meizu/server/AccessControlService;
    .restart local p1  # "path":Ljava/lang/String;
    :catchall_75
    move-exception v2

    goto :goto_a6

    .line 194
    :catch_77
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    :try_start_78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const-string v3, "AppLocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadFile::Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_78 .. :try_end_95} :catchall_75

    .line 199
    .end local v2  # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_52

    .line 200
    :try_start_97
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_52

    .line 202
    :catch_9b
    move-exception v2

    .line 203
    .restart local v2  # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5c

    .line 207
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_a5
    return-object v0

    .line 199
    :goto_a6
    if-eqz v1, :cond_cb

    .line 200
    :try_start_a8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_cb

    .line 202
    :catch_ac
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadFile::Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppLocker"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 205
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_cb
    :goto_cb
    nop

    :goto_cc
    throw v2
.end method

.method private saveFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "info"  # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 216
    const/16 v2, 0x180

    invoke-static {p1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 218
    :cond_14
    sget-object v2, Lcom/meizu/server/AccessControlService;->mIOSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_4d
    .catchall {:try_start_1 .. :try_end_17} :catchall_4b

    .line 219
    :try_start_17
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 220
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 221
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_48

    .line 227
    .end local v1  # "file":Ljava/io/File;
    :try_start_25
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 231
    :goto_28
    goto :goto_79

    .line 228
    :catch_29
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_32
    const-string v3, "SaveFile::Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLocker"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_79

    .line 221
    .local v1, "file":Ljava/io/File;
    :catchall_48
    move-exception v3

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local v0  # "outputStream":Ljava/io/OutputStream;
    .end local p0  # "this":Lcom/meizu/server/AccessControlService;
    .end local p1  # "path":Ljava/lang/String;
    .end local p2  # "info":Ljava/lang/String;
    :try_start_4a
    throw v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_4d
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 226
    .end local v1  # "file":Ljava/io/File;
    .restart local v0  # "outputStream":Ljava/io/OutputStream;
    .restart local p0  # "this":Lcom/meizu/server/AccessControlService;
    .restart local p1  # "path":Ljava/lang/String;
    .restart local p2  # "info":Ljava/lang/String;
    :catchall_4b
    move-exception v1

    goto :goto_7a

    .line 222
    :catch_4d
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const-string v2, "AppLocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveFile::Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_4b

    .line 227
    .end local v1  # "e":Ljava/lang/Exception;
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_28

    .line 228
    :catch_6f
    move-exception v1

    .line 229
    .restart local v1  # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_32

    .line 233
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_79
    return-void

    .line 227
    :goto_7a
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 231
    goto :goto_9c

    .line 228
    :catch_7e
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveFile::Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppLocker"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_9c
    throw v1
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "szAct"  # Ljava/lang/String;
    .param p2, "szPkg"  # Ljava/lang/String;

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    if-eqz p2, :cond_11

    .line 259
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, p2}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 261
    :cond_11
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 262
    return-void
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "szClassName"  # Ljava/lang/String;

    .line 563
    const/4 v0, 0x1

    .line 564
    .local v0, "bRet":Z
    return v0
.end method

.method public addPackageName(Ljava/lang/String;)Z
    .registers 9
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 510
    const/4 v0, 0x1

    .line 511
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "flyme.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4b

    if-eqz p1, :cond_4b

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 517
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 518
    const/4 v2, 0x0

    .line 519
    .local v2, "bExists":Z
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1b
    :try_start_1b
    sget-object v5, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3a

    .line 520
    sget-object v5, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 521
    .local v5, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v6, v5, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_37

    .line 522
    iput-boolean v3, v5, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    .line 523
    const/4 v2, 0x1

    .line 524
    goto :goto_3a

    .line 519
    .end local v5  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 527
    .end local v4  # "i":I
    :cond_3a
    :goto_3a
    if-nez v2, :cond_46

    .line 528
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    new-instance v4, Lcom/meizu/server/AccessControlService$AppInfo;

    invoke-direct {v4, p1}, Lcom/meizu/server/AccessControlService$AppInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v2  # "bExists":Z
    :cond_46
    monitor-exit v1

    goto :goto_4b

    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_48

    throw v2

    .line 532
    :cond_4b
    :goto_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 533
    return v0
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .registers 3
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 713
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->isAppProtected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delClassName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "szClassName"  # Ljava/lang/String;

    .line 570
    const/4 v0, 0x1

    .line 571
    .local v0, "bRet":Z
    return v0
.end method

.method public delPackageName(Ljava/lang/String;)Z
    .registers 8
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 539
    const/4 v0, 0x1

    .line 540
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "flyme.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    if-eqz p1, :cond_53

    .line 545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_53

    .line 546
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 547
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    :try_start_19
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 548
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 549
    .local v3, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v4, v3, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4b

    .line 550
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delPackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 552
    goto :goto_4e

    .line 547
    .end local v3  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 555
    .end local v2  # "i":I
    :cond_4e
    :goto_4e
    monitor-exit v1

    goto :goto_53

    :catchall_50
    move-exception v2

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_19 .. :try_end_52} :catchall_50

    throw v2

    .line 557
    :cond_53
    :goto_53
    return v0
.end method

.method public getPackageName()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_33

    .line 579
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 580
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 581
    :try_start_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 582
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 583
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 584
    .local v3, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v4, v3, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    nop

    .end local v3  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 586
    .end local v2  # "i":I
    :cond_2e
    monitor-exit v1

    goto :goto_33

    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_30

    throw v2

    .line 588
    :cond_33
    :goto_33
    return-object v0
.end method

.method public getSwitchStatus()Z
    .registers 4

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "bRet":Z
    sget-boolean v0, Lcom/meizu/server/AccessControlService;->mbLock:Z

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSwitchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 423
    return v0
.end method

.method public isAppProtected(Ljava/lang/String;)Z
    .registers 8
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "bRet":Z
    sget-boolean v1, Lcom/meizu/server/AccessControlService;->mbLock:Z

    if-eqz v1, :cond_53

    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    if-eqz p1, :cond_53

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_53

    .line 357
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    :try_start_15
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 359
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 360
    .local v3, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v4, v3, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4b

    .line 361
    const/4 v0, 0x1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppProtected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 363
    goto :goto_4e

    .line 358
    .end local v3  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 366
    .end local v2  # "i":I
    :cond_4e
    :goto_4e
    monitor-exit v1

    goto :goto_53

    :catchall_50
    move-exception v2

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_50

    throw v2

    .line 368
    :cond_53
    :goto_53
    return v0
.end method

.method public isAppProtected2(Ljava/lang/String;)Z
    .registers 8
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "bRet":Z
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4f

    if-eqz p1, :cond_4f

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 378
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 379
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    :try_start_11
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 380
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 381
    .local v3, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v4, v3, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_47

    .line 382
    const/4 v0, 0x1

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppProtected2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 384
    goto :goto_4a

    .line 379
    .end local v3  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 387
    .end local v2  # "i":I
    :cond_4a
    :goto_4a
    monitor-exit v1

    goto :goto_4f

    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_4c

    throw v2

    .line 389
    :cond_4f
    :goto_4f
    return v0
.end method

.method public isAppUnlocked(Ljava/lang/String;)B
    .registers 9
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 395
    const/4 v0, -0x1

    .line 396
    .local v0, "byRet":B
    sget-boolean v1, Lcom/meizu/server/AccessControlService;->mbLock:Z

    if-eqz v1, :cond_5a

    .line 397
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5b

    if-eqz p1, :cond_5b

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5b

    .line 400
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 401
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_16
    :try_start_16
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 402
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 403
    .local v4, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v5, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_52

    .line 404
    iget-boolean v5, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34

    move v2, v6

    :cond_34
    int-to-byte v0, v2

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppUnlocked: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 406
    goto :goto_55

    .line 401
    .end local v4  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 409
    .end local v3  # "i":I
    :cond_55
    :goto_55
    monitor-exit v1

    goto :goto_5b

    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_16 .. :try_end_59} :catchall_57

    throw v2

    .line 412
    :cond_5a
    const/4 v0, -0x2

    .line 414
    :cond_5b
    :goto_5b
    return v0
.end method

.method public isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "szIdentifier"  # Ljava/lang/String;
    .param p2, "itIntent"  # Landroid/content/Intent;

    .line 269
    invoke-static {}, Lcom/meizu/server/AccessControlService;->isGuestMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method public isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;Z)Z
    .registers 14
    .param p1, "szIdentifier"  # Ljava/lang/String;
    .param p2, "itIntent"  # Landroid/content/Intent;
    .param p3, "notGuest"  # Z

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPopupUnlockingActivity::begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 278
    const-string v1, ""

    .line 279
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, ""

    .line 281
    .local v2, "cls":Ljava/lang/String;
    sget-boolean v3, Lcom/meizu/server/AccessControlService;->mbLock:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_ff

    if-eqz p3, :cond_ff

    .line 282
    sget-object v3, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v3, :cond_cc

    sget-object v3, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_cc

    sget-object v3, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    if-eqz v3, :cond_cc

    if-eqz p1, :cond_cc

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_cc

    .line 287
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "arr":[Ljava/lang/String;
    if-eqz v3, :cond_58

    .line 289
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_46
    array-length v7, v3

    if-ge v6, v7, :cond_55

    .line 290
    if-nez v6, :cond_4e

    .line 291
    aget-object v1, v3, v4

    goto :goto_52

    .line 292
    :cond_4e
    if-ne v5, v6, :cond_52

    .line 293
    aget-object v2, v3, v5

    .line 289
    :cond_52
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_55
    move-object v6, v1

    move-object v7, v2

    goto :goto_5a

    .line 288
    .end local v6  # "i":I
    :cond_58
    move-object v6, v1

    move-object v7, v2

    .line 297
    .end local v1  # "pkg":Ljava/lang/String;
    .end local v2  # "cls":Ljava/lang/String;
    .local v6, "pkg":Ljava/lang/String;
    .local v7, "cls":Ljava/lang/String;
    :goto_5a
    sget-object v8, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 298
    move v1, v4

    .local v1, "i":I
    :goto_5e
    :try_start_5e
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7f

    .line 299
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 300
    .local v2, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v9, v2, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7c

    .line 301
    iget-boolean v9, v2, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    if-nez v9, :cond_7f

    .line 303
    const/4 v0, 0x1

    goto :goto_7f

    .line 298
    .end local v2  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 308
    .end local v1  # "i":I
    :cond_7f
    :goto_7f
    monitor-exit v8
    :try_end_80
    .catchall {:try_start_5e .. :try_end_80} :catchall_c9

    .line 309
    sget-object v1, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 310
    move v2, v4

    .local v2, "i":I
    :goto_84
    :try_start_84
    sget-object v8, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_9f

    .line 311
    sget-object v8, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9c

    .line 313
    const/4 v0, 0x0

    .line 314
    goto :goto_9f

    .line 310
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 317
    .end local v2  # "i":I
    :cond_9f
    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_84 .. :try_end_a0} :catchall_c6

    .line 318
    sget-object v2, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 319
    move v1, v4

    .restart local v1  # "i":I
    :goto_a4
    :try_start_a4
    sget-object v8, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_bf

    .line 320
    sget-object v8, Lcom/meizu/server/AccessControlService;->mClsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_bc

    .line 322
    const/4 v0, 0x0

    .line 323
    goto :goto_bf

    .line 319
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 326
    .end local v1  # "i":I
    :cond_bf
    :goto_bf
    monitor-exit v2

    move-object v1, v6

    move-object v2, v7

    goto :goto_cc

    :catchall_c3
    move-exception v1

    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_a4 .. :try_end_c5} :catchall_c3

    throw v1

    .line 317
    :catchall_c6
    move-exception v2

    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v2

    .line 308
    :catchall_c9
    move-exception v1

    :try_start_ca
    monitor-exit v8
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v1

    .line 328
    .end local v3  # "arr":[Ljava/lang/String;
    .end local v6  # "pkg":Ljava/lang/String;
    .end local v7  # "cls":Ljava/lang/String;
    .local v1, "pkg":Ljava/lang/String;
    .local v2, "cls":Ljava/lang/String;
    :cond_cc
    :goto_cc
    const-string v3, ""

    .line 329
    .local v3, "act":Ljava/lang/String;
    if-eqz p2, :cond_ff

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 331
    if-nez v3, :cond_da

    .line 332
    const-string v3, ""

    move-object v6, v3

    goto :goto_db

    .line 331
    :cond_da
    move-object v6, v3

    .line 334
    .end local v3  # "act":Ljava/lang/String;
    .local v6, "act":Ljava/lang/String;
    :goto_db
    sget-object v7, Lcom/meizu/server/AccessControlService;->mActList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 335
    move v3, v4

    .local v3, "i":I
    :goto_df
    :try_start_df
    sget-object v8, Lcom/meizu/server/AccessControlService;->mActList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_fa

    .line 336
    sget-object v8, Lcom/meizu/server/AccessControlService;->mActList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_f7

    .line 338
    const/4 v0, 0x0

    .line 339
    goto :goto_fa

    .line 335
    :cond_f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    .line 342
    .end local v3  # "i":I
    :cond_fa
    :goto_fa
    monitor-exit v7

    goto :goto_ff

    :catchall_fc
    move-exception v3

    monitor-exit v7
    :try_end_fe
    .catchall {:try_start_df .. :try_end_fe} :catchall_fc

    throw v3

    .line 345
    .end local v6  # "act":Ljava/lang/String;
    :cond_ff
    :goto_ff
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPopupUnlockingActivity::end: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/meizu/server/AccessControlService;->mbLock:Z

    if-eqz v6, :cond_120

    if-eqz p3, :cond_120

    move v4, v5

    :cond_120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 346
    return v0
.end method

.method public loadAppList()V
    .registers 6

    .line 244
    const-string v0, "/data/system/hips.applocker.lst"

    invoke-direct {p0, v0}, Lcom/meizu/server/AccessControlService;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_3f

    .line 247
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 248
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    new-instance v3, Lcom/meizu/server/AccessControlService$AppInfo;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/meizu/server/AccessControlService$AppInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 246
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 253
    .end local v1  # "i":I
    :cond_3f
    return-void
.end method

.method public loadCfgList()V
    .registers 3

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/AccessControlService;->mbLock:Z

    .line 237
    const-string v0, "/data/system/hips.applocker.cfg"

    invoke-direct {p0, v0}, Lcom/meizu/server/AccessControlService;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 238
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/server/AccessControlService;->mbLock:Z

    .line 240
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCfgList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/meizu/server/AccessControlService;->mbLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public resetStatus()Z
    .registers 8

    .line 488
    const/4 v0, 0x1

    .line 489
    .local v0, "bRet":Z
    sget-object v1, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_54

    sget-object v2, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    .line 491
    monitor-enter v1

    .line 492
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_c
    :try_start_c
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 493
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 494
    .local v4, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    sget-object v5, Lcom/meizu/server/AccessControlService;->mIgnList:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2a

    .line 495
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    goto :goto_2c

    .line 497
    :cond_2a
    iput-boolean v2, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    .line 499
    :goto_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 492
    .end local v4  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 501
    .end local v3  # "i":I
    :cond_4f
    monitor-exit v1

    goto :goto_54

    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_51

    throw v2

    .line 503
    :cond_54
    :goto_54
    const/4 v1, 0x0

    const-string v2, "flyme.intent.action.APP_LOCKER_MSG_STATUS_CHANGED"

    invoke-direct {p0, v2, v1}, Lcom/meizu/server/AccessControlService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return v0
.end method

.method public saveAppList()Z
    .registers 7

    .line 441
    const/4 v0, 0x1

    .line 442
    .local v0, "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    .line 444
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 445
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 446
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    :try_start_14
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 447
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 448
    .local v4, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v5, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    nop

    .end local v4  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 451
    .end local v3  # "i":I
    :cond_32
    monitor-exit v2

    goto :goto_37

    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw v3

    .line 453
    :cond_37
    :goto_37
    const/4 v2, 0x0

    const-string v3, "flyme.intent.action.APP_LOCKER_MSG_APPLST_CHANGED"

    invoke-direct {p0, v3, v2}, Lcom/meizu/server/AccessControlService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/hips.applocker.lst"

    invoke-direct {p0, v3, v2}, Lcom/meizu/server/AccessControlService;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveAppList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 456
    return v0
.end method

.method public setSwitchStatus(Z)Z
    .registers 5
    .param p1, "b"  # Z

    .line 429
    const/4 v0, 0x1

    .line 430
    .local v0, "bRet":Z
    sput-boolean p1, Lcom/meizu/server/AccessControlService;->mbLock:Z

    .line 431
    sget-boolean v1, Lcom/meizu/server/AccessControlService;->mbLock:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const-string v1, "1"

    goto :goto_d

    :cond_b
    const-string v1, "0"

    :goto_d
    const-string v2, "/data/system/hips.applocker.cfg"

    invoke-direct {p0, v2, v1}, Lcom/meizu/server/AccessControlService;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/meizu/server/AccessControlService;->mbLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 433
    sget-boolean v0, Lcom/meizu/server/AccessControlService;->mbLock:Z

    .line 434
    const/4 v1, 0x0

    const-string v2, "flyme.intent.action.APP_LOCKER_MSG_SWITCH_CHANGED"

    invoke-direct {p0, v2, v1}, Lcom/meizu/server/AccessControlService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 87
    const-string v0, "AccessControlService::SystemReady"

    invoke-direct {p0, v0}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/hips.applocker.cfg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/hips.applocker.lst"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 91
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->loadControlStatus()V

    .line 93
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 94
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->loadControlPackages()V

    .line 96
    :cond_25
    invoke-virtual {p0}, Lcom/meizu/server/AccessControlService;->loadCfgList()V

    .line 97
    invoke-virtual {p0}, Lcom/meizu/server/AccessControlService;->loadAppList()V

    .line 98
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Z
    .registers 9
    .param p1, "szPackageName"  # Ljava/lang/String;

    .line 462
    const/4 v0, 0x1

    .line 463
    .local v0, "bRet":Z
    const/4 v1, 0x0

    .line 464
    .local v1, "bSend":Z
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_55

    if-eqz p1, :cond_55

    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    .line 467
    sget-object v2, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 468
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    :try_start_12
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 469
    sget-object v4, Lcom/meizu/server/AccessControlService;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/server/AccessControlService$AppInfo;

    .line 470
    .local v4, "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    iget-object v5, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_szPkgName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4d

    .line 471
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    .line 472
    const/4 v1, 0x1

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/meizu/server/AccessControlService$AppInfo;->m_bUnlocked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/server/AccessControlService;->SSlog(Ljava/lang/String;)V

    .line 474
    goto :goto_50

    .line 468
    .end local v4  # "appinfo":Lcom/meizu/server/AccessControlService$AppInfo;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 477
    .end local v3  # "i":I
    :cond_50
    :goto_50
    monitor-exit v2

    goto :goto_55

    :catchall_52
    move-exception v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_52

    throw v3

    .line 479
    :cond_55
    :goto_55
    if-eqz v1, :cond_5d

    .line 480
    const/4 v2, 0x0

    const-string v3, "flyme.intent.action.APP_LOCKER_MSG_STATUS_CHANGED"

    invoke-direct {p0, v3, v2}, Lcom/meizu/server/AccessControlService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_5d
    return v0
.end method
