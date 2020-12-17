.class public Lcom/android/systemui/statusbar/policy/EncryptionHelper;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# static fields
.field public static final IS_DATA_ENCRYPTED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->isDataEncrypted()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return-void
.end method

.method private static isDataEncrypted()Z
    .registers 2

    .line 29
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    return v0
.end method
