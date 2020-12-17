.class Lcom/alibaba/fastjson/JSONPath$NullSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullSegement"
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$NullSegement;->propertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1430
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$NullSegement;->propertyName:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p2, 0x1

    :cond_a
    return p2
.end method
