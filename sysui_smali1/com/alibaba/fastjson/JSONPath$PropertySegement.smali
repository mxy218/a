.class Lcom/alibaba/fastjson/JSONPath$PropertySegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertySegement"
.end annotation


# instance fields
.field private final deep:Z

.field private final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1283
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    .line 1284
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->deep:Z

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1288
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->deep:Z

    if-eqz p2, :cond_f

    .line 1289
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p3, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 1293
    :cond_f
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .registers 3

    .line 1302
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1298
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0, p3}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
