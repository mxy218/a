.class public Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
.super Ljava/lang/Object;
.source "TimeDisplaySetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_SHOW_TIME:Ljava/lang/String; = "et"

.field public static final START_SHOW_TIME:Ljava/lang/String; = "st"

.field public static final TAG:Ljava/lang/String; = "time_display_setting"

.field public static final TIME_DISPLAY:Ljava/lang/String; = "td"

.field public static final TIME_DISPLAY_SETTING:Ljava/lang/String; = "ts"


# instance fields
.field private endShowTime:Ljava/lang/String;

.field private isTimeDisplay:Z

.field private startShowTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
    .registers 3

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 92
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception p0

    .line 94
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

    .line 97
    :goto_22
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
    .registers 6

    const-string v0, "et"

    const-string/jumbo v1, "st"

    const-string/jumbo v2, "td"

    .line 101
    new-instance v3, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;-><init>()V

    if-eqz p0, :cond_51

    .line 104
    :try_start_f
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 105
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v3, v2}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->setIsTimeDisplay(Z)V

    .line 107
    :cond_21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 108
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->setStartShowTime(Ljava/lang/String;)V

    .line 110
    :cond_2e
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->setEndShowTime(Ljava/lang/String;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_3b} :catch_3c

    goto :goto_51

    :catch_3c
    move-exception p0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json obj error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_51
    :goto_51
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getEndShowTime()Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStartShowTime()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    return-object p0
.end method

.method public isTimeDisplay()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    return p0
.end method

.method public setEndShowTime(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    return-void
.end method

.method public setIsTimeDisplay(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    return-void
.end method

.method public setStartShowTime(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeDisplaySetting{isTimeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startShowTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", endShowTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    iget-boolean p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
