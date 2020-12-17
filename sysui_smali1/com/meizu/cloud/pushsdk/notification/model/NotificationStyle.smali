.class public Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;
.super Ljava/lang/Object;
.source "NotificationStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BANNER_IMAGE_URL:Ljava/lang/String; = "bi"

.field public static final BASE_STYLE:Ljava/lang/String; = "bs"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPANDABLE_IMAGE_URL:Ljava/lang/String; = "ei"

.field public static final EXPANDABLE_TEXT:Ljava/lang/String; = "et"

.field public static final INNER_STYLE:Ljava/lang/String; = "is"

.field public static final NOTIFICATION_STYLE:Ljava/lang/String; = "ns"

.field public static final TAG:Ljava/lang/String; = "notification_style"


# instance fields
.field private bannerImageUrl:Ljava/lang/String;

.field private baseStyle:I

.field private expandableImageUrl:Ljava/lang/String;

.field private expandableText:Ljava/lang/String;

.field private innerStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    .line 33
    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    .line 33
    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableText:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableImageUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->bannerImageUrl:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;
    .registers 3

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 119
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception p0

    .line 121
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

    .line 124
    :goto_22
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;
    .registers 8

    const-string v0, "bi"

    const-string v1, "ei"

    const-string v2, "et"

    const-string v3, "is"

    const-string v4, "bs"

    .line 128
    new-instance v5, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    invoke-direct {v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;-><init>()V

    if-eqz p0, :cond_68

    .line 131
    :try_start_11
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 132
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->setBaseStyle(I)V

    .line 134
    :cond_1e
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 135
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->setInnerStyle(I)V

    .line 137
    :cond_2b
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 138
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->setExpandableText(Ljava/lang/String;)V

    .line 140
    :cond_38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 141
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->setExpandableImageUrl(Ljava/lang/String;)V

    .line 143
    :cond_45
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 144
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->setBannerImageUrl(Ljava/lang/String;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_52} :catch_53

    goto :goto_68

    :catch_53
    move-exception p0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json obj error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_68
    :goto_68
    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBannerImageUrl()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->bannerImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseStyle()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    return p0
.end method

.method public getExpandableImageUrl()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getExpandableText()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableText:Ljava/lang/String;

    return-object p0
.end method

.method public getInnerStyle()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    return p0
.end method

.method public setBannerImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->bannerImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setBaseStyle(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    return-void
.end method

.method public setExpandableImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setExpandableText(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableText:Ljava/lang/String;

    return-void
.end method

.method public setInnerStyle(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationStyle{baseStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", innerStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expandableText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expandableImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bannerImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->bannerImageUrl:Ljava/lang/String;

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

    .line 68
    iget p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->baseStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->innerStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->expandableImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->bannerImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
