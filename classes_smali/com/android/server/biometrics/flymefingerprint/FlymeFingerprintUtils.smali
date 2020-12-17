.class public Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;
.super Ljava/lang/Object;
.source "FlymeFingerprintUtils.java"


# static fields
.field public static final IS_UNDER_GLASS_FINGERPRINT:Z = true

.field private static final PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_NAME_ALIPAY:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final PACKAGE_NAME_SYSTEMUI_TOOLS:Ljava/lang/String; = "com.flyme.systemuitools"

.field public static final PACKAGE_NAME_WEIXIN:Ljava/lang/String; = "com.tencent.mm"

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static sInstance:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIdentifyFailedReasonMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    const-string v1, "com.flyme.systemuitools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->sInstance:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->sInstance:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    .line 48
    :cond_b
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->sInstance:Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    return-object v0
.end method


# virtual methods
.method public cacheIdentifyFailedReason(II)V
    .registers 7
    .param p1, "acquireCode"  # I
    .param p2, "vendorCode"  # I

    .line 73
    const-string v0, ""

    const/4 v1, 0x6

    if-ge p1, v1, :cond_29

    .line 74
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 76
    :cond_29
    const/16 v1, 0x3eb

    if-le p2, v1, :cond_50

    .line 77
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_50
    :goto_50
    return-void
.end method

.method public checkIsFlymeParallelSpaceUserId(I)I
    .registers 3
    .param p1, "groupId"  # I

    .line 103
    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_8
    return p1
.end method

.method public isPackageAlwaysAllow(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->PACKAGES_ALWAYS_ALLOW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetIdentifyFailedReasonCache()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    return-void
.end method

.method public uploadIdentifyFailedReasonEvent()V
    .registers 9

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_59

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 90
    .local v0, "acquireCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "acquireCode":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v3, "failedReasonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "fp_authenticate_failed_reason"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v4, "fp_authenticate_failed_reason_vendor"

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mIdentifyFailedReasonMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v4

    const-string v5, "fingerprint_authenticate"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_5a

    .line 95
    .end local v2  # "acquireCode":Ljava/lang/String;
    .end local v3  # "failedReasonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_12

    .line 99
    .end local v0  # "acquireCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_59
    goto :goto_5e

    .line 97
    :catch_5a
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_5e
    return-void
.end method

.method public uploadIdentifyResultEvent(I)V
    .registers 7
    .param p1, "result"  # I

    .line 61
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "fp_authenticate_result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v1

    const-string v2, "fingerprint_authenticate"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 67
    .end local v0  # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_32

    .line 65
    :catch_2e
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method
