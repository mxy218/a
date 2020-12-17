.class public Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
.super Ljava/lang/Object;
.source "NotifyType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIGHTS:Ljava/lang/String; = "l"

.field public static final NOTIFY_TYPE:Ljava/lang/String; = "nt"

.field public static final SOUND:Ljava/lang/String; = "s"

.field public static final TAG:Ljava/lang/String; = "notify_type"

.field public static final VIBRATE:Ljava/lang/String; = "v"


# instance fields
.field lights:Z

.field sound:Z

.field vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
    .registers 3

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 88
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception p0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json string error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_21
    const/4 v0, 0x0

    .line 93
    :goto_22
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
    .registers 8

    const-string v0, "s"

    const-string v1, "l"

    const-string/jumbo v2, "v"

    .line 97
    new-instance v3, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;-><init>()V

    if-eqz p0, :cond_5b

    .line 100
    :try_start_e
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_22

    .line 101
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v5

    goto :goto_1f

    :cond_1e
    move v2, v6

    :goto_1f
    invoke-virtual {v3, v2}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setVibrate(Z)V

    .line 103
    :cond_22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_30

    move v1, v5

    goto :goto_31

    :cond_30
    move v1, v6

    :goto_31
    invoke-virtual {v3, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setLights(Z)V

    .line 106
    :cond_34
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 107
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    move v5, v6

    :goto_42
    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setSound(Z)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_45} :catch_46

    goto :goto_5b

    :catch_46
    move-exception p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json obj error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5b
    :goto_5b
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isLights()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    return p0
.end method

.method public isSound()Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    return p0
.end method

.method public isVibrate()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    return p0
.end method

.method public setLights(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    return-void
.end method

.method public setSound(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyType{vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 54
    iget-boolean p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-boolean p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
