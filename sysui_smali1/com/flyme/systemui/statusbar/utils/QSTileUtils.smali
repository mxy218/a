.class public Lcom/flyme/systemui/statusbar/utils/QSTileUtils;
.super Ljava/lang/Object;
.source "QSTileUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final IS_SHOPDEMO:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "QSTileUtils"

    const/4 v1, 0x3

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->DEBUG:Z

    .line 27
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    sput-boolean v0, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->IS_SHOPDEMO:Z

    return-void
.end method

.method public static isFingerPrintRunning(Landroid/content/Context;)Z
    .registers 3

    .line 82
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 83
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[foree] isFingerPrintRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public static isShopDemo()Z
    .registers 1

    .line 78
    sget-boolean v0, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->IS_SHOPDEMO:Z

    return v0
.end method

.method public static sortTile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "drivemode"

    const-string v1, "eyeprotective"

    .line 42
    invoke-static {p0, v0, v1}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->swapTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method private static swapTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p0, v2, :cond_25

    if-eq v1, v2, :cond_25

    .line 62
    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_2f
    if-ge p2, p1, :cond_46

    .line 69
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x1

    if-ge p2, v1, :cond_43

    const/16 v1, 0x2c

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_43
    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    .line 74
    :cond_46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
