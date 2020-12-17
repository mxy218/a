.class public Lcom/flyme/systemui/statusbar/ext/FlymeSupportUtils;
.super Ljava/lang/Object;
.source "FlymeSupportUtils.java"


# static fields
.field public static IS_SUPPORT_CA:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeSupportUtils;->isSupportCa()Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymeSupportUtils;->IS_SUPPORT_CA:Z

    return-void
.end method

.method public static isOP09ASupport()Z
    .registers 3

    const-string v0, ""

    const-string v1, "ro.operator.optr"

    .line 37
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OP09"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "ro.operator.seg"

    .line 38
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEGDEFAULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private static isSupportCa()Z
    .registers 6

    const-string v0, "FLYMESUPPORT"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "ro.meizu.hardware.version"

    const-string v3, ""

    .line 16
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",IS_SUPPORT_CA="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v3, 0x8

    const/4 v3, 0x0

    if-nez v2, :cond_34

    move v5, v1

    goto :goto_35

    :cond_34
    move v5, v3

    :goto_35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_44

    if-eqz v2, :cond_42

    goto :goto_43

    :cond_42
    move v1, v3

    :goto_43
    return v1

    :catchall_44
    move-exception v2

    const-string v3, "err="

    .line 22
    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
