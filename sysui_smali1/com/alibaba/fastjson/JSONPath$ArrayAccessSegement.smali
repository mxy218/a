.class Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
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
    name = "ArrayAccessSegement"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->index:I

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1345
    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->index:I

    invoke-virtual {p1, p3, p0}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .registers 3

    .line 1353
    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->index:I

    invoke-virtual {p1, p1, p2, p0}, Lcom/alibaba/fastjson/JSONPath;->removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 1349
    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->index:I

    invoke-virtual {p1, p1, p2, p0, p3}, Lcom/alibaba/fastjson/JSONPath;->setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
