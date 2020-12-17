.class public Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
.super Ljava/lang/Object;
.source "MappingFastJsonValue.java"


# instance fields
.field private jsonpFunction:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getJsonpFunction()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public setJsonpFunction(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    return-void
.end method
