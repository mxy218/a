.class public Lcom/alibaba/fastjson/JSONPObject;
.super Ljava/lang/Object;
.source "JSONPObject.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/JSONSerializable;


# instance fields
.field private function:Ljava/lang/String;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/Object;)V
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFunction()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    return-object p0
.end method

.method public setFunction(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 60
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object p2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 48
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    const/16 p3, 0x28

    .line 49
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 p3, 0x0

    .line 50
    :goto_d
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_28

    if-eqz p3, :cond_1c

    const/16 p4, 0x2c

    .line 52
    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 54
    :cond_1c
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    :cond_28
    const/16 p0, 0x29

    .line 56
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method
