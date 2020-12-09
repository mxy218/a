.class public Lcom/android/server/pm/permission/PermissionSettings;
.super Ljava/lang/Object;
.source "PermissionSettings.java"


# instance fields
.field final mAppOpPermissionPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mPermissionGroups:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public static readPermissions(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 157
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_49

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_49

    .line 159
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 160
    goto :goto_4

    .line 163
    :cond_1a
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->readLPw(Ljava/util/Map;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 164
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element reading permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 168
    :cond_45
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 170
    :cond_49
    return-void
.end method


# virtual methods
.method public addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 95
    if-nez v0, :cond_14

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/BasePermission;

    .line 120
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_19
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    monitor-exit v0

    return p1

    .line 121
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    nop

    .line 177
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v8, v2

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 178
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/permission/BasePermission;->dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z

    move-result v8

    .line 180
    goto :goto_10

    .line 181
    :cond_26
    if-nez p2, :cond_7b

    if-nez p3, :cond_7b

    .line 182
    move p2, v2

    :goto_2b
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p2, p3, :cond_7b

    .line 183
    if-nez p2, :cond_43

    .line 184
    invoke-virtual {p5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 185
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 186
    :cond_3e
    const-string p3, "AppOp Permissions:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    :cond_43
    const-string p3, "  AppOp Permission "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    .line 192
    move p4, v2

    :goto_61
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p4, v1, :cond_78

    .line 193
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    add-int/lit8 p4, p4, 0x1

    goto :goto_61

    .line 182
    :cond_78
    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 197
    :cond_7b
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_7d
    move-exception p1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_4 .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 248
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 247
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 249
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method getAllPermissionTreesLocked()Ljava/util/Collection;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAllPermissionsLocked()Ljava/util/Collection;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 90
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/BasePermission;

    return-object p1
.end method

.method getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/BasePermission;

    return-object p1
.end method

.method isPermissionAppOp(Ljava/lang/String;)Z
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/BasePermission;

    .line 262
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit v0

    return p1

    .line 263
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public isPermissionInstant(Ljava/lang/String;)Z
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/BasePermission;

    .line 255
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit v0

    return p1

    .line 256
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method removePermissionLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method removePermissionTreeLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x2

    if-ge v1, v2, :cond_29

    .line 109
    if-nez v1, :cond_c

    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    goto :goto_e

    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 110
    :goto_e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 111
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->transfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    goto :goto_16

    .line 107
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 114
    :cond_29
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 148
    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 149
    goto :goto_d

    .line 150
    :cond_1d
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 140
    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 141
    goto :goto_d

    .line 142
    :cond_1d
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method
