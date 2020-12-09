.class public Lcom/android/server/location/MockProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockProvider.java"


# instance fields
.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mLocation:Landroid/location/Location;

.field private mStatus:I

.field private mStatusUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V
    .registers 6

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 49
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 50
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 51
    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 53
    iput-object p1, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p0, p3}, Lcom/android/server/location/MockProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 56
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " last location="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 93
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 94
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    :cond_c
    iget p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    return p1
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 106
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 61
    invoke-super {p0, p1}, Lcom/android/server/location/AbstractLocationProvider;->setEnabled(Z)V

    .line 62
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 3

    .line 66
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 67
    iget-object p1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    if-nez p1, :cond_15

    .line 68
    iget-object p1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 70
    :cond_15
    iget-boolean p1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    if-eqz p1, :cond_1e

    .line 71
    iget-object p1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/server/location/MockProvider;->reportLocation(Landroid/location/Location;)V

    .line 73
    :cond_1e
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3

    .line 88
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .registers 5

    .line 77
    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 78
    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 79
    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 80
    return-void
.end method
