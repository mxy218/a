.class public Lcom/android/systemui/assist/PhenotypeHelper;
.super Ljava/lang/Object;
.source "PhenotypeHelper.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 3

    const-string/jumbo p0, "systemui"

    .line 58
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    const-string/jumbo p0, "systemui"

    .line 53
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 3

    const-string/jumbo p0, "systemui"

    .line 44
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 4

    const-string/jumbo p0, "systemui"

    .line 40
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo p0, "systemui"

    .line 49
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
