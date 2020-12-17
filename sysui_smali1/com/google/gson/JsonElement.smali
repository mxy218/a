.class public abstract Lcom/google/gson/JsonElement;
.super Ljava/lang/Object;
.source "JsonElement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsJsonArray()Lcom/google/gson/JsonArray;
    .registers 2

    .line 103
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    check-cast p0, Lcom/google/gson/JsonArray;

    return-object p0

    .line 106
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This is not a JSON Array."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAsJsonObject()Lcom/google/gson/JsonObject;
    .registers 4

    .line 87
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    check-cast p0, Lcom/google/gson/JsonObject;

    return-object p0

    .line 90
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a JSON Object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    check-cast p0, Lcom/google/gson/JsonPrimitive;

    return-object p0

    .line 122
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This is not a JSON Primitive."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isJsonArray()Z
    .registers 1

    .line 46
    instance-of p0, p0, Lcom/google/gson/JsonArray;

    return p0
.end method

.method public isJsonNull()Z
    .registers 1

    .line 74
    instance-of p0, p0, Lcom/google/gson/JsonNull;

    return p0
.end method

.method public isJsonObject()Z
    .registers 1

    .line 55
    instance-of p0, p0, Lcom/google/gson/JsonObject;

    return p0
.end method

.method public isJsonPrimitive()Z
    .registers 1

    .line 64
    instance-of p0, p0, Lcom/google/gson/JsonPrimitive;

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 321
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 322
    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    .line 323
    invoke-virtual {v1, v2}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 324
    invoke-static {p0, v1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 325
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 327
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
