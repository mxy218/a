.class public Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
.super Ljava/lang/Object;
.source "MPushMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPushMessage"


# instance fields
.field private clickType:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDiscard:Ljava/lang/String;

.field private notifyType:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pushType:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    return-void
.end method

.method private static getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;
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

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 244
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_9

    :catch_1d
    move-exception p0

    .line 250
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_21
    return-object v0
.end method

.method public static parsePushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
    .registers 11

    const-string v0, "extra"

    const-string v1, "clickType"

    const-string/jumbo v2, "title"

    const-string v3, "isDiscard"

    const-string v4, "content"

    const-string v5, "parameters"

    .line 194
    new-instance v6, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;

    invoke-direct {v6}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;-><init>()V

    .line 196
    :try_start_12
    invoke-virtual {v6, p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setTaskId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v6, p0}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setPushType(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v6, p2}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setPackageName(Ljava/lang/String;)V

    .line 199
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 200
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 202
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setContent(Ljava/lang/String;)V

    .line 204
    :cond_33
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 205
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setIsDiscard(Ljava/lang/String;)V

    .line 207
    :cond_40
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 208
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setTitle(Ljava/lang/String;)V

    .line 210
    :cond_4d
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 211
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setClickType(Ljava/lang/String;)V

    .line 213
    :cond_5a
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b6

    .line 214
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b6

    .line 216
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_6a} :catch_a1

    if-nez p1, :cond_99

    .line 219
    :try_start_6c
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_70} :catch_7f
    .catchall {:try_start_6c .. :try_end_70} :catchall_7d

    if-eqz p1, :cond_79

    .line 224
    :try_start_72
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setParams(Ljava/util/Map;)V

    .line 226
    :cond_79
    :goto_79
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7c} :catch_a1

    goto :goto_99

    :catchall_7d
    move-exception p1

    goto :goto_95

    :catch_7f
    move-exception p1

    .line 221
    :try_start_80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "parameter parse error message "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_94
    .catchall {:try_start_80 .. :try_end_94} :catchall_7d

    goto :goto_79

    .line 226
    :goto_95
    :try_start_95
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    throw p1

    .line 229
    :cond_99
    :goto_99
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    .line 230
    invoke-virtual {v6, p0}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setExtra(Ljava/util/Map;)V
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_a0} :catch_a1

    goto :goto_b6

    :catch_a1
    move-exception p0

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse push message error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    :cond_b6
    :goto_b6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " parsePushMessage "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v6
.end method


# virtual methods
.method public getClickType()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->clickType:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra()Ljava/util/Map;
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

    .line 116
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    return-object p0
.end method

.method public getIsDiscard()Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->isDiscard:Ljava/lang/String;

    return-object p0
.end method

.method public getNotifyType()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->notifyType:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Ljava/util/Map;
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

    .line 166
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    return-object p0
.end method

.method public getPushType()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->pushType:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setClickType(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->clickType:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
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

    .line 120
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    return-void
.end method

.method public setIsDiscard(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->isDiscard:Ljava/lang/String;

    return-void
.end method

.method public setNotifyType(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->notifyType:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
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

    .line 170
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->pushType:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPushMessage{taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pushType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->pushType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", notifyType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->notifyType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->clickType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDiscard=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->isDiscard:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
