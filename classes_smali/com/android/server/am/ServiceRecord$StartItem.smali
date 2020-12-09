.class Lcom/android/server/am/ServiceRecord$StartItem;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartItem"
.end annotation


# instance fields
.field final callingId:I

.field deliveredTime:J

.field deliveryCount:I

.field doneExecutingCount:I

.field final id:I

.field final intent:Landroid/content/Intent;

.field final neededGrants:Lcom/android/server/uri/NeededUriGrants;

.field final sr:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;

.field final taskRemoved:Z

.field uriPermissions:Lcom/android/server/uri/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V
    .registers 7

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 162
    iput-boolean p2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    .line 163
    iput p3, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 164
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 165
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 166
    iput p6, p0, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 167
    return-void
.end method


# virtual methods
.method getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_11

    .line 171
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 173
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_a

    .line 178
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 181
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 205
    return-object v0

    .line 207
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 209
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, " StartItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V
    .registers 16

    .line 184
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 185
    iget v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 186
    iget-wide v6, p0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    const-wide v4, 0x10b00000002L

    move-object v3, p1

    move-wide v8, p4

    invoke-static/range {v3 .. v9}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 188
    iget p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 189
    iget p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const-wide v0, 0x10500000004L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 190
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3f

    .line 191
    const-wide v4, 0x10b00000005L

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 194
    :cond_3f
    iget-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz p4, :cond_4b

    .line 195
    const-wide v0, 0x10b00000006L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/uri/NeededUriGrants;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 197
    :cond_4b
    iget-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz p4, :cond_57

    .line 198
    const-wide v0, 0x10b00000007L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/uri/UriPermissionOwner;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 200
    :cond_57
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    return-void
.end method
