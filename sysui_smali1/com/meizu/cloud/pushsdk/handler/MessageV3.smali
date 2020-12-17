.class public Lcom/meizu/cloud/pushsdk/handler/MessageV3;
.super Ljava/lang/Object;
.source "MessageV3.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/cloud/pushsdk/handler/MessageV3;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Message_V3"


# instance fields
.field private activity:Ljava/lang/String;

.field private clickType:I

.field private content:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private isDiscard:Z

.field private mAdvanceSetting:Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

.field private mAppIconSetting:Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

.field private mNotificationStyle:Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

.field private mTimeDisplaySetting:Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

.field private notificationMessage:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pushTimestamp:Ljava/lang/String;

.field private seqId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private throughMessage:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uploadDataPackageName:Ljava/lang/String;

.field private uriPackageName:Ljava/lang/String;

.field private webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->taskId:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->seqId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->deviceId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->title:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->content:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->packageName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->clickType:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->isDiscard:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->activity:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->webUrl:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uriPackageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uploadDataPackageName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->pushTimestamp:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->throughMessage:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->notificationMessage:Ljava/lang/String;

    .line 89
    const-class v0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAdvanceSetting:Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    .line 90
    const-class v0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAppIconSetting:Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    .line 91
    const-class v0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mNotificationStyle:Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    .line 92
    const-class v0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mTimeDisplaySetting:Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    return-void
.end method

.method public static getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 458
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_9

    :catch_1d
    move-exception p0

    .line 464
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_21
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/notification/MPushMessage;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .registers 6

    .line 325
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;-><init>()V

    .line 326
    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setPackageName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setUploadDataPackageName(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setDeviceId(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setTaskId(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setTitle(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setContent(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getIsDiscard()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setIsDiscard(Z)V

    .line 333
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getClickType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setClickType(I)V

    .line 334
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getExtra()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_48
    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 336
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "activity"

    .line 337
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 338
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setActivity(Ljava/lang/String;)V

    :cond_6b
    const-string/jumbo v1, "url"

    .line 340
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 341
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setWebUrl(Ljava/lang/String;)V

    :cond_77
    const-string v1, "pk"

    .line 343
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 344
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setUriPackageName(Ljava/lang/String;)V

    :cond_82
    const-string v1, "ns"

    .line 346
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 347
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmNotificationStyle(Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;)V

    :cond_91
    const-string v1, "as"

    .line 349
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 350
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmAdvanceSetting(Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;)V

    :cond_a0
    const-string v1, "is"

    .line 352
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 353
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmAppIconSetting(Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;)V

    :cond_af
    const-string/jumbo v1, "ts"

    .line 355
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 356
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmTimeDisplaySetting(Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;)V

    goto :goto_48

    .line 359
    :cond_c0
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setParamsMap(Ljava/util/Map;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .registers 21

    move-object/from16 v0, p3

    const-string v1, "parameters"

    const-string v2, "pk"

    const-string/jumbo v3, "task_id"

    const-string/jumbo v4, "url"

    const-string v5, "activity"

    const-string/jumbo v6, "ts"

    const-string v7, "as"

    const-string v8, "is"

    const-string v9, "ns"

    const-string v10, "extra"

    const-string v11, "clickType"

    const-string v12, "isDiscard"

    const-string v13, "content"

    const-string/jumbo v14, "title"

    .line 398
    new-instance v15, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-direct {v15}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;-><init>()V

    .line 399
    invoke-virtual {v15, v0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setNotificationMessage(Ljava/lang/String;)V

    move-object/from16 v16, v1

    move-object/from16 v1, p2

    .line 400
    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setTaskId(Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 401
    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setDeviceId(Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 402
    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setPackageName(Ljava/lang/String;)V

    .line 404
    :try_start_3b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    .line 405
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 407
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setTitle(Ljava/lang/String;)V

    .line 409
    :cond_53
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 410
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setContent(Ljava/lang/String;)V

    .line 412
    :cond_60
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 413
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setIsDiscard(Z)V

    .line 415
    :cond_6d
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 416
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setClickType(I)V

    .line 418
    :cond_7a
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 419
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 421
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmNotificationStyle(Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;)V

    .line 423
    :cond_95
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 424
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmAppIconSetting(Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;)V

    .line 426
    :cond_a6
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 427
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmAdvanceSetting(Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;)V

    .line 429
    :cond_b7
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 430
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setmTimeDisplaySetting(Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;)V

    .line 432
    :cond_c8
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 433
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setActivity(Ljava/lang/String;)V

    .line 435
    :cond_d5
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 436
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setWebUrl(Ljava/lang/String;)V

    .line 438
    :cond_e2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f5

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 439
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setTaskId(Ljava/lang/String;)V

    .line 441
    :cond_f5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_102

    .line 442
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setUriPackageName(Ljava/lang/String;)V

    :cond_102
    move-object/from16 v1, v16

    .line 444
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_115

    .line 445
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setParamsMap(Ljava/util/Map;)V
    :try_end_115
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_115} :catch_115

    :catch_115
    :cond_115
    return-object v15
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .registers 5

    .line 392
    invoke-static {p0, p1, p2, p4}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object p0

    .line 393
    invoke-virtual {p0, p3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setSeqId(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .registers 7

    .line 381
    invoke-static {p0, p3, p4, p5, p6}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object p0

    .line 382
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setUploadDataPackageName(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->setPushTimestamp(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getActivity()Ljava/lang/String;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->activity:Ljava/lang/String;

    return-object p0
.end method

.method public getClickType()I
    .registers 1

    .line 229
    iget p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->clickType:I

    return p0
.end method

.method public getContent()Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationMessage()Ljava/lang/String;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->notificationMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getParamsMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    return-object p0
.end method

.method public getPushTimestamp()Ljava/lang/String;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->pushTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getSeqId()Ljava/lang/String;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->seqId:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public getThroughMessage()Ljava/lang/String;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->throughMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadDataPackageName()Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uploadDataPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUriPackageName()Ljava/lang/String;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uriPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getWebUrl()Ljava/lang/String;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getmAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAdvanceSetting:Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    return-object p0
.end method

.method public getmAppIconSetting()Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAppIconSetting:Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    return-object p0
.end method

.method public getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mNotificationStyle:Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    return-object p0
.end method

.method public getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mTimeDisplaySetting:Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    return-object p0
.end method

.method public isDiscard()Z
    .registers 1

    .line 237
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->isDiscard:Z

    return p0
.end method

.method public setActivity(Ljava/lang/String;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->activity:Ljava/lang/String;

    return-void
.end method

.method public setClickType(I)V
    .registers 2

    .line 233
    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->clickType:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->content:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setIsDiscard(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->isDiscard:Z

    return-void
.end method

.method public setNotificationMessage(Ljava/lang/String;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->notificationMessage:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setParamsMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    return-void
.end method

.method public setPushTimestamp(Ljava/lang/String;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->pushTimestamp:Ljava/lang/String;

    return-void
.end method

.method public setSeqId(Ljava/lang/String;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->seqId:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setThroughMessage(Ljava/lang/String;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->throughMessage:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->title:Ljava/lang/String;

    return-void
.end method

.method public setUploadDataPackageName(Ljava/lang/String;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uploadDataPackageName:Ljava/lang/String;

    return-void
.end method

.method public setUriPackageName(Ljava/lang/String;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uriPackageName:Ljava/lang/String;

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public setmAdvanceSetting(Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAdvanceSetting:Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    return-void
.end method

.method public setmAppIconSetting(Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAppIconSetting:Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    return-void
.end method

.method public setmNotificationStyle(Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mNotificationStyle:Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    return-void
.end method

.method public setmTimeDisplaySetting(Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mTimeDisplaySetting:Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageV3{taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seqId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->seqId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->clickType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDiscard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->isDiscard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", activity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->activity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", webUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uriPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uriPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pushTimestamp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->pushTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uploadDataPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uploadDataPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", paramsMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", throughMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->throughMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", notificationMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->notificationMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAdvanceSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAdvanceSetting:Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppIconSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAppIconSetting:Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mNotificationStyle:Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeDisplaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mTimeDisplaySetting:Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->seqId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->clickType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->isDiscard:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uriPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->uploadDataPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->pushTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->paramsMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 132
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->throughMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->notificationMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAdvanceSetting:Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mAppIconSetting:Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mNotificationStyle:Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->mTimeDisplaySetting:Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
