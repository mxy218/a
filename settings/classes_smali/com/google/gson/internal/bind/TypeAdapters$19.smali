.class final Lcom/google/gson/internal/bind/TypeAdapters$19;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 464
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$19;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/StringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne p0, v0, :cond_d

    .line 468
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    .line 471
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$19;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 475
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method