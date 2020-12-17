.class public Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
.super Ljava/lang/Object;
.source "NetResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private responseBody:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse$1;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse$1;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseCode:I

    .line 26
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseBody:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseCode:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getResponseBody()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseBody:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "code"

    .line 33
    iget v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "body"

    .line 34
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 36
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 38
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NetResponse] "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 65
    iget p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->responseBody:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
