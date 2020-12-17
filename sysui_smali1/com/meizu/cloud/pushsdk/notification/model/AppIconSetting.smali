.class public Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
.super Ljava/lang/Object;
.source "AppIconSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_ICON_SETTING:Ljava/lang/String; = "is"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LARGE_ICON:Ljava/lang/String; = "di"

.field public static final LARGE_ICON_URL:Ljava/lang/String; = "li"

.field public static final TAG:Ljava/lang/String; = "app_icon_setting"


# instance fields
.field private defaultLargeIcon:Z

.field private largeIconUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    .registers 3

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 86
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception p0

    .line 88
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

    .line 91
    :goto_22
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    .registers 5

    const-string v0, "li"

    const-string v1, "di"

    .line 95
    new-instance v2, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;-><init>()V

    if-eqz p0, :cond_40

    .line 98
    :try_start_b
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->setDefaultLargeIcon(Z)V

    .line 101
    :cond_1d
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 102
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->setLargeIconUrl(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json obj error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_40
    :goto_40
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLargeIconUrl()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isDefaultLargeIcon()Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    return p0
.end method

.method public setDefaultLargeIcon(Z)V
    .registers 2

    .line 79
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    return-void
.end method

.method public setLargeIconUrl(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppIconSetting{defaultLargeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", largeIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 61
    iget-boolean p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
