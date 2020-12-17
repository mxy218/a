.class Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "DeviceInfo"


# instance fields
.field private devicesPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->devicesPairs:Ljava/util/HashMap;

    .line 24
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setDevice()V

    .line 25
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setSn()V

    .line 26
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setProductModel()V

    .line 27
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setBuildMask()V

    .line 28
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setOsType()V

    .line 29
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setBrand()V

    .line 30
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setOsVersion()V

    .line 31
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setOs()V

    .line 33
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 34
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setContextualParams(Landroid/content/Context;)V

    .line 37
    :cond_2f
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->TAG:Ljava/lang/String;

    const-string p1, "DeviceInfo created successfully."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$1;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;)V

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 298
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->devicesPairs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 281
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->devicesPairs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private isRoot(Landroid/content/Context;)V
    .registers 3

    .line 136
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isRoot(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "root"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setAndroidAdId(Landroid/content/Context;)V
    .registers 5

    .line 263
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 264
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertising ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_ad_id"

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAndroidId(Landroid/content/Context;)V
    .registers 5

    .line 251
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 252
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_id"

    .line 253
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBrand()V
    .registers 4

    .line 216
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ""

    const-string v2, "\n"

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    const-string v1, "brand"

    .line 220
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBuildMask()V
    .registers 4

    .line 175
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getBuildMask()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ""

    const-string v2, "\n"

    .line 177
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    const-string v1, "build_mask"

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setCountry(Landroid/content/Context;)V
    .registers 4

    .line 110
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ""

    const-string v1, "\n"

    .line 112
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    const-string v0, "country"

    .line 114
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDevice()V
    .registers 4

    .line 90
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ""

    const-string v2, "\n"

    .line 92
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const-string v1, "device"

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFlymeUid(Landroid/content/Context;)V
    .registers 3

    .line 150
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getFlymeUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "flyme_uid"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setImei(Landroid/content/Context;)V
    .registers 4

    .line 101
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "imei"

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceInfo set imei when init, imei: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setInternational(Landroid/content/Context;)V
    .registers 3

    .line 129
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->firmwareProductInternational()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "international"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setMacAddress(Landroid/content/Context;)V
    .registers 3

    .line 157
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mac_address"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOperator(Landroid/content/Context;)V
    .registers 4

    .line 121
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ""

    const-string v1, "\n"

    .line 123
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    const-string v0, "operator"

    .line 125
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOs()V
    .registers 5

    .line 238
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBrandMeizu()Z

    move-result v0

    .line 239
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBrandMeizu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    if-eqz v0, :cond_24

    const-string v0, "Flyme"

    .line 241
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    const-string v0, ""

    .line 243
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method private setOsType()V
    .registers 3

    const-string v0, "os_type"

    const-string v1, "android"

    .line 209
    invoke-direct {p0, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOsVersion()V
    .registers 4

    .line 227
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ""

    const-string v2, "\n"

    .line 229
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const-string v1, "os_version"

    .line 231
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setProductModel()V
    .registers 4

    .line 164
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ""

    const-string v2, "\n"

    .line 166
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    const-string v1, "product_model"

    .line 168
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSn()V
    .registers 3

    .line 143
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getSN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sn"

    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSre(Landroid/content/Context;)V
    .registers 3

    .line 186
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDisplaySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sre"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTerType(Landroid/content/Context;)V
    .registers 4

    .line 195
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ter_type"

    if-eqz v0, :cond_16

    .line 196
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PAD:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37

    .line 197
    :cond_16
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 198
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->FLYME_TV:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37

    .line 200
    :cond_2a
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PHONE:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_37
    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->devicesPairs:Ljava/util/HashMap;

    return-object p0
.end method

.method public setContextualParams(Landroid/content/Context;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setImei(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setCountry(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setOperator(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setInternational(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->isRoot(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setFlymeUid(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setMacAddress(Landroid/content/Context;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setSre(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setAndroidId(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setAndroidAdId(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->setTerType(Landroid/content/Context;)V

    return-void
.end method
