.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field seInfoTargetSdkVersion:I

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field signaturesChanged:Ljava/lang/Boolean;

.field uidFlags:I

.field uidPrivateFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 56
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 57
    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 58
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 59
    const/16 p1, 0x2710

    iput p1, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 60
    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_14

    .line 101
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 103
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 104
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .line 105
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .line 107
    :cond_2c
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method public fixSeInfoLocked()V
    .registers 7

    .line 134
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_55

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_55

    .line 139
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 140
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v3, v4, :cond_2b

    .line 141
    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 143
    :cond_2b
    goto :goto_11

    .line 144
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v2

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v3

    or-int/2addr v2, v3

    .line 146
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iget v5, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Landroid/content/pm/PackageParser$Package;ZII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 148
    goto :goto_30

    .line 149
    :cond_54
    return-void

    .line 136
    :cond_55
    :goto_55
    return-void
.end method

.method public getNotInstalledUserIds()[I
    .registers 9

    .line 153
    nop

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 155
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    .line 156
    if-nez v1, :cond_1c

    .line 157
    move-object v1, v2

    goto :goto_31

    .line 159
    :cond_1c
    array-length v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    :goto_1f
    if-ge v4, v3, :cond_30

    aget v6, v1, v4

    .line 160
    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 161
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v5

    .line 159
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_30
    move-object v1, v5

    .line 165
    :goto_31
    goto :goto_8

    .line 166
    :cond_32
    if-nez v1, :cond_36

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    :cond_36
    return-object v1
.end method

.method public getPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_36

    .line 113
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 115
    if-eqz v2, :cond_1c

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_2f

    .line 116
    goto :goto_1c

    .line 118
    :cond_2f
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_1c

    .line 120
    :cond_35
    return-object v0

    .line 111
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .registers 2

    .line 36
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 124
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)Z
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 77
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_a
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 81
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 82
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 83
    iget v2, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v2

    .line 84
    goto :goto_19

    .line 85
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .line 87
    :cond_2c
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_4e

    .line 88
    iget p1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 90
    iget v1, v1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr p1, v1

    .line 91
    goto :goto_3b

    .line 92
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .line 94
    :cond_4e
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/SharedUserSetting;)Lcom/android/server/pm/SharedUserSetting;
    .registers 4

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 172
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 173
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 174
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 175
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 176
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 178
    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 179
    return-object p0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 70
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 71
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 73
    return-void
.end method
