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
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/location/GnssConfiguration;

    .line 243
    iput-object p1, p0, Lcom/android/server/location/GnssConfiguration$1;->this$0:Lcom/android/server/location/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 245
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$9cfNUAWKKutp5KSqhvHSGJNe0ao;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$9cfNUAWKKutp5KSqhvHSGJNe0ao;

    const-string v0, "SUPL_VER"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$384RrX20Mx6OJsRiqsQcSxYdcZc;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$384RrX20Mx6OJsRiqsQcSxYdcZc;

    const-string v0, "SUPL_MODE"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p2}, Lcom/android/server/location/GnssConfiguration;->access$000(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 249
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$sKzdHBM7V7DxdhcWx1u8hipJYFo;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$sKzdHBM7V7DxdhcWx1u8hipJYFo;

    const-string v0, "SUPL_ES"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_24
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$5tBf0Ru8L994vqKbXOeOBj2A-CA;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$5tBf0Ru8L994vqKbXOeOBj2A-CA;

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$aaV8BigB_1Oil1H82EHUb0zvWPo;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$aaV8BigB_1Oil1H82EHUb0zvWPo;

    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$8lp2ukEzg_Agf73p3ka-dqhWUpE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$8lp2ukEzg_Agf73p3ka-dqhWUpE;

    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p2}, Lcom/android/server/location/GnssConfiguration;->access$100(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 259
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$rRu0NBMB8DgPt3DY5__6u_WNl7A;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$rRu0NBMB8DgPt3DY5__6u_WNl7A;

    const-string v0, "GPS_LOCK"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_48
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 245
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 246
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 249
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 252
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$500(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 254
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$400(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 256
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$300(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .registers 2
    .param p0, "x$0"  # I

    .line 259
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$200(I)Z

    move-result v0

    return v0
.end method
