.class public Lcom/android/server/signedconfig/SignedConfig;
.super Ljava/lang/Object;
.source "SignedConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    }
.end annotation


# static fields
.field private static final CONFIG_KEY_MAX_SDK:Ljava/lang/String; = "max_sdk"

.field private static final CONFIG_KEY_MIN_SDK:Ljava/lang/String; = "min_sdk"

.field private static final CONFIG_KEY_VALUES:Ljava/lang/String; = "values"

.field private static final KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field public final perSdkConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    .line 86
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfig;->perSdkConfig:Ljava/util/List;

    .line 87
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/signedconfig/SignedConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/signedconfig/InvalidConfigException;
        }
    .end annotation

    .line 128
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    const-string/jumbo p0, "version"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 131
    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 134
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/server/signedconfig/SignedConfig;->parsePerSdkConfig(Lorg/json/JSONObject;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 138
    :cond_2c
    new-instance p1, Lcom/android/server/signedconfig/SignedConfig;

    invoke-direct {p1, p0, v1}, Lcom/android/server/signedconfig/SignedConfig;-><init>(ILjava/util/List;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_32

    return-object p1

    .line 139
    :catch_32
    move-exception p0

    .line 140
    new-instance p1, Lcom/android/server/signedconfig/InvalidConfigException;

    const-string p2, "Could not parse JSON"

    invoke-direct {p1, p2, p0}, Lcom/android/server/signedconfig/InvalidConfigException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method static parsePerSdkConfig(Lorg/json/JSONObject;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/android/server/signedconfig/InvalidConfigException;
        }
    .end annotation

    .line 157
    const-string v0, "min_sdk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    const-string v1, "max_sdk"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 159
    const-string/jumbo v2, "values"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 161
    invoke-virtual {p0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 163
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v5, v6, :cond_3c

    if-nez v5, :cond_37

    goto :goto_3c

    .line 165
    :cond_37
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    .line 164
    :cond_3c
    :goto_3c
    const/4 v5, 0x0

    .line 166
    :goto_3d
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Config key "

    if-eqz v6, :cond_83

    .line 169
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 170
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 171
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 175
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_7f

    .line 172
    :cond_5e
    new-instance p0, Lcom/android/server/signedconfig/InvalidConfigException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " contains unsupported value "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v5}, Lcom/android/server/signedconfig/SignedConfig;->quoted(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/signedconfig/InvalidConfigException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_7f
    :goto_7f
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    goto :goto_20

    .line 167
    :cond_83
    new-instance p0, Lcom/android/server/signedconfig/InvalidConfigException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/signedconfig/InvalidConfigException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_9d
    new-instance p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;-><init>(IILjava/util/Map;)V

    return-object p0
.end method

.method private static quoted(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 146
    if-nez p0, :cond_6

    .line 147
    const-string/jumbo p0, "null"

    return-object p0

    .line 149
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMatchingConfig(I)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/server/signedconfig/SignedConfig;->perSdkConfig:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    .line 97
    iget v2, v1, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    if-gt v2, p1, :cond_1b

    iget v2, v1, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    if-gt p1, v2, :cond_1b

    .line 98
    return-object v1

    .line 100
    :cond_1b
    goto :goto_6

    .line 102
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method
