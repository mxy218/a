.class public Lcom/meizu/cloud/pushsdk/handler/MessageV4;
.super Lcom/meizu/cloud/pushsdk/handler/MessageV3;
.source "MessageV4.java"


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

.field private static final TAG:Ljava/lang/String; = "MessageV4"


# instance fields
.field private actVideoSetting:Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV4$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/MessageV4$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;-><init>(Landroid/os/Parcel;)V

    .line 36
    const-class v0, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->actVideoSetting:Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    return-void
.end method

.method public static parse(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/handler/MessageV4;
    .registers 5

    const-string v0, "acts"

    const-string v1, "extra"

    .line 61
    new-instance v2, Lcom/meizu/cloud/pushsdk/handler/MessageV4;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV4;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getNotificationMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 64
    :try_start_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getNotificationMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 65
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 68
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 69
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->setActVideoSetting(Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    return-object v2
.end method


# virtual methods
.method public getActVideoSetting()Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->actVideoSetting:Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    return-object p0
.end method

.method public setActVideoSetting(Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->actVideoSetting:Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageV4{actVideoSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->actVideoSetting:Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-super {p0}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 41
    invoke-super {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->actVideoSetting:Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
