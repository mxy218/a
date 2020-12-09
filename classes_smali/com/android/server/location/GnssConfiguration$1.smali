.class Lcom/android/server/location/GnssConfiguration$1;
.super Ljava/util/HashMap;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssConfiguration;->reloadGpsProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssConfiguration;

.field final synthetic val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssConfiguration;Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)V
    .registers 3

    .line 246
    iput-object p1, p0, Lcom/android/server/location/GnssConfiguration$1;->this$0:Lcom/android/server/location/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 248
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$9cfNUAWKKutp5KSqhvHSGJNe0ao;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$9cfNUAWKKutp5KSqhvHSGJNe0ao;

    const-string p2, "SUPL_VER"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$384RrX20Mx6OJsRiqsQcSxYdcZc;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$384RrX20Mx6OJsRiqsQcSxYdcZc;

    const-string p2, "SUPL_MODE"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object p1, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p1}, Lcom/android/server/location/GnssConfiguration;->access$000(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 252
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$sKzdHBM7V7DxdhcWx1u8hipJYFo;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$sKzdHBM7V7DxdhcWx1u8hipJYFo;

    const-string p2, "SUPL_ES"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_24
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$5tBf0Ru8L994vqKbXOeOBj2A-CA;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$5tBf0Ru8L994vqKbXOeOBj2A-CA;

    const-string p2, "LPP_PROFILE"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$aaV8BigB_1Oil1H82EHUb0zvWPo;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$aaV8BigB_1Oil1H82EHUb0zvWPo;

    const-string p2, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$8lp2ukEzg_Agf73p3ka-dqhWUpE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$8lp2ukEzg_Agf73p3ka-dqhWUpE;

    const-string p2, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object p1, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p1}, Lcom/android/server/location/GnssConfiguration;->access$100(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 262
    sget-object p1, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$rRu0NBMB8DgPt3DY5__6u_WNl7A;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$rRu0NBMB8DgPt3DY5__6u_WNl7A;

    const-string p2, "GPS_LOCK"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_48
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .registers 1

    .line 248
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$800(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$1(I)Z
    .registers 1

    .line 249
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$700(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$2(I)Z
    .registers 1

    .line 252
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$600(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$3(I)Z
    .registers 1

    .line 255
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$500(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$4(I)Z
    .registers 1

    .line 257
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$400(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$5(I)Z
    .registers 1

    .line 259
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$300(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$6(I)Z
    .registers 1

    .line 262
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$200(I)Z

    move-result p0

    return p0
.end method
