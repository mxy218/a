.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeServiceInfoFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mCorInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field mFixRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

.field private mFragmentStopped:Z

.field private mHandler:Landroid/os/Handler;

.field private mRefreshItem:Landroid/view/MenuItem;

.field private mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

.field private mSN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    sput-boolean v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mCorInfos:Ljava/util/ArrayList;

    .line 80
    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Z
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->setSN()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mSN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->setServiceInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->getCorporationInfos()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->getFixRecords()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;II)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFragmentStopped:Z

    return p0
.end method

.method private bindServiceInfos()Z
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 470
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mCorInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->setServiceInfoView(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private getCorporationInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 414
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getLocalCorporationInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getFixRecords()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;"
        }
    .end annotation

    .line 423
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 424
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getLocalFixRecords(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private handleRefreshMenuAnimation(Z)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_13

    .line 165
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RefreshRotateDrawable;->startRotate()V

    goto :goto_1c

    .line 168
    :cond_13
    invoke-virtual {v0}, Lcom/meizu/settings/widget/RefreshRotateDrawable;->endRotate()V

    .line 169
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1c
    return-void
.end method

.method private initServiceInfos()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 134
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->initServiceInfosFromNet()V

    goto :goto_f

    .line 136
    :cond_c
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->initServiceInfosFromLocal()V

    :goto_f
    return-void
.end method

.method private initServiceInfosFromLocal()V
    .registers 4

    const-string v0, "FlymeServiceInfoFragment"

    const-string v1, "initServiceInfosFromNet"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array v1, p0, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initServiceInfosFromLocalWithCause(I)V
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initServiceInfosFromNet, cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeServiceInfoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initServiceInfosFromNet()V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 153
    invoke-direct {p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->handleRefreshMenuAnimation(Z)V

    .line 155
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 156
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 158
    :cond_10
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;Landroid/content/Context;)V

    new-array p0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private safeOnBack(Z)V
    .registers 5

    if-nez p1, :cond_6

    .line 500
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 503
    :cond_6
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$2;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCorPorationInfos(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;)Z"
        }
    .end annotation

    .line 408
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 409
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->commitLocalCorporationInfos(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private saveFixRecords(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)Z"
        }
    .end annotation

    .line 418
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 419
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->commitLocalFixRecords(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private sendMessage(II)V
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 463
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    .line 465
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setSN()Z
    .registers 3

    .line 476
    sget-boolean v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "850ABLN6E32C"

    .line 477
    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mSN:Ljava/lang/String;

    goto :goto_f

    .line 479
    :cond_9
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mSN:Ljava/lang/String;

    .line 482
    :goto_f
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mSN:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    .line 483
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$1;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private setServiceInfo(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "url"

    const-string v3, "FlymeServiceInfoFragment"

    const-string v4, "list"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_17

    .line 283
    iput-object v5, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mCorInfos:Ljava/util/ArrayList;

    .line 284
    iput-object v5, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    .line 285
    invoke-direct {v1, v6, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    return-void

    .line 292
    :cond_17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 295
    :try_start_21
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "returnCode"

    .line 297
    invoke-static {v10, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "200"

    .line 299
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 300
    invoke-direct {v1, v6, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    return-void

    :cond_38
    const-string v0, "returnValue"

    .line 304
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "info"

    .line 305
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_44} :catch_101

    .line 311
    :try_start_44
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v11, v7

    .line 312
    :goto_49
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_97

    .line 313
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "fnumber"

    .line 314
    invoke-static {v12, v13}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "foptime"

    .line 316
    invoke-static {v12, v14}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cstatus"

    .line 318
    invoke-static {v12, v15}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v12

    .line 321
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fnumber = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", foptime = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cstatus = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v5, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    const-string v15, "MX1CA16ALFUUPZ0287"

    invoke-direct {v5, v13, v14, v12, v15}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_93} :catch_97

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_49

    :catch_97
    :cond_97
    :try_start_97
    const-string v0, "name"

    .line 331
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v7

    :goto_a5
    if-ge v5, v4, :cond_f2

    .line 338
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "title"

    .line 339
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "data"

    .line 340
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c2

    .line 342
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_c3

    :cond_c2
    const/4 v10, 0x0

    .line 347
    :goto_c3
    new-instance v13, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v13, v11, v12, v10}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "title "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", data = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", url = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    .line 351
    :cond_f2
    iput-object v8, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mCorInfos:Ljava/util/ArrayList;

    .line 352
    iput-object v9, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    .line 353
    invoke-direct {v1, v8}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->saveCorPorationInfos(Ljava/util/ArrayList;)Z

    .line 354
    invoke-direct {v1, v9}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->saveFixRecords(Ljava/util/ArrayList;)Z

    const/4 v0, 0x3

    .line 355
    invoke-direct {v1, v0, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_100} :catch_101

    goto :goto_108

    :catch_101
    move-exception v0

    .line 357
    invoke-direct {v1, v6, v7}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    .line 358
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_108
    return-void
.end method

.method private setServiceInfoView(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)Z"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    if-nez v0, :cond_d

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->updatePreference(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v0, 0x5

    const/16 v1, 0x15e

    .line 368
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    .line 370
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 371
    invoke-virtual {v0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setCorporationInfo(Ljava/util/ArrayList;)V

    .line 372
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setFixRecords(Ljava/util/ArrayList;)Z

    move-result p1

    and-int/2addr v2, p1

    .line 373
    invoke-direct {p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->handleRefreshMenuAnimation(Z)V

    .line 375
    :cond_20
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    if-eqz p1, :cond_27

    .line 376
    invoke-direct {p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->handleRefreshMenuAnimation(Z)V

    :cond_27
    return v2
.end method

.method private updatePreference(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 114
    new-instance p1, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    invoke-direct {p1, p2, v0}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    .line 116
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setServiceInfoFragment(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)V

    return-void
.end method

.method private updateRecordsCStatus()V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    iget-boolean v4, v0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCreated:Z

    if-eqz v4, :cond_17

    .line 122
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->updateRecordsCStatus()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 123
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 127
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 429
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x7f120ade

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_3c

    goto :goto_3a

    .line 449
    :pswitch_c  #0x7
    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    .line 450
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    goto :goto_3a

    .line 438
    :pswitch_15  #0x6
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    .line 439
    invoke-direct {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->safeOnBack(Z)V

    goto :goto_3a

    .line 453
    :pswitch_1e  #0x5
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->bindServiceInfos()Z

    goto :goto_3a

    .line 446
    :pswitch_22  #0x3, 0x4
    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->sendMessage(II)V

    goto :goto_3a

    .line 434
    :pswitch_26  #0x2
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f120efe

    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    .line 435
    invoke-direct {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->safeOnBack(Z)V

    goto :goto_3a

    :pswitch_32  #0x1
    const/4 p1, 0x2

    .line 442
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->initServiceInfosFromLocalWithCause(I)V

    goto :goto_3a

    .line 431
    :pswitch_37  #0x0
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->initServiceInfos()V

    :goto_3a
    return v3

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_32  #00000001
        :pswitch_26  #00000002
        :pswitch_22  #00000003
        :pswitch_22  #00000004
        :pswitch_1e  #00000005
        :pswitch_15  #00000006
        :pswitch_c  #00000007
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 383
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 384
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 86
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600e4

    .line 87
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    .line 89
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2b

    const-string p1, "fnumber"

    .line 93
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fsn"

    .line 94
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mSN:Ljava/lang/String;

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 96
    :goto_2c
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mSN:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_40

    .line 97
    :cond_37
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->setSN()Z

    move-result v0

    if-nez v0, :cond_40

    .line 98
    invoke-direct {p0, v6}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->safeOnBack(Z)V

    :cond_40
    if-eqz p1, :cond_57

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_57

    .line 103
    const-class p1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121351

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 108
    :cond_57
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    const v0, 0x7f0e0012

    .line 389
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 390
    new-instance v0, Lcom/meizu/settings/widget/RefreshRotateDrawable;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/widget/RefreshRotateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    const v0, 0x7f0a0430

    .line 391
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    .line 392
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 393
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 394
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 189
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    if-eqz v0, :cond_13

    .line 194
    invoke-virtual {v0}, Lcom/meizu/settings/widget/RefreshRotateDrawable;->dispose()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mRefreshRotateDrawable:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    :cond_13
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0430

    if-ne v1, v0, :cond_15

    .line 400
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 401
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->initServiceInfosFromNet()V

    .line 404
    :cond_15
    invoke-super {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 207
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 208
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFlymeFixRecordsPreference:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    if-eqz p0, :cond_a

    .line 209
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->clearFocus()V

    :cond_a
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 3

    .line 215
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 201
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFragmentStopped:Z

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFragmentStopped:Z

    .line 177
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->updateRecordsCStatus()V

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->updateOrCancelNotification(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 183
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFragmentStopped:Z

    return-void
.end method
