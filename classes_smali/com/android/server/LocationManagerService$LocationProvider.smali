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
    .param p2, "name"  # Ljava/lang/String;

    .line 1098
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    .line 1099
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .registers 4
    .param p1, "x0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x1"  # Ljava/lang/String;
    .param p3, "x2"  # Lcom/android/server/LocationManagerService$1;

    .line 1076
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V
    .registers 8
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "isManagedBySettings"  # Z

    .line 1101
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    .line 1103
    iput-boolean p3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 1106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1107
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    .line 1108
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    .line 1109
    iput-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 1111
    if-eqz v2, :cond_41

    .line 1113
    nop

    .line 1114
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result p1

    .line 1113
    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1119
    :cond_41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V
    .registers 5
    .param p1, "x0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x1"  # Ljava/lang/String;
    .param p3, "x2"  # Z
    .param p4, "x3"  # Lcom/android/server/LocationManagerService$1;

    .line 1076
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

    .line 1352
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Z

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
    .param p1, "provider"  # Lcom/android/server/location/AbstractLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1123
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1127
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

    .line 1130
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 1131
    invoke-virtual {p0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1132
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1177
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

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1179
    const-string v0, " [mock]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    :cond_26
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    useable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-nez v0, :cond_90

    .line 1185
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

    .line 1186
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v0, :cond_7a

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
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

    .line 1192
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

    .line 1194
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_bc

    .line 1195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1197
    .local v0, "identity":J
    :try_start_ae
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_ae .. :try_end_b3} :catchall_b7

    .line 1199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    goto :goto_bc

    .line 1199
    :catchall_b7
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1202
    .end local v0  # "identity":J
    :cond_bc
    :goto_bc
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1135
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

    .line 1140
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-nez v0, :cond_9

    .line 1141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1144
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

    .line 1160
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatusLocked(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "extras"  # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_17

    .line 1221
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1223
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/AbstractLocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    return v2

    .line 1225
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1228
    .end local v0  # "identity":J
    :cond_17
    const/4 v0, 0x2

    return v0
.end method

.method public getStatusUpdateTimeLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_17

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1209
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/AbstractLocationProvider;->getStatusUpdateTime()J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1209
    return-wide v2

    .line 1211
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1214
    .end local v0  # "identity":J
    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isMock()Z
    .registers 2

    .line 1149
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

    .line 1154
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;

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
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1347
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isUseableLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onReportLocation$0$LocationManagerService$LocationProvider(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"  # Landroid/location/Location;

    .line 1250
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1251
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p1, p0}, Lcom/android/server/LocationManagerService;->access$3000(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1252
    monitor-exit v0

    .line 1253
    return-void

    .line 1252
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$onReportLocation$1$LocationManagerService$LocationProvider(Ljava/util/List;)V
    .registers 7
    .param p1, "locations"  # Ljava/util/List;

    .line 1261
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1262
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    const-string v2, "gps"

    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 1263
    .local v1, "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_3f

    .line 1268
    :cond_18
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2900(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 1269
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "reportLocationBatch() called without active Callback"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_49

    return-void

    .line 1274
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2900(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34
    .catchall {:try_start_2a .. :try_end_33} :catchall_49

    .line 1277
    goto :goto_3d

    .line 1275
    :catch_34
    move-exception v2

    .line 1276
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "mGnssBatchingCallback.onLocationBatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    .end local v1  # "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_3d
    monitor-exit v0

    .line 1279
    return-void

    .line 1264
    .restart local v1  # "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_3f
    :goto_3f
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "reportLocationBatch() called without user permission"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    monitor-exit v0

    return-void

    .line 1278
    .end local v1  # "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public synthetic lambda$onSetEnabled$2$LocationManagerService$LocationProvider(Z)V
    .registers 6
    .param p1, "enabled"  # Z

    .line 1287
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1288
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    if-ne p1, v1, :cond_d

    .line 1289
    monitor-exit v0

    return-void

    .line 1293
    :cond_d
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

    .line 1296
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    .line 1297
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1298
    monitor-exit v0

    .line 1299
    return-void

    .line 1298
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onAllowedChangedLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1320
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v0, :cond_4b

    .line 1321
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1322
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1324
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v1

    .line 1321
    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    .line 1327
    .local v1, "allowed":Z
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    if-ne v1, v2, :cond_28

    .line 1328
    return-void

    .line 1332
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider allowed is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    .line 1336
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1338
    .end local v0  # "allowedProviders":Ljava/lang/String;
    .end local v1  # "allowed":Z
    :cond_4b
    return-void
.end method

.method public onLocationModeChangedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1316
    return-void
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"  # Landroid/location/Location;

    .line 1249
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1254
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

    .line 1260
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$UwV519Q998DTiPhy1rbdXyO3Geo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$UwV519Q998DTiPhy1rbdXyO3Geo;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1280
    return-void
.end method

.method public onSetEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 1286
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    return-void
.end method

.method public onSetProperties(Lcom/android/internal/location/ProviderProperties;)V
    .registers 4
    .param p1, "properties"  # Lcom/android/internal/location/ProviderProperties;

    .line 1308
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1309
    :try_start_7
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 1310
    monitor-exit v0

    .line 1311
    return-void

    .line 1310
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onUseableChangedLocked(Z)V
    .registers 8
    .param p1, "isAllowedChanged"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1361
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableIgnoringAllowedLocked()Z

    move-result v0

    .line 1362
    .local v0, "useableIgnoringAllowed":Z
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 1367
    .local v1, "useable":Z
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v2, :cond_80

    .line 1370
    const-string/jumbo v2, "location_providers_allowed"

    if-eqz v0, :cond_3f

    if-nez p1, :cond_3f

    .line 1371
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1372
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1375
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v5

    .line 1371
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_67

    .line 1376
    :cond_3f
    if-nez v0, :cond_67

    .line 1377
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1378
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1381
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v5

    .line 1377
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1387
    :cond_67
    :goto_67
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    const-string v4, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1392
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_80
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-ne v1, v2, :cond_85

    .line 1393
    return-void

    .line 1395
    :cond_85
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider useable is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-nez v2, :cond_ba

    .line 1405
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1406
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1409
    :cond_ba
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2, p0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1410
    return-void
.end method

.method public onUserChangingLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1418
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1419
    return-void
.end method

.method public sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "command"  # Ljava/lang/String;
    .param p2, "extras"  # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_16

    .line 1235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1237
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    goto :goto_16

    .line 1239
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1242
    .end local v0  # "identity":J
    :cond_16
    :goto_16
    return-void
.end method

.method public setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"  # Lcom/android/internal/location/ProviderRequest;
    .param p2, "workSource"  # Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_16

    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1168
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    goto :goto_16

    .line 1170
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1173
    .end local v0  # "identity":J
    :cond_16
    :goto_16
    return-void
.end method
