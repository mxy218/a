.class Lcom/android/server/LocationManagerService$LocationProvider;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationProvider"
.end annotation


# instance fields
.field private mAllowed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mIsManagedBySettings:Z

.field private final mName:Ljava/lang/String;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected mProvider:Lcom/android/server/location/AbstractLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUseable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .registers 4

    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    .line 965
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .registers 4

    .line 942
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V
    .registers 6

    .line 967
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    .line 969
    iput-boolean p3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    .line 971
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 972
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 973
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    .line 974
    iput-boolean p3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    .line 975
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 977
    if-eqz v0, :cond_40

    .line 979
    nop

    .line 980
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 983
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)I

    move-result p1

    .line 979
    const-string v0, "location_providers_allowed"

    invoke-static {p2, v0, p3, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 985
    :cond_40
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V
    .registers 5

    .line 942
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    return-void
.end method

.method private isUseableIgnoringAllowedLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method


# virtual methods
.method public attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 989
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 992
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_2a

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider attached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_2a
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 997
    invoke-virtual {p0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 998
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1045
    const-string v0, " [mock]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    :cond_26
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    useable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-nez v0, :cond_90

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    attached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v0, :cond_7a

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_bc

    .line 1061
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1063
    :try_start_ae
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_ae .. :try_end_b3} :catchall_b7

    .line 1065
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    goto :goto_bc

    .line 1065
    :catchall_b7
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1068
    :cond_bc
    :goto_bc
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1001
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagesLocked()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-nez v0, :cond_9

    .line 1007
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/location/AbstractLocationProvider;->getProviderPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatusLocked(Landroid/os/Bundle;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_17

    .line 1087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1089
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/AbstractLocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1089
    return p1

    .line 1091
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1094
    :cond_17
    const/4 p1, 0x2

    return p1
.end method

.method public getStatusUpdateTimeLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_17

    .line 1073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1075
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/AbstractLocationProvider;->getStatusUpdateTime()J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1075
    return-wide v2

    .line 1077
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1080
    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isMock()Z
    .registers 2

    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public isPassiveLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isUseableForUserLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isUseableLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onReportLocation$0$LocationManagerService$LocationProvider(Landroid/location/Location;)V
    .registers 4

    .line 1116
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1117
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p1, p0}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1118
    monitor-exit v0

    .line 1119
    return-void

    .line 1118
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public synthetic lambda$onReportLocation$1$LocationManagerService$LocationProvider(Ljava/util/List;)V
    .registers 5

    .line 1127
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1128
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    const-string v2, "gps"

    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 1129
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_3e

    .line 1134
    :cond_18
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1135
    const-string p1, "LocationManagerService"

    const-string/jumbo v1, "reportLocationBatch() called without active Callback"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_48

    return-void

    .line 1140
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34
    .catchall {:try_start_2a .. :try_end_33} :catchall_48

    .line 1143
    goto :goto_3c

    .line 1141
    :catch_34
    move-exception p1

    .line 1142
    :try_start_35
    const-string v1, "LocationManagerService"

    const-string v2, "mGnssBatchingCallback.onLocationBatch failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    :goto_3c
    monitor-exit v0

    .line 1145
    return-void

    .line 1130
    :cond_3e
    :goto_3e
    const-string p1, "LocationManagerService"

    const-string/jumbo v1, "reportLocationBatch() called without user permission"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    monitor-exit v0

    return-void

    .line 1144
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public synthetic lambda$onSetEnabled$2$LocationManagerService$LocationProvider(Z)V
    .registers 6

    .line 1153
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1154
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    if-ne p1, v1, :cond_d

    .line 1155
    monitor-exit v0

    return-void

    .line 1158
    :cond_d
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_2e

    .line 1159
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider enabled is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_2e
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    .line 1163
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1164
    monitor-exit v0

    .line 1165
    return-void

    .line 1164
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public onAllowedChangedLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1186
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v0, :cond_4e

    .line 1187
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1188
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1190
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)I

    move-result v1

    .line 1187
    const-string v2, "location_providers_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v0

    .line 1193
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    if-ne v0, v1, :cond_27

    .line 1194
    return-void

    .line 1197
    :cond_27
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_48

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider allowed is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_48
    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    .line 1202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1204
    :cond_4e
    return-void
.end method

.method public onLocationModeChangedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1182
    return-void
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .registers 4

    .line 1115
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1120
    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$UwV519Q998DTiPhy1rbdXyO3Geo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$UwV519Q998DTiPhy1rbdXyO3Geo;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    return-void
.end method

.method public onSetEnabled(Z)V
    .registers 4

    .line 1152
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1166
    return-void
.end method

.method public onSetProperties(Lcom/android/internal/location/ProviderProperties;)V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1175
    :try_start_7
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 1176
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onUseableChangedLocked(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1227
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableIgnoringAllowedLocked()Z

    move-result v0

    .line 1228
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 1233
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v2, :cond_7f

    .line 1236
    const-string v2, "location_providers_allowed"

    if-eqz v0, :cond_3e

    if-nez p1, :cond_3e

    .line 1237
    iget-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1238
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1241
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)I

    move-result v3

    .line 1237
    invoke-static {p1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_66

    .line 1242
    :cond_3e
    if-nez v0, :cond_66

    .line 1243
    iget-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1244
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1247
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)I

    move-result v3

    .line 1243
    invoke-static {p1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1253
    :cond_66
    :goto_66
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    const-string v2, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1258
    :cond_7f
    iget-boolean p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-ne v1, p1, :cond_84

    .line 1259
    return-void

    .line 1261
    :cond_84
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1263
    sget-boolean p1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz p1, :cond_a7

    .line 1264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " provider useable is now "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_a7
    iget-boolean p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-nez p1, :cond_bd

    .line 1271
    iget-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1272
    iget-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1275
    :cond_bd
    iget-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1, p0}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1276
    return-void
.end method

.method public onUserChangingLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1284
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1285
    return-void
.end method

.method public sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_16

    .line 1101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1103
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    goto :goto_16

    .line 1105
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1108
    :cond_16
    :goto_16
    return-void
.end method

.method public setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_16

    .line 1032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1034
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1036
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1037
    goto :goto_16

    .line 1036
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1039
    :cond_16
    :goto_16
    return-void
.end method
