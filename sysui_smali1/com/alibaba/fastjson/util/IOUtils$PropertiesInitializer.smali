.class Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertiesInitializer"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoConfig()V
    .registers 2

    .line 92
    invoke-static {}, Lcom/alibaba/fastjson/util/IOUtils;->loadPropertiesFromFile()V

    const-string p0, "fastjson.compatibleWithJavaBean"

    .line 93
    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const-string p0, "fastjson.compatibleWithFieldName"

    .line 94
    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    return-void
.end method
