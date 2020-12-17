.class public Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
.super Ljava/lang/Object;
.source "TrackerPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TrackerPayload"


# instance fields
.field private payloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload$1;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload$1;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
    .registers 3

    .line 82
    :try_start_0
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;-><init>()V

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    if-nez p2, :cond_a

    .line 44
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string p1, "The keys value is empty, returning without add"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_a
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 58
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string p1, "Map passed in is null, returning without adding map."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_a
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMap()Ljava/util/Map;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    :try_start_0
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception p0

    .line 75
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    :goto_12
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 98
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->payloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
