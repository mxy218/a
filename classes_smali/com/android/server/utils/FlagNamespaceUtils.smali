.class public final Lcom/android/server/utils/FlagNamespaceUtils;
.super Ljava/lang/Object;
.source "FlagNamespaceUtils.java"


# static fields
.field public static final ALL_KNOWN_NAMESPACES_FLAG:Ljava/lang/String; = "all_known_namespaces"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final MAX_COUNTER_VALUE:I = 0x32

.field public static final NAMESPACE_NO_PACKAGE:Ljava/lang/String; = "no_package"

.field public static final NAMESPACE_RESCUE_PARTY:Ljava/lang/String; = "rescue_party_namespace"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESET_PLATFORM_PACKAGE_FLAG:Ljava/lang/String; = "reset_platform_package"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sKnownResetNamespacesFlagCounter:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToKnownResetNamespaces(Ljava/lang/String;)V
    .registers 4

    .line 94
    invoke-static {}, Lcom/android/server/utils/FlagNamespaceUtils;->incrementAndRetrieveResetNamespacesFlagCounter()I

    move-result v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset_platform_package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rescue_party_namespace"

    const/4 v2, 0x1

    invoke-static {v1, v0, p0, v2}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    return-void
.end method

.method public static addToKnownResetNamespaces(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    if-nez p0, :cond_3

    .line 80
    return-void

    .line 82
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-static {v0}, Lcom/android/server/utils/FlagNamespaceUtils;->addToKnownResetNamespaces(Ljava/lang/String;)V

    .line 84
    goto :goto_7

    .line 85
    :cond_17
    return-void
.end method

.method private static getAllKnownDeviceConfigNamespacesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    const-string/jumbo v0, "rescue_party_namespace"

    const-string v1, "all_known_namespaces"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/android/server/utils/FlagNamespaceUtils;->toStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    return-object v1
.end method

.method private static incrementAndRetrieveResetNamespacesFlagCounter()I
    .registers 2

    .line 145
    sget v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    .line 146
    sget v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_f

    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    .line 149
    :cond_f
    sget v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    return v0
.end method

.method public static resetDeviceConfig(I)V
    .registers 2

    .line 104
    invoke-static {}, Lcom/android/server/utils/FlagNamespaceUtils;->getAllKnownDeviceConfigNamespacesList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/utils/FlagNamespaceUtils;->resetDeviceConfig(ILjava/util/List;)V

    .line 105
    return-void
.end method

.method public static resetDeviceConfig(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-static {p0, v1}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 113
    goto :goto_4

    .line 114
    :cond_14
    invoke-static {p1}, Lcom/android/server/utils/FlagNamespaceUtils;->addToKnownResetNamespaces(Ljava/util/List;)V

    .line 115
    return-void
.end method

.method public static resetKnownResetNamespacesFlagCounterForTest()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    const/4 v0, -0x1

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    .line 123
    return-void
.end method

.method private static toStringList(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 141
    :cond_9
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 139
    :cond_14
    :goto_14
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
