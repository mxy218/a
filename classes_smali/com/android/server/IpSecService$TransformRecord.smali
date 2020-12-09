.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

.field private final mSpi:Lcom/android/server/IpSecService$SpiRecord;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .registers 6

    .line 594
    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 596
    iput-object p3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 597
    iput-object p4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    .line 598
    iput-object p5, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 600
    invoke-virtual {p4}, Lcom/android/server/IpSecService$SpiRecord;->setOwnedByTransform()V

    .line 601
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .registers 10

    .line 618
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v5

    .line 620
    :try_start_6
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-static {v0}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v0

    .line 621
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 624
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 625
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 627
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 628
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 629
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v8

    .line 622
    invoke-interface/range {v1 .. v8}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_33} :catch_34
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_33} :catch_34

    .line 632
    goto :goto_4d

    .line 630
    :catch_34
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete SA with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpSecService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 635
    return-void
.end method

.method public getConfig()Landroid/net/IpSecConfig;
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .registers 2

    .line 644
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getSocketRecord()Lcom/android/server/IpSecService$EncapSocketRecord;
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    return-object v0
.end method

.method public getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    return-object v0
.end method

.method public invalidate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeTransformRecord(I)V

    .line 640
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    nop

    .line 651
    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, ", mSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, ", mSpi.mResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    iget v1, v1, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    const-string v1, ", mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
