.class public final Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PackageSetting.java"


# instance fields
.field appId:I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field sharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private sharedUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    .line 68
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    .line 56
    invoke-direct/range {v0 .. v16}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V

    .line 60
    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 61
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    .line 106
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 107
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 108
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 109
    iget p1, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 110
    return-void
.end method


# virtual methods
.method public areInstallPermissionsFixed()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return v0
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSetting;)V
    .registers 2

    .line 101
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 103
    return-void
.end method

.method public getAppId()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v0
.end method

.method public getPackage()Landroid/content/pm/PackageParser$Package;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method public getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_9

    .line 115
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    goto :goto_d

    .line 116
    :cond_9
    invoke-super {p0}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 114
    :goto_d
    return-object v0
.end method

.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getSharedUserId()I
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_7

    .line 84
    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v0

    .line 86
    :cond_7
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    return v0
.end method

.method public hasChildPackages()Z
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isMatch(I)Z
    .registers 3

    .line 173
    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 174
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p1

    return p1

    .line 176
    :cond_a
    const/4 p1, 0x1

    return p1
.end method

.method public isOdm()Z
    .registers 3

    .line 156
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isOem()Z
    .registers 3

    .line 140
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 136
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isProduct()Z
    .registers 3

    .line 148
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isProductServices()Z
    .registers 3

    .line 152
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isSharedUser()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSystem()Z
    .registers 3

    .line 160
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isUpdatedSystem()Z
    .registers 2

    .line 164
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVendor()Z
    .registers 3

    .line 144
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public setInstallPermissionsFixed(Z)V
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    .line 215
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;

    .line 216
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 217
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 218
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 219
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 220
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 185
    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz p4, :cond_b

    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_d
    const-wide v0, 0x10900000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 186
    iget p4, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 187
    const-wide v4, 0x10500000003L

    iget-wide v6, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 188
    const-wide v4, 0x10300000005L

    iget-wide v6, p0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 189
    const-wide v4, 0x10300000006L

    iget-wide v6, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 190
    const-wide v4, 0x10900000007L

    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 192
    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz p4, :cond_97

    .line 193
    const-wide v4, 0x10900000004L

    iget-object p4, p4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 195
    const-wide v4, 0x20b00000008L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 196
    const-string p4, "base"

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 197
    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget p4, p4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 198
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 200
    iget-object p4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object p4, p4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz p4, :cond_97

    .line 201
    const/4 p4, 0x0

    :goto_74
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge p4, v6, :cond_97

    .line 202
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 203
    iget-object v8, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {p1, v0, v1, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 204
    iget-object v8, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v8, v8, p4

    invoke-virtual {p1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 205
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    add-int/lit8 p4, p4, 0x1

    goto :goto_74

    .line 209
    :cond_97
    const-wide v0, 0x20b00000009L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 210
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 211
    return-void
.end method
