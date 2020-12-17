.class public final Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
.super Ljava/lang/Object;
.source "FlymeNotificationManagement.java"


# static fields
.field private static CLOUD_PACKAGE_NAME:Ljava/lang/String;

.field private static CONTENT_UPLOAD_WHITE_LIST_URL:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;

.field private static WHITE_LIST_URL_NAME:Ljava/lang/String;

.field private static mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

.field private static final mNotificationKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNotificationReceiveFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryBackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mUploadWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    const-string v0, "FlymeNotificationManagement"

    .line 55
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string v0, "com.meizu.cloud"

    .line 57
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "flyme.Notification.CONTENT_UPLOAD_WHITE_LIST"

    .line 58
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->WHITE_LIST_URL_NAME:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->WHITE_LIST_URL_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CONTENT_UPLOAD_WHITE_LIST_URL:Landroid/net/Uri;

    .line 118
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    .line 67
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CONTENT_UPLOAD_WHITE_LIST_URL:Landroid/net/Uri;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string/jumbo v0, "update"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "permission"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string/jumbo v0, "storage"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string/jumbo v0, "traffic"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "appupgrade"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string/jumbo v0, "weather"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "mail"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string v0, "privateletter"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mCategoryBackList:Ljava/util/ArrayList;

    const-string/jumbo v0, "unknow"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->loadWhiteList()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->loadWhiteList()V

    return-void
.end method

.method public static callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;II)V
    .registers 13

    if-eqz p2, :cond_22

    .line 175
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz p1, :cond_22

    if-eqz v0, :cond_22

    .line 177
    iget-object v2, v0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_22

    .line 179
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    .line 181
    new-instance p2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;-><init>(Landroid/app/PendingIntent;IIILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public static declared-synchronized getManagement(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
    .registers 3

    const-class v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    if-nez v1, :cond_e

    .line 112
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    .line 114
    :cond_e
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getNotificationUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 47
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 49
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_18
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private loadWhiteList()V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->WHITE_LIST_URL_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    const-string v2, ","

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 97
    array-length v2, v0

    if-lez v2, :cond_4b

    .line 98
    array-length v2, v0

    :goto_26
    if-ge v1, v2, :cond_4b

    aget-object v3, v0, v1

    .line 99
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 103
    :cond_32
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$array;->upload_white_list:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v2, v0

    :goto_3f
    if-ge v1, v2, :cond_4b

    aget-object v3, v0, v1

    .line 105
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_4b
    return-void
.end method


# virtual methods
.method public isUploadWhiteApp(Ljava/lang/String;)Z
    .registers 2

    .line 207
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
