.class public final Lcom/flyme/systemui/quickreply/QuickReplyController;
.super Ljava/lang/Object;
.source "QuickReplyController.java"


# static fields
.field private static final mReplyWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWindowSpaceModeWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/flyme/systemui/quickreply/QuickReplyController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

.field private mSpaceModeEnable:Z

.field private mSpaceModeObserver:Landroid/database/ContentObserver;

.field private mSpaceModeUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "com.tencent.mobileqq"

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.tim"

    const-string v3, "com.alibaba.android.rimet"

    const-string v4, "com.tencent.wework"

    .line 20
    filled-new-array {v1, v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/flyme/systemui/quickreply/QuickReplyController;->mReplyWhiteList:Ljava/util/List;

    .line 24
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mWindowSpaceModeWhiteList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeEnable:Z

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mHandler:Landroid/os/Handler;

    const-string v0, "content://com.meizu.battery.provider/setting/#1"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeUri:Landroid/net/Uri;

    .line 33
    new-instance v0, Lcom/flyme/systemui/quickreply/QuickReplyController$1;

    iget-object v1, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/quickreply/QuickReplyController$1;-><init>(Lcom/flyme/systemui/quickreply/QuickReplyController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeObserver:Landroid/database/ContentObserver;

    .line 42
    iput-object p1, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    .line 44
    invoke-direct {p0}, Lcom/flyme/systemui/quickreply/QuickReplyController;->getSpaceModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeEnable:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/flyme/systemui/quickreply/QuickReplyController;->registerSpaceModeObserver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/quickreply/QuickReplyController;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/quickreply/QuickReplyController;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/quickreply/QuickReplyController;)Z
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/flyme/systemui/quickreply/QuickReplyController;->getSpaceModeEnable()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/quickreply/QuickReplyController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/quickreply/QuickReplyController;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/quickreply/QuickReplyController;->sInstance:Lcom/flyme/systemui/quickreply/QuickReplyController;

    if-nez v1, :cond_e

    .line 50
    new-instance v1, Lcom/flyme/systemui/quickreply/QuickReplyController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/quickreply/QuickReplyController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/quickreply/QuickReplyController;->sInstance:Lcom/flyme/systemui/quickreply/QuickReplyController;

    .line 52
    :cond_e
    sget-object p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->sInstance:Lcom/flyme/systemui/quickreply/QuickReplyController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSpaceModeEnable()Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    :try_start_2
    iget-object v2, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "key=?"

    const-string/jumbo p0, "window_mode_parallel_space_function"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_41
    .catchall {:try_start_2 .. :try_end_19} :catchall_3f

    move p0, v0

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_39

    .line 72
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 74
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 75
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_32} :catch_34
    .catchall {:try_start_1c .. :try_end_32} :catchall_3f

    xor-int/2addr p0, v0

    goto :goto_1a

    :catch_34
    move-exception v0

    move-object v9, v0

    move v0, p0

    move-object p0, v9

    goto :goto_42

    :cond_39
    if-eqz v1, :cond_4b

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_3f
    move-exception p0

    goto :goto_4c

    :catch_41
    move-exception p0

    .line 79
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    if-eqz v1, :cond_4a

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    move p0, v0

    :cond_4b
    :goto_4b
    return p0

    :goto_4c
    if-eqz v1, :cond_51

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_51
    throw p0
.end method

.method private registerSpaceModeObserver(Landroid/content/Context;)V
    .registers 4

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method


# virtual methods
.method public isPopQuickOpen(Ljava/lang/String;)Z
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isPopQuickOpen(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isQuickReplyPackage(Ljava/lang/String;)Z
    .registers 2

    .line 60
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mReplyWhiteList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isWindowSpaceModePackage(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_16

    .line 98
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mWindowSpaceModeWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-boolean p0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mSpaceModeEnable:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isforceQuickReply()Z
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController;->mHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-virtual {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isForceQuickReply()Z

    move-result p0

    return p0
.end method
