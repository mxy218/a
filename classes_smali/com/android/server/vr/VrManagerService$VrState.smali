.class Lcom/android/server/vr/VrManagerService$VrState;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VrState"
.end annotation


# instance fields
.field final callingPackage:Landroid/content/ComponentName;

.field final defaultPermissionsGranted:Z

.field final enabled:Z

.field final processId:I

.field final running2dInVr:Z

.field final targetPackageName:Landroid/content/ComponentName;

.field final timestamp:J

.field final userId:I


# direct methods
.method constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 7

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 379
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 380
    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 381
    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 382
    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 383
    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 384
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    .line 386
    return-void
.end method

.method constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V
    .registers 8

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 391
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 392
    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 393
    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 394
    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 395
    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 396
    iput-boolean p7, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    .line 398
    return-void
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 6

    .line 402
    nop

    .line 403
    nop

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "State changed to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v1, :cond_26

    const-string v1, "ENABLED"

    goto :goto_28

    :cond_26
    const-string v1, "DISABLED"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v2, :cond_84

    .line 411
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, "User="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v2, "Current VR Activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    const-string v3, "None"

    if-nez v2, :cond_54

    move-object v2, v3

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :goto_58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v2, "Bound VrListenerService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    if-nez v2, :cond_6b

    goto :goto_6f

    .line 422
    :cond_6b
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 421
    :goto_6f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    if-eqz v2, :cond_84

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string p1, "Default permissions granted to the bound VrListenerService."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
