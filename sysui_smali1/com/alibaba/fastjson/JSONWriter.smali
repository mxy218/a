.class public Lcom/alibaba/fastjson/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONStreamContext;

.field private serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

.field private writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 23
    new-instance p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    return-void
.end method

.method private afterWriter()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_5

    return-void

    .line 153
    :cond_5
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_1e

    goto :goto_15

    :pswitch_c  #0x3ec
    const/16 v0, 0x3ed

    goto :goto_16

    :pswitch_f  #0x3ea
    const/16 v0, 0x3eb

    goto :goto_16

    :pswitch_12  #0x3e9, 0x3eb
    const/16 v0, 0x3ea

    goto :goto_16

    :goto_15
    :pswitch_15  #0x3ed
    move v0, v1

    :goto_16
    if-eq v0, v1, :cond_1c

    .line 173
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x3e9
        :pswitch_12  #000003e9
        :pswitch_f  #000003ea
        :pswitch_12  #000003eb
        :pswitch_c  #000003ec
        :pswitch_15  #000003ed
    .end packed-switch
.end method

.method private beforeWrite()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_5

    return-void

    .line 130
    :cond_5
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x2c

    packed-switch v0, :pswitch_data_22

    goto :goto_20

    .line 141
    :pswitch_d  #0x3ed
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_20

    .line 138
    :pswitch_13  #0x3eb
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_20

    .line 135
    :pswitch_19  #0x3ea
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_20
    :pswitch_20  #0x3e9, 0x3ec
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x3e9
        :pswitch_20  #000003e9
        :pswitch_19  #000003ea
        :pswitch_13  #000003eb
        :pswitch_20  #000003ec
        :pswitch_d  #000003ed
    .end packed-switch
.end method

.method private beginStructure()V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    packed-switch v0, :pswitch_data_2e

    .line 88
    :pswitch_7  #0x3eb
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :pswitch_1e  #0x3ed
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2d

    .line 78
    :pswitch_26  #0x3ea
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2d
    :pswitch_2d  #0x3e9, 0x3ec
    return-void

    :pswitch_data_2e
    .packed-switch 0x3e9
        :pswitch_2d  #000003e9
        :pswitch_26  #000003ea
        :pswitch_7  #000003eb
        :pswitch_2d  #000003ec
        :pswitch_1e  #000003ed
    .end packed-switch
.end method

.method private endStructure()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    return-void

    .line 105
    :cond_b
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_24

    :pswitch_11  #0x3eb
    goto :goto_1b

    :pswitch_12  #0x3ec
    const/16 v0, 0x3ed

    goto :goto_1c

    :pswitch_15  #0x3ea
    const/16 v0, 0x3eb

    goto :goto_1c

    :pswitch_18  #0x3e9
    const/16 v0, 0x3ea

    goto :goto_1c

    :goto_1b
    :pswitch_1b  #0x3ed
    move v0, v1

    :goto_1c
    if-eq v0, v1, :cond_22

    .line 121
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x3e9
        :pswitch_18  #000003e9
        :pswitch_15  #000003ea
        :pswitch_11  #000003eb
        :pswitch_12  #000003ec
        :pswitch_1b  #000003ed
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .registers 3

    .line 27
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    return-void
.end method

.method public endArray()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 94
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->endStructure()V

    return-void
.end method

.method public endObject()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->endStructure()V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    return-void
.end method

.method public startArray()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_7

    .line 67
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beginStructure()V

    .line 70
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v2, 0x3ec

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 71
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method

.method public startObject()V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_7

    .line 32
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beginStructure()V

    .line 34
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 35
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method

.method public writeEndArray()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONWriter;->endArray()V

    return-void
.end method

.method public writeEndObject()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONWriter;->endObject()V

    return-void
.end method

.method public writeKey(Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONWriter;->writeObject(Ljava/lang/String;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beforeWrite()V

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->afterWriter()V

    return-void
.end method

.method public writeObject(Ljava/lang/String;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beforeWrite()V

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->afterWriter()V

    return-void
.end method

.method public writeStartArray()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONWriter;->startArray()V

    return-void
.end method

.method public writeStartObject()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONWriter;->startObject()V

    return-void
.end method

.method public writeValue(Ljava/lang/Object;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONWriter;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
