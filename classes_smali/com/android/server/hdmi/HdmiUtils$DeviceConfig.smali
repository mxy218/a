.class public Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfig"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final supportedCodecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$CodecSad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$CodecSad;",
            ">;)V"
        }
    .end annotation

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    .line 619
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 620
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 624
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 625
    check-cast p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 626
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 627
    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 626
    :goto_1e
    return v1

    .line 629
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 634
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 636
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 634
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
