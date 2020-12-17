.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustController.java"


# static fields
.field private static mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFlymePackageManager:Landroid/content/pm/FlymePackageManager;

.field private mFlymeRAngleAdjustNetworkFetcher:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-direct {v0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustNetworkFetcher:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    .line 57
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymePackageManager:Landroid/content/pm/FlymePackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;)Landroid/content/ContentResolver;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateFromLocal(Ljava/lang/String;)V

    return-void
.end method

.method private getAppRAngleState(Ljava/lang/String;)I
    .registers 4

    .line 102
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r_angle_adjust_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;
    .registers 2

    .line 46
    sget-object v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    .line 50
    :cond_b
    sget-object p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    return-object p0
.end method

.method private initRAngleAppStateFromLocal(Ljava/lang/String;)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "r_angle_app_list_on_network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 181
    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustNetworkFetcher:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->parseJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateInternal(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1d

    :cond_19
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateInternal(Ljava/util/HashMap;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method private initRAngleAppStateFromNetwork(Ljava/lang/String;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustNetworkFetcher:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    new-instance v1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->startFetch(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V

    return-void
.end method

.method private initRAngleAppStateInternal(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getAppRAngleState(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_f

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    move v0, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v3

    :goto_10
    if-eqz v0, :cond_13

    return-void

    :cond_13
    if-eqz p1, :cond_37

    .line 137
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_37

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_37

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2f

    if-eq p1, v3, :cond_2f

    if-ne p1, v1, :cond_30

    :cond_2f
    move v2, v3

    .line 143
    :cond_30
    invoke-direct {p0, p2, v2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setForceFull(Ljava/lang/String;Z)V

    .line 144
    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleState(Ljava/lang/String;I)V

    return-void

    :cond_37
    if-eqz p1, :cond_5e

    .line 149
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_40

    goto :goto_5e

    .line 156
    :cond_40
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_56

    .line 158
    invoke-virtual {p0, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->isAppAdjustRAngle(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 159
    invoke-direct {p0, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleAdjust(Ljava/lang/String;)V

    goto :goto_6b

    .line 161
    :cond_52
    invoke-virtual {p0, p2, v3, v2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setRAngleUnadustOpened(Ljava/lang/String;ZZ)V

    goto :goto_6b

    .line 164
    :cond_56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleState(Ljava/lang/String;I)V

    goto :goto_6b

    .line 150
    :cond_5e
    :goto_5e
    invoke-virtual {p0, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->isAppAdjustRAngle(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 151
    invoke-direct {p0, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleAdjust(Ljava/lang/String;)V

    goto :goto_6b

    .line 153
    :cond_68
    invoke-virtual {p0, p2, v3, v2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setRAngleUnadustOpened(Ljava/lang/String;ZZ)V

    :goto_6b
    return-void
.end method

.method public static isRAngleFeatureSupport()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private setAppRAngleAdjust(Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleState(Ljava/lang/String;I)V

    return-void
.end method

.method private setAppRAngleState(Ljava/lang/String;I)V
    .registers 5

    .line 98
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r_angle_adjust_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setForceFull(Ljava/lang/String;Z)V
    .registers 3

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymePackageManager:Landroid/content/pm/FlymePackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/FlymePackageManager;->setForceFull(Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_a
    return-void
.end method


# virtual methods
.method public handleNetworkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_24

    .line 218
    iget-object p3, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "r_angle_app_list_on_network"

    invoke-static {p3, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p2, :cond_24

    .line 220
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 222
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateInternal(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public initLocalRAngleAppList()V
    .registers 7

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "r_angle_has_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    move v0, v3

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-nez v0, :cond_24

    .line 118
    sget-object v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppList;->APP_ARRAY_ADJUST_R_ANGLE:[Ljava/lang/String;

    array-length v4, v0

    :goto_15
    if-ge v2, v4, :cond_1f

    aget-object v5, v0, v2

    .line 119
    invoke-direct {p0, v5}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleAdjust(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 122
    :cond_1f
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_24
    return-void
.end method

.method public initRAngleAppState(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_e

    .line 170
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 171
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateFromNetwork(Ljava/lang/String;)V

    goto :goto_11

    .line 173
    :cond_e
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateFromLocal(Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public initRAngleAppStateFromNetwork(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_15

    .line 212
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mFlymeRAngleAdjustNetworkFetcher:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->startFetch(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V

    :cond_15
    return-void
.end method

.method public isAppAdjustRAngle(Ljava/lang/String;)Z
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r_angle_adjust_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    sget-object p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppList;->APP_ARRAY_ADJUST_R_ANGLE:[Ljava/lang/String;

    .line 109
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public isRAngleUnadjustOpened(Ljava/lang/String;)Z
    .registers 6

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r_angle_adjust_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_21

    .line 69
    invoke-virtual {p0, p1, v3, v1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setRAngleUnadustOpened(Ljava/lang/String;ZZ)V

    return v3

    :cond_21
    if-eq v0, v3, :cond_26

    const/4 p0, 0x2

    if-ne v0, p0, :cond_27

    :cond_26
    move v1, v3

    :cond_27
    return v1
.end method

.method public needShowTipsDialog()Z
    .registers 3

    .line 201
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const-string/jumbo v1, "r_angle_app_state_change_show_tips_dialog"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public refreshRAngleAppListFromNetwork()V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_fetch_time"

    const-wide/16 v2, 0x0

    .line 234
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    cmp-long v1, v3, v1

    if-ltz v1, :cond_27

    .line 237
    new-instance v1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;Landroid/content/SharedPreferences;)V

    invoke-virtual {p0, v1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateFromNetwork(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V

    :cond_27
    return-void
.end method

.method public setRAngleUnadustOpened(Ljava/lang/String;ZZ)V
    .registers 5

    if-eqz p2, :cond_8

    if-eqz p3, :cond_6

    const/4 v0, 0x2

    goto :goto_d

    :cond_6
    const/4 v0, 0x1

    goto :goto_d

    :cond_8
    if-eqz p3, :cond_c

    const/4 v0, 0x3

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez p3, :cond_11

    if-nez p2, :cond_14

    .line 88
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setForceFull(Ljava/lang/String;Z)V

    .line 90
    :cond_14
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setAppRAngleState(Ljava/lang/String;I)V

    return-void
.end method

.method public setShowTipsDialog(Z)V
    .registers 3

    .line 205
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "r_angle_app_state_change_show_tips_dialog"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
