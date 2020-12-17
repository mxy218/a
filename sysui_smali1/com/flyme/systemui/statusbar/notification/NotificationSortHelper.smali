.class public final Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
.super Ljava/lang/Object;
.source "NotificationSortHelper.java"


# static fields
.field private static mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;


# instance fields
.field private mAppSystemFlags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private rowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    .line 32
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->rowComparator:Ljava/util/Comparator;

    .line 29
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPackageSystemFlag(Ljava/lang/String;)I
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 48
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_40

    :cond_15
    const/4 v0, 0x0

    .line 51
    :try_start_16
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 53
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2a

    const/4 v0, 0x2

    goto :goto_31

    .line 56
    :cond_2a
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_31

    move v0, v3

    .line 60
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3f
    :goto_3f
    move p0, v0

    :goto_40
    return p0
.end method

.method public static declared-synchronized getSingle(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
    .registers 3

    const-class v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    if-nez v1, :cond_e

    .line 23
    new-instance v1, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    .line 25
    :cond_e
    sget-object p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I
    .registers 2

    .line 42
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getPackageSystemFlag(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
