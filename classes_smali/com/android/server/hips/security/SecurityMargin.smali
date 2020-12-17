.class public Lcom/android/server/hips/security/SecurityMargin;
.super Ljava/lang/Object;
.source "SecurityMargin.java"


# static fields
.field private static final CURRENT_ITEMS_NAME:Ljava/lang/String; = "current_security_margin_items"

.field private static final FLAG_ALWAYS_SHOW_TICKER:I = 0x1000000

.field private static final ITEMS_STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field private static final ITEM_LENGTH:I = 0x2

.field private static final KEY_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field private static final KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final KEY_RESOURCES_ID:Ljava/lang/String; = "resId"

.field private static final KEY_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_TIPS:Ljava/lang/String; = "tips"

.field private static final MSG_SMS_PROTECTED:I = 0x0

.field private static final MSG_STATUSBAR_CORLOR_CHANGED:I = 0x1

.field private static final SECURITY_MARGIN_SWITCH:Ljava/lang/String; = "security_margin_switch"

.field private static final SECURITY_MARGIN_SWITCH_OFF:I = -0x1

.field private static final SECURITY_MARGIN_SWITCH_ON:I = 0x1

.field private static final SECURITY_MARGIN_VERSION:I = 0x1

.field private static final SYSTEM_DEFAULT_SMS_PKG:Ljava/lang/String; = "com.android.mms"

.field public static final TAG:Ljava/lang/String; = "SecurityMargin"

.field public static final TYPE_ACTIVITY:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SMS:I = 0x1

.field private static final WHOLE_ITEMS_NAME:Ljava/lang/String; = "security_margin_items"

.field private static mIgnoreClass:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIgnorePkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsSecurityMarginSwitchOn:Z

.field private static volatile mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

.field private static mSecurityMarginItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mShowStatusBarColorPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentMethodId:Ljava/lang/String;

.field private mCurrentSecurityNotificationId:I

.field private mCurrentSecurityPkg:Ljava/lang/String;

.field private mCurrentShowStatusBarPkg:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsInSecurityMargin:Z

.field private mIsSMSProtected:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOriginalAdbEnableValue:I

.field private mOriginalMethodId:Ljava/lang/String;

.field private mOriginalSMSPkg:Ljava/lang/String;

.field private mSMSProtectedTime:I

.field private mSecurityMarginTimeStamp:J

.field private mStatusBarCorlorShowTime:I

.field private mThePkgCalledBySecurityPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    .line 83
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    .line 84
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 85
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    .line 91
    nop

    .line 92
    const-string v1, "/data/system/security_margin_items"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    .local v1, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3b

    .line 94
    invoke-static {v1, v0}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginItem(Ljava/util/ArrayList;Z)I

    .line 97
    :cond_3b
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    .line 104
    const-string v2, "com.android.server.hips.security.SecurityPayDispalyActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.flyme.systemui.recents.RecentsEmptyActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.tencent.av.ui.VideoInviteFull"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.tencent.av.ui.VideoInviteLock"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.tencent.av.ui.AVActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string v2, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->loadSecurityMarginSwitchState()V

    .line 115
    .end local v1  # "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    .line 65
    iput v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    .line 66
    iput v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalAdbEnableValue:I

    .line 68
    iput v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalMethodId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    .line 117
    new-instance v0, Lcom/android/server/hips/security/SecurityMargin$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hips/security/SecurityMargin$1;-><init>(Lcom/android/server/hips/security/SecurityMargin;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hips/security/SecurityMargin;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/server/hips/security/SecurityMargin;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/hips/security/SecurityMargin;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/hips/security/SecurityMargin;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;
    .param p1, "x1"  # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/hips/security/SecurityMargin;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/server/hips/security/SecurityMargin;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;

    .line 39
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/hips/security/SecurityMargin;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/hips/security/SecurityMargin;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/hips/security/SecurityMargin;->changeStatusBarCorlor(Ljava/lang/String;Z)V

    return-void
.end method

.method private changeStatusBarCorlor(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "isShowCorlor"  # Z

    .line 482
    nop

    .line 483
    const-string v0, "flyme_statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 484
    .local v0, "flymeStatusBar":Ljava/lang/Object;
    if-nez v0, :cond_11

    .line 485
    const-string v1, "SecurityMargin"

    const-string v2, "changeStatusBarCorlor, flymeStatusBar is null, return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void

    .line 489
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 490
    .local v1, "flymeStatusBarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-nez v1, :cond_1f

    .line 491
    const-string v2, "SecurityMargin"

    const-string v3, "changeStatusBarCorlor, flymeStatusBarClass is null, return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 496
    :cond_1f
    if-eqz p1, :cond_d5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_d5

    .line 502
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeStatusBarCorlor, pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isShowCorlor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityMargin"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 509
    .local v2, "context":Landroid/content/Context;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_b3

    .line 510
    :try_start_4f
    const-string/jumbo v5, "showAlwaysTextAndIcon"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 512
    .local v5, "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_c8

    .line 513
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string/jumbo v7, "tips"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0xa100148

    .line 519
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 515
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string/jumbo v7, "textColor"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    const-string v7, "bgColor"

    const v8, -0xc43f95

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string/jumbo v7, "resId"

    const v8, 0xa080323

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_a9} :catch_c9

    .line 527
    :try_start_a9
    sget-object v4, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    monitor-exit v3

    .line 529
    .end local v6  # "bundle":Landroid/os/Bundle;
    goto :goto_c8

    .line 528
    .restart local v6  # "bundle":Landroid/os/Bundle;
    :catchall_b0
    move-exception v4

    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_b0

    .end local v0  # "flymeStatusBar":Ljava/lang/Object;
    .end local v1  # "flymeStatusBarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v2  # "context":Landroid/content/Context;
    .end local p0  # "this":Lcom/android/server/hips/security/SecurityMargin;
    .end local p1  # "pkgName":Ljava/lang/String;
    .end local p2  # "isShowCorlor":Z
    :try_start_b2
    throw v4

    .line 531
    .end local v5  # "method":Ljava/lang/reflect/Method;
    .end local v6  # "bundle":Landroid/os/Bundle;
    .restart local v0  # "flymeStatusBar":Ljava/lang/Object;
    .restart local v1  # "flymeStatusBarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v2  # "context":Landroid/content/Context;
    .restart local p0  # "this":Lcom/android/server/hips/security/SecurityMargin;
    .restart local p1  # "pkgName":Ljava/lang/String;
    .restart local p2  # "isShowCorlor":Z
    :cond_b3
    const-string v5, "hideAlwaysTextAndIcon"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 533
    .restart local v5  # "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_c8

    .line 534
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c8} :catch_c9

    .line 541
    .end local v5  # "method":Ljava/lang/reflect/Method;
    :cond_c8
    :goto_c8
    goto :goto_d4

    .line 537
    :catch_c9
    move-exception v3

    .line 538
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SecurityMargin"

    const-string v5, "changeStatusBarCorlor, unable to change the corlor of status bar!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_d4
    return-void

    .line 497
    .end local v2  # "context":Landroid/content/Context;
    :cond_d5
    :goto_d5
    const-string v2, "SecurityMargin"

    const-string v3, "changeStatusBarCorlor, pkgName is null or empty, return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/security/SecurityMargin;
    .registers 2

    .line 156
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    if-nez v0, :cond_17

    .line 157
    const-class v0, Lcom/android/server/hips/security/SecurityMargin;

    monitor-enter v0

    .line 158
    :try_start_7
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    if-nez v1, :cond_12

    .line 159
    new-instance v1, Lcom/android/server/hips/security/SecurityMargin;

    invoke-direct {v1}, Lcom/android/server/hips/security/SecurityMargin;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    .line 161
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 164
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    return-object v0
.end method

.method private getSecurityMarginItemByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pkg"  # Ljava/lang/String;

    .line 755
    const-string v0, "getSecurityMarginItemByKey, E2:"

    const-string v1, "SecurityMargin"

    const/4 v2, 0x0

    .line 757
    .local v2, "retVal":Ljava/lang/String;
    :try_start_5
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 759
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_3b
    .catchall {:try_start_5 .. :try_end_16} :catchall_39

    move-object v2, v3

    .line 764
    :try_start_17
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    .line 767
    :goto_20
    goto :goto_65

    .line 765
    :catch_21
    move-exception v3

    .line 766
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_65

    .line 763
    :catchall_39
    move-exception v3

    goto :goto_66

    .line 760
    :catch_3b
    move-exception v3

    .line 761
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecurityMarginItemByKey, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_39

    .line 764
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_54
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_20

    .line 765
    :catch_5e
    move-exception v3

    .line 766
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_27

    .line 769
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_65
    return-object v2

    .line 764
    :goto_66
    :try_start_66
    sget-object v4, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    .line 767
    goto :goto_87

    .line 765
    :catch_70
    move-exception v4

    .line 766
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_87
    throw v3
.end method

.method private isPkgInRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "allItems"  # Ljava/lang/String;

    .line 695
    if-eqz p2, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private isSecurityMarginItemsContainKey(Ljava/lang/String;)Z
    .registers 8
    .param p1, "callerPkg"  # Ljava/lang/String;

    .line 737
    const-string/jumbo v0, "isSecurityMarginItemsContainKey, E2:"

    const-string v1, "SecurityMargin"

    const/4 v2, 0x0

    .line 739
    .local v2, "isContain":Z
    :try_start_6
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 741
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_3a
    .catchall {:try_start_6 .. :try_end_15} :catchall_38

    move v2, v3

    .line 746
    :try_start_16
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 749
    :goto_1f
    goto :goto_65

    .line 747
    :catch_20
    move-exception v3

    .line 748
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_65

    .line 745
    :catchall_38
    move-exception v3

    goto :goto_66

    .line 742
    :catch_3a
    move-exception v3

    .line 743
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSecurityMarginItemsContainKey, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_38

    .line 746
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_54
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_1f

    .line 747
    :catch_5e
    move-exception v3

    .line 748
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_26

    .line 751
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_65
    return v2

    .line 746
    :goto_66
    :try_start_66
    sget-object v4, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    .line 749
    goto :goto_87

    .line 747
    :catch_70
    move-exception v4

    .line 748
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_87
    throw v3
.end method

.method private isShuoldEnterSecurityMargin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "focusedPkg"  # Ljava/lang/String;

    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/hips/security/SecurityMargin;->isSecurityMarginItemsContainKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 712
    return v1

    .line 715
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/hips/security/SecurityMargin;->getSecurityMarginItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "securityClasses":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 717
    return v1

    .line 720
    :cond_f
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    .line 721
    return v3

    .line 724
    :cond_19
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->getTopActivityName()Landroid/content/ComponentName;

    move-result-object v2

    .line 725
    .local v2, "name":Landroid/content/ComponentName;
    const-string v4, ""

    .line 726
    .local v4, "topClass":Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 727
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 729
    :cond_25
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 730
    return v3

    .line 733
    :cond_2c
    return v1
.end method

.method private static loadSecurityMarginSwitchState()V
    .registers 6

    .line 168
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 170
    return-void

    .line 173
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 174
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_e

    .line 175
    return-void

    .line 178
    :cond_e
    const/4 v2, 0x1

    .line 180
    .local v2, "state":I
    :try_start_f
    const-string/jumbo v3, "security_margin_switch"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move v2, v3

    .line 184
    goto :goto_21

    .line 181
    :catch_18
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SecurityMargin"

    const-string/jumbo v5, "loadSecurityMarginSwitchState, unable to load switch state from settings!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_21
    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    .line 187
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    .line 189
    :cond_27
    return-void
.end method

.method public static setSecurityMarginItem(Ljava/util/ArrayList;Z)I
    .registers 17
    .param p1, "fromStorage"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 558
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "setSecurityMarginList.update, E2:"

    const-string v2, "SecurityMargin"

    if-nez p0, :cond_f

    .line 559
    const-string/jumbo v0, "setSecurityMarginList, the list is null, return -1."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, -0x1

    return v0

    .line 563
    :cond_f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1d

    .line 564
    const-string/jumbo v0, "setSecurityMarginList, the list is empty, return 0."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v3

    .line 568
    :cond_1d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 570
    .local v4, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 571
    .local v5, "usefulItemsSb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 573
    .local v6, "currentItemsSb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 574
    .local v0, "usefulItemsCount":I
    const/4 v7, 0x0

    .line 575
    .local v7, "currentItemsCount":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    move v7, v0

    .end local v0  # "usefulItemsCount":I
    .local v7, "usefulItemsCount":I
    .local v9, "currentItemsCount":I
    :goto_37
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    .local v0, "item":Ljava/lang/String;
    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4d

    goto/16 :goto_c0

    .line 582
    :cond_4d
    const-string v10, "\\|\\|\\|"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, "itemArray":[Ljava/lang/String;
    if-nez v10, :cond_5c

    .line 585
    const-string/jumbo v11, "setSecurityMarginList, the itemArray is null, stop to add."

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    goto :goto_37

    .line 590
    :cond_5c
    array-length v11, v10

    const/4 v12, 0x2

    if-eq v11, v12, :cond_7c

    .line 591
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSecurityMarginList, the length("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") of item is wrong, stop to add."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    goto :goto_37

    .line 596
    :cond_7c
    aget-object v11, v10, v3

    .line 597
    .local v11, "pkgName":Ljava/lang/String;
    if-eqz v11, :cond_b8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_87

    goto :goto_b8

    .line 603
    :cond_87
    const/4 v12, 0x1

    aget-object v12, v10, v12

    .line 604
    .local v12, "activityClasses":Ljava/lang/String;
    if-eqz v12, :cond_b1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_93

    goto :goto_b1

    .line 610
    :cond_93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "###"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    add-int/lit8 v7, v7, 0x1

    .line 613
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a4

    .line 614
    goto :goto_37

    .line 617
    :cond_a4
    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    nop

    .end local v0  # "item":Ljava/lang/String;
    .end local v10  # "itemArray":[Ljava/lang/String;
    .end local v11  # "pkgName":Ljava/lang/String;
    .end local v12  # "activityClasses":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 620
    goto :goto_37

    .line 605
    .restart local v0  # "item":Ljava/lang/String;
    .restart local v10  # "itemArray":[Ljava/lang/String;
    .restart local v11  # "pkgName":Ljava/lang/String;
    .restart local v12  # "activityClasses":Ljava/lang/String;
    :cond_b1
    :goto_b1
    const-string/jumbo v13, "setSecurityMarginList, the activityClasses is null or empty, stop to add."

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    goto :goto_37

    .line 598
    .end local v12  # "activityClasses":Ljava/lang/String;
    :cond_b8
    :goto_b8
    const-string/jumbo v12, "setSecurityMarginList, the pkgName is null or empty, stop to add."

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    goto/16 :goto_37

    .line 577
    .end local v10  # "itemArray":[Ljava/lang/String;
    .end local v11  # "pkgName":Ljava/lang/String;
    :cond_c0
    :goto_c0
    const-string/jumbo v10, "setSecurityMarginList, the item is null or empty, stop to add."

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    goto/16 :goto_37

    .line 623
    .end local v0  # "item":Ljava/lang/String;
    :cond_c8
    :try_start_c8
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 625
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 626
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_db} :catch_100
    .catchall {:try_start_c8 .. :try_end_db} :catchall_fd

    .line 631
    :try_start_db
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e4} :catch_e5

    .line 634
    :goto_e4
    goto :goto_12b

    .line 632
    :catch_e5
    move-exception v0

    .line 633
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_eb
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_12b

    .line 630
    :catchall_fd
    move-exception v0

    move-object v3, v0

    goto :goto_16d

    .line 627
    :catch_100
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    :try_start_101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSecurityMarginList.update, E:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_101 .. :try_end_11a} :catchall_fd

    .line 631
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_11a
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_123} :catch_124

    goto :goto_e4

    .line 632
    :catch_124
    move-exception v0

    .line 633
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_eb

    .line 637
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_12b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecurityMarginList, set list successfully, currentItemsCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " usefulItemsCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "usefulItems":Ljava/lang/String;
    if-nez p1, :cond_15b

    if-eqz v0, :cond_15b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15b

    .line 644
    const-string v1, "/data/system/security_margin_items"

    invoke-static {v0, v1}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_15b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "currentItems":Ljava/lang/String;
    if-eqz v1, :cond_16c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16c

    .line 650
    const-string v2, "/data/system/current_security_margin_items"

    invoke-static {v1, v2}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_16c
    return v7

    .line 631
    .end local v0  # "usefulItems":Ljava/lang/String;
    .end local v1  # "currentItems":Ljava/lang/String;
    :goto_16d
    :try_start_16d
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_176} :catch_177

    .line 634
    goto :goto_18e

    .line 632
    :catch_177
    move-exception v0

    .line 633
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_18e
    throw v3
.end method

.method private showSecurityNotification()V
    .registers 12

    .line 410
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 412
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_14

    .line 413
    nop

    .line 414
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    .line 417
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-string v2, "flyme.hips.action.SECURITY_PAY_DISPLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 421
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const v4, 0xa080322

    .line 422
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 424
    .local v4, "largeIconDrawable":Landroid/graphics/drawable/Drawable;
    const-string v5, "SecurityMargin"

    if-nez v4, :cond_32

    .line 425
    const-string/jumbo v2, "showSecurityNotification, largeIconDrawable is null, return."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 430
    :cond_32
    instance-of v6, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_3d

    .line 431
    const-string/jumbo v2, "showSecurityNotification, largeIconDrawable can not be cast to BitmapDrawable, return."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 436
    :cond_3d
    move-object v6, v4

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 437
    .local v6, "largeIconBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 439
    .local v7, "largeIconBitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4d

    .line 440
    const-string/jumbo v2, "showSecurityNotification, largeIconBitmap is null, return."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 445
    :cond_4d
    new-instance v8, Landroid/app/NotificationChannel;

    const/4 v9, 0x3

    invoke-direct {v8, v5, v5, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 447
    .local v8, "channel":Landroid/app/NotificationChannel;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 448
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 450
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v9

    .line 451
    .local v5, "builder":Landroid/app/Notification$Builder;
    const v9, 0xa080323

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 452
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0xa100148

    .line 454
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 453
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 457
    const-string/jumbo v10, "persist.radio.safe_pay.show"

    invoke-static {v10, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_85

    .line 458
    const v2, 0xa10014b

    goto :goto_88

    .line 459
    :cond_85
    const v2, 0xa100147

    .line 456
    :goto_88
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 460
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v9, 0x2

    .line 462
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 464
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 465
    .local v2, "notification":Landroid/app/Notification;
    const v9, 0x1000022

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    iput v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    .line 470
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    iget v10, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    invoke-virtual {v9, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 473
    return-void
.end method


# virtual methods
.method public changeSMSToDefault()V
    .registers 3

    .line 192
    const-string v0, "SecurityMargin"

    const-string v1, "changeSMSToDefault, change the SMS to default."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->changeDefaultSMS(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public getSecurityMarginItems()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 773
    const-string v0, "getSecurityMarginItems, E2:"

    const-string v1, "SecurityMargin"

    const/4 v2, 0x0

    .line 775
    .local v2, "mItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 776
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_35
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    move-object v2, v3

    .line 781
    :try_start_11
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 784
    :goto_1a
    goto :goto_5f

    .line 782
    :catch_1b
    move-exception v3

    .line 783
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_5f

    .line 780
    :catchall_33
    move-exception v3

    goto :goto_60

    .line 777
    :catch_35
    move-exception v3

    .line 778
    .local v3, "e":Ljava/lang/Exception;
    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecurityMarginItems, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_33

    .line 781
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_4e
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_57} :catch_58

    goto :goto_1a

    .line 782
    :catch_58
    move-exception v3

    .line 783
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_21

    .line 786
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_5f
    return-object v2

    .line 781
    :goto_60
    :try_start_60
    sget-object v4, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_6a

    .line 784
    goto :goto_81

    .line 782
    :catch_6a
    move-exception v4

    .line 783
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_81
    throw v3
.end method

.method public getSecurityMarginSwitchState()Z
    .registers 2

    .line 213
    sget-boolean v0, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    return v0
.end method

.method public getSecurityMarginTimeStamp()J
    .registers 3

    .line 553
    iget-wide v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginTimeStamp:J

    return-wide v0
.end method

.method public getSecurityMarginVersion()I
    .registers 2

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "calleeClass"  # Ljava/lang/String;
    .param p4, "type"  # I

    .line 218
    sget-boolean v0, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 219
    return v1

    .line 225
    :cond_6
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 226
    return v1

    .line 229
    :cond_a
    if-nez p4, :cond_f

    .line 230
    iget-boolean v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    return v0

    .line 233
    :cond_f
    const/4 v2, 0x1

    const-string v3, "SecurityMargin"

    if-ne p4, v2, :cond_4a

    .line 234
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_49

    .line 238
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/hips/security/SecurityMargin;->isSecurityMarginItemsContainKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 239
    const-string/jumbo v0, "isInSecurityMargin, mSecurityMarginItems contains callerPkg, return false, type: sms."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1

    .line 244
    :cond_2a
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    .line 245
    .local v0, "isSystemApp":Z
    nop

    .line 246
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v4

    .line 248
    .local v4, "isHasSystemSignature":Z
    if-nez v0, :cond_42

    if-eqz v4, :cond_38

    goto :goto_42

    .line 254
    :cond_38
    iget-boolean v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-nez v3, :cond_40

    iget-boolean v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    if-eqz v3, :cond_41

    :cond_40
    move v1, v2

    :cond_41
    return v1

    .line 249
    :cond_42
    :goto_42
    const-string/jumbo v2, "isInSecurityMargin, the callerPkg is system app or has system signature, return false, type: sms."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 235
    .end local v0  # "isSystemApp":Z
    .end local v4  # "isHasSystemSignature":Z
    :cond_49
    :goto_49
    return v1

    .line 257
    :cond_4a
    if-ne p4, v0, :cond_a3

    .line 258
    if-eqz p2, :cond_a2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_55

    goto :goto_a2

    .line 261
    :cond_55
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_a1

    .line 265
    :cond_5e
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 266
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 267
    const-string/jumbo v0, "isInSecurityMargin, the callerPkg == mCurrentSecurityPkg, return false, type: activity."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v1

    .line 272
    :cond_6f
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_9a

    .line 279
    :cond_80
    if-eqz p3, :cond_97

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_97

    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 281
    const-string/jumbo v0, "isInSecurityMargin, the calleeClass is contained in mIgnoreClass, return false, type: activity."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 287
    :cond_97
    iget-boolean v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    return v0

    .line 274
    :cond_9a
    :goto_9a
    const-string/jumbo v0, "isInSecurityMargin, the calleePkg or callerPkg == mThePkgCalledBySecurityPkg, return false, type: activity."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v1

    .line 262
    :cond_a1
    :goto_a1
    return v1

    .line 259
    :cond_a2
    :goto_a2
    return v1

    .line 290
    :cond_a3
    return v1
.end method

.method isPkgInSecurityMargin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 699
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_13

    .line 703
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/hips/security/SecurityMargin;->isSecurityMarginItemsContainKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 704
    const/4 v0, 0x1

    return v0

    .line 707
    :cond_12
    return v0

    .line 700
    :cond_13
    :goto_13
    return v0
.end method

.method public setSecurityMarginSwitchState(Z)V
    .registers 6
    .param p1, "isOn"  # Z

    .line 197
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 198
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 199
    return-void

    .line 202
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_e

    .line 204
    return-void

    .line 207
    :cond_e
    sput-boolean p1, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    .line 208
    nop

    .line 209
    if-eqz p1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, -0x1

    .line 208
    :goto_16
    const-string/jumbo v3, "security_margin_switch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    return-void
.end method

.method public setSecurityMarginTimeStamp(J)V
    .registers 3
    .param p1, "timeStamp"  # J

    .line 549
    iput-wide p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginTimeStamp:J

    .line 550
    return-void
.end method

.method public updateSecurityMarginItem(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "isReadAllItems"  # Z

    .line 658
    const-string v0, "SecurityMargin"

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_70

    .line 664
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v1, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_15

    .line 668
    :try_start_12
    const-string v2, "/data/system/security_margin_items"

    .local v2, "itemsFilePath":Ljava/lang/String;
    goto :goto_17

    .line 670
    .end local v2  # "itemsFilePath":Ljava/lang/String;
    :cond_15
    const-string v2, "/data/system/current_security_margin_items"

    .line 673
    .restart local v2  # "itemsFilePath":Ljava/lang/String;
    :goto_17
    invoke-static {v2}, Lcom/android/server/hips/utils/HipsUtils;->loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "allItems":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/hips/security/SecurityMargin;->isPkgInRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSecurityMarginItems, the all items contain the pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin to update..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v3}, Lcom/android/server/hips/utils/HipsUtils;->splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .end local v1  # "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_5b

    .line 679
    .end local v0  # "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1  # "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSecurityMarginItems, the all items do not contain the pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", stop to update!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5b} :catch_5c

    .line 686
    .end local v2  # "itemsFilePath":Ljava/lang/String;
    .end local v3  # "allItems":Ljava/lang/String;
    :goto_5b
    goto :goto_63

    .line 683
    :catch_5c
    move-exception v2

    .line 684
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "updateSecurityMarginItems, can not update the security margin items!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_63
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6f

    .line 690
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginItem(Ljava/util/ArrayList;Z)I

    .line 692
    :cond_6f
    return-void

    .line 659
    .end local v1  # "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_70
    :goto_70
    const-string/jumbo v1, "updateSecurityMarginItems, the pkgName is null or empty, return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void
.end method

.method public updateSecurityMarginState(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "methodId"  # Ljava/lang/String;
    .param p2, "focusedPkg"  # Ljava/lang/String;
    .param p3, "inputType"  # I

    .line 295
    sget-boolean v0, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    if-nez v0, :cond_d

    .line 296
    const-string v0, "SecurityMargin"

    const-string/jumbo v1, "updateSecurityMarginState, the switch of security margin is off, return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_d
    if-eqz p2, :cond_158

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_158

    .line 305
    :cond_17
    if-nez p1, :cond_1a

    .line 306
    return-void

    .line 309
    :cond_1a
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 310
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->getTopActivityName()Landroid/content/ComponentName;

    move-result-object v0

    .line 311
    .local v0, "name":Landroid/content/ComponentName;
    const-string v1, ""

    .line 312
    .local v1, "topClass":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 313
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 315
    :cond_2e
    sget-object v2, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSecurityMarginState, the topClass("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is ignored, return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityMargin"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 322
    .end local v0  # "name":Landroid/content/ComponentName;
    .end local v1  # "topClass":Ljava/lang/String;
    :cond_53
    invoke-direct {p0, p2}, Lcom/android/server/hips/security/SecurityMargin;->isShuoldEnterSecurityMargin(Ljava/lang/String;)Z

    move-result v0

    .line 325
    .local v0, "isShuoldEnterSecurityMargin":Z
    iget-boolean v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-ne v1, v0, :cond_62

    .line 326
    if-eqz v1, :cond_61

    .line 327
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 328
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    .line 330
    :cond_61
    return-void

    .line 334
    :cond_62
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_71

    .line 335
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    .line 336
    iget-object v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    iput-boolean v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    .line 340
    :cond_71
    iput-boolean v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    .line 341
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 343
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 344
    .local v1, "context":Landroid/content/Context;
    iget-boolean v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-eqz v4, :cond_e7

    .line 345
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalMethodId:Ljava/lang/String;

    .line 347
    const-string v4, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    iput-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 350
    nop

    .line 351
    :try_start_88
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    .line 350
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalAdbEnableValue:I

    .line 353
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9d} :catch_9e

    .line 356
    goto :goto_9f

    .line 355
    :catch_9e
    move-exception v4

    .line 358
    :goto_9f
    invoke-direct {p0}, Lcom/android/server/hips/security/SecurityMargin;->showSecurityNotification()V

    .line 360
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    .line 361
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    .line 362
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 364
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/hips/security/SecurityMargin;->changeStatusBarCorlor(Ljava/lang/String;Z)V

    .line 366
    iget-object v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "defaultSMSPkg":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    if-nez v3, :cond_d6

    if-eqz v2, :cond_d6

    .line 369
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d6

    .line 370
    iput-object v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    .line 371
    const-string v3, "com.android.mms"

    invoke-static {v3}, Lcom/android/server/hips/utils/HipsUtils;->changeDefaultSMS(Ljava/lang/String;)V

    .line 374
    :cond_d6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "app_name"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v4, "start_paysafe"

    invoke-static {v4, v3}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    .end local v2  # "defaultSMSPkg":Ljava/lang/String;
    .end local v3  # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_129

    .line 378
    :cond_e7
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 379
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalMethodId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 381
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalAdbEnableValue:I

    const-string v6, "adb_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 386
    iget v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    if-lez v4, :cond_10a

    .line 387
    iget-object v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    :cond_10a
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_110
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_120

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    .local v4, "pkg":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/android/server/hips/security/SecurityMargin;->changeStatusBarCorlor(Ljava/lang/String;Z)V

    .line 394
    .end local v4  # "pkg":Ljava/lang/String;
    goto :goto_110

    .line 395
    :cond_120
    sget-object v2, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 396
    :try_start_123
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 397
    monitor-exit v2
    :try_end_129
    .catchall {:try_start_123 .. :try_end_129} :catchall_155

    .line 402
    :goto_129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSecurityMarginState, focusedPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isInSecurityMargin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentMethodId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityMargin"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 397
    :catchall_155
    move-exception v3

    :try_start_156
    monitor-exit v2
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v3

    .line 302
    .end local v0  # "isShuoldEnterSecurityMargin":Z
    .end local v1  # "context":Landroid/content/Context;
    :cond_158
    :goto_158
    return-void
.end method
