.class public Lcom/android/settings/development/featureflags/FeatureFlagPersistent;
.super Ljava/lang/Object;
.source "FeatureFlagPersistent.java"


# static fields
.field private static final PERSISTENT_FLAGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->PERSISTENT_FLAGS:Ljava/util/HashSet;

    .line 37
    sget-object v0, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->PERSISTENT_FLAGS:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_bluetooth_hearing_aid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->PERSISTENT_FLAGS:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_network_and_internet_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->PERSISTENT_FLAGS:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_dynamic_system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getAllPersistentFlags()Ljava/util/HashSet;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->PERSISTENT_FLAGS:Ljava/util/HashSet;

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.fflag.override."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 47
    :cond_21
    invoke-static {p0, p1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPersistent(Ljava/lang/String;)Z
    .registers 2

    .line 57
    sget-object v0, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->PERSISTENT_FLAGS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.fflag.override."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_18

    const-string/jumbo v1, "true"

    goto :goto_1a

    :cond_18
    const-string v1, "false"

    :goto_1a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1, p2}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
